%% get ISI from ISIfinal variable 
% ISI variable x and y for density plot
% x = ISI n . y = ISI (n+1)
% also make log versions of each
a=1;
for a=1:length(data)
    if data(a).ManualCluster>=1;
data(a).scatter.ISIn_x=data(a).ISIprePharmEvent(1:end-1);
data(a).scatter.ISIn1_y=data(a).ISIprePharmEvent(2:end);
data(a).scatter.ISIn_x_log=log(data(a).scatter.ISIn_x);
data(a).scatter.ISIn1_y_log=log(data(a).scatter.ISIn1_y);
    end
end

%% as above  make x, y, z to try 3D
% also make log versions of each
% x = ISI(n) . y = ISI(n+1) . z = ISI(n+2)

a=1;
for a=1:length(data)
    if data(a).ManualCluster>=1;
data(a).scatter.ISI_x_3d=data(a).ISIprePharmEvent(1:end-2);
data(a).scatter.ISI_y_3d=data(a).ISIprePharmEvent(2:end-1);
data(a).scatter.ISI_z_3d=data(a).ISIprePharmEvent(3:end);
data(a).scatter.ISI_x_3d_log=log(data(a).scatter.ISI_x_3d);
data(a).scatter.ISI_y_3d_log=log(data(a).scatter.ISI_y_3d);
data(a).scatter.ISI_z_3d_log=log(data(a).scatter.ISI_z_3d);
    end
end

%% makes varibles n, pts x, pts y
% n = hist bin of log(ISIn) x log(ISIy) - limits set by PTS
% pts is editable and sets min, max, and bin #)
% N = same at n but centered around the max bin on x and y axis 
% ptsx and ptsy create x and y axis for N - will be different for each unit
% now using histcounts - returns counts, could look at pdf

a=1;
for a=1:length(data)
    if data(a).ManualCluster>=1;
    clear x y N M row col pts n ptsx ptsy N_pdf
    pts = linspace(-5, 5, 41);  %edit this to change the axis limits and number of bins

    x=data(a).scatter.ISIn_x_log;
    y=data(a).scatter.ISIn1_y_log;
    data(a).scatter.pts=pts;
    n=histcounts2(y(:), x(:), pts, pts);
    data(a).scatter.n=n;

    M = max(n, [], 'all'); %finds the max bin in n
    [row, col] = find(ismember(n, max(n(:))));
    ptsx = linspace((pts(row(1))-5), (pts(row(1))+5), 41); %max will be center then change +/- to change axis, change last value to change bins
    ptsy = linspace((pts(col(1))-5), (pts(col(1))+5), 41); %max will be center then change +/- to change axis, change last value to change bins
    data(a).scatter.ptsx=ptsx;
    data(a).scatter.ptsy=ptsy;
    N = histcounts2(y(:), x(:), ptsx, ptsy);
    data(a).scatter.N=N; % aligned to max 

    N_pdf = histcounts2(y(:), x(:), ptsx, ptsy, "Normalization","pdf");
    data(a).scatter.N_pdf=N_pdf; % aligned to max 
    end
end
clear x y N M row col pts n ptsx ptsy N_pdf

%% make return density plot for randomly selected units in a given cluster
%change cluster value to select cludter ID to view
%can change number of samples to view and layout of grid via randsample and
%subplot
clear aa samples a b cluster fun tf2 N ptsy ptsx b a 
cluster=2; % change this to interested cluster

%fun = @(x) data(x).ManualCluster == cluster;
fun = @(x) data(x).PythonKmean4 == cluster;
tf2 = arrayfun(fun, 1:numel(data));
[aa] = find(tf2); %find units in specific cluster and puts in aa
sgtitle({"Cluster" + cluster}); %change the title to match
samples = randsample(aa,16);  
b=1; 
a=1;
for a=1:length(samples)
    subplot(4,4,a) % change dimensions
    a=samples(b);
    med=median(data(a).ISIprePharmEvent);
    N = data(a).scatter.N;
    ptsx = data(a).scatter.ptsx;
    ptsy = data(a).scatter.ptsy;
    imagesc(ptsx, ptsy, N);
    axis equal;
    set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
    ylabel({'log(ISIn+1)'});
    xlabel({'log (ISIn)'});
    %xline(med)
    %yline(med)
    title({"Unit " + a });
    b=b+1;
end
clear aa samples a b cluster fun tf2 N ptsy ptsx b a 

%% Make table that has every ISI and other info about each ISI given a cluster

clustermax=8; %change this to cluster you want to look at
for cluster=1:clustermax
clear Cluster_x Cluster_y Cluster_species Cluster_age Cluster_sex Cluster_x_log Cluster_y_log Cluster_state;
Cluster_x=[];Cluster_x=[];Cluster_y_log=[];Cluster_x_log=[];Cluster_state={};Cluster_sex={};Cluster_age={};Cluster_species={};
a=1;n=1;
for a=1:length(data)
    if data(a).ManualCluster==cluster 
        len=length(data(a).scatter.ISIn_x);
          Cluster_x(n:(n+(len-1)),1)=(data(a).scatter.ISIn_x)';
          Cluster_y(n:(n+(len-1)),1)=(data(a).scatter.ISIn1_y)';
          Cluster_x_log(n:(n+(len-1)),1)=(data(a).scatter.ISIn_x_log)';
          Cluster_y_log(n:(n+(len-1)),1)=(data(a).scatter.ISIn1_y_log)';
          Cluster_species(n:(n+(len-1)),1)=cellstr(data(a).traits.species)';
          Cluster_age(n:(n+(len-1)),1)=cellstr(data(a).traits.age);
          Cluster_sex(n:(n+(len-1)),1)=cellstr(data(a).traits.gender);
          Cluster_state(n:(n+(len-1)),1)=cellstr(data(a).state.type);
          n=n+len;
    end
end

tbl{cluster,1}=... 
    table(Cluster_x,Cluster_y,Cluster_x_log,Cluster_y_log,...
    Cluster_species,Cluster_age,Cluster_sex,Cluster_state); % CHANGE what you want included in each table

end
clear Cluster_x Cluster_y Cluster_species Cluster_age Cluster_sex Cluster_x_log Cluster_y_log Cluster_state len a n

%% PLOT tabl data - all ISI with info about age, sex, etc from all units in that cluster in scatter/histo
%seperate the histo/ scatter by group varible

clear s cluster
cluster = 9; %change to interester cluster


s=scatterhistogram(tbl{cluster,1},... %change this to which cluster/table you want to identify
    'Cluster_x_log','Cluster_y_log',...
    'GroupVariable','Cluster_sex',... % change the group variable to what you want to split by 
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
s.Title = {"Cluster" + cluster}; 
s.XLabel = 'log(ISI n)';
s.YLabel = 'log(ISI n+1)';
s.XLimits = [-10 10]; %  change axis 
s.YLimits = [-10 10]; %  change axis 
s.LegendTitle = 'Sex'; % change legend - what splitting by 
s.MarkerStyle = {'.'};

clear s

%%  same as above but not splitting by grouping variable 
clear s cluster
cluster = 11; %change to interester cluster

s=scatterhistogram(tbl{cluster,1},...
    'Cluster_x_log','Cluster_y_log',...
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
s.Title = {"Cluster"+ cluster}; %change this to the cluster ID
s.XLabel = 'log(ISI n)';
s.YLabel = 'log(ISI n+1)';
s.XLimits = [-10 10]; %  change axis 
s.YLimits = [-10 10]; %  change axis 
s.MarkerStyle = {'.'};

clear s
%% PLOT tabl data - all ISI with info about age, sex, etc from all units in that cluster in scatter/histo
%seperate the histo/ scatter by group varible
% make 2 x 2 grid and show histo by sex, species, age and state

clear s t u v cluster
cluster = 11; %change to interester cluster

subplot(2,2,1)
s=scatterhistogram(tbl{cluster,1},... %change this to which cluster/table you want to identify
    'Cluster_x_log','Cluster_y_log',...
    'GroupVariable','Cluster_sex',... % change the group variable to what you want to split by 
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
s.Title = {"Cluster" + cluster}; 
s.XLabel = 'log(ISI n)';
s.YLabel = 'log(ISI n+1)';
s.XLimits = [-10 10]; %  change axis 
s.YLimits = [-10 10]; %  change axis 
s.LegendTitle = 'Sex'; % change legend - what splitting by 
s.MarkerStyle = {'.'};

subplot(2,2,2)
t=scatterhistogram(tbl{cluster,1},... %change this to which cluster/table you want to identify
    'Cluster_x_log','Cluster_y_log',...
    'GroupVariable','Cluster_species',... % change the group variable to what you want to split by 
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
t.Title = {"Cluster" + cluster}; 
t.XLabel = 'log(ISI n)';
t.YLabel = 'log(ISI n+1)';
t.XLimits = [-10 10]; %  change axis 
t.YLimits = [-10 10]; %  change axis 
t.LegendTitle = 'Species'; % change legend - what splitting by 
t.MarkerStyle = {'.'};

subplot(2,2,3)
u=scatterhistogram(tbl{cluster,1},... %change this to which cluster/table you want to identify
    'Cluster_x_log','Cluster_y_log',...
    'GroupVariable','Cluster_state',... % change the group variable to what you want to split by 
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
u.Title = {"Cluster" + cluster}; 
u.XLabel = 'log(ISI n)';
u.YLabel = 'log(ISI n+1)';
u.XLimits = [-10 10]; %  change axis 
u.YLimits = [-10 10]; %  change axis 
u.LegendTitle = 'State'; % change legend - what splitting by 
u.MarkerStyle = {'.'};

subplot(2,2,4)
v=scatterhistogram(tbl{cluster,1},... %change this to which cluster/table you want to identify
    'Cluster_x_log','Cluster_y_log',...
    'GroupVariable','Cluster_age',... % change the group variable to what you want to split by 
    'LineWidth',1.5,'ScatterPlotLocation','SouthWest','LegendVisible','on', ...
    'HistogramDisplayStyle','smooth', 'LineStyle','-');
v.Title = {"Cluster" + cluster}; 
v.XLabel = 'log(ISI n)';
v.YLabel = 'log(ISI n+1)';
v.XLimits = [-10 10]; %  change axis 
v.YLimits = [-10 10]; %  change axis 
v.LegendTitle = 'Age'; % change legend - what splitting by 
v.MarkerStyle = {'.'};

clear s t u v 

%% Plot all ISI in density return - no consideration for unit 
pts = linspace(-5, 5, 41); %change the time limit and number of bins
a=1;
for a=1:length(tbl) %change this to number of cluster 
    clear x y N 
    x = tbl{a,1}.Cluster_x_log; 
    y = tbl{a,1}.Cluster_y_log; 
    N = histcounts2(y(:), x(:), pts, pts);

subplot(4, 3, a); % plot - change this to change layout
imagesc(pts, pts, N);
axis equal;
set(gca, 'XLim', pts([1 end]), 'YLim', pts([1 end]), 'YDir', 'normal');
ylabel({'log (ISIn+1)'});
xlabel({'log (ISIn)'});
title({"Cluster" + a})
end
clear x y N pts a 

%%
a=2;
TEMPSPIKE(1)=1;
for a=2:5:500
TEMPSPIKE(a)=TEMPSPIKE(a-1)+normrnd(5,1);
TEMPSPIKE(a+1)=TEMPSPIKE(a)+normrnd(5,1);
TEMPSPIKE(a+2)=TEMPSPIKE(a+1)+normrnd(5,1);
TEMPSPIKE(a+3)=TEMPSPIKE(a+2)+normrnd(20,1);
TEMPSPIKE(a+4)=TEMPSPIKE(a+3)+normrnd(20,1);
end
x=log(TEMPSPIKE(1:end-1));
y=log(TEMPSPIKE(2:end));
pts=linspace(-5, 5, 41);
n=histcounts2(y(:), x(:), pts, pts);
M = max(n, [], 'all')

%% OR
clear TEMPSPIKE TEMPSPIKE_ISI

a=2;
TEMPSPIKE(1)=1;
for a=2:5:500
TEMPSPIKE(a)=TEMPSPIKE(a-1)+normrnd(3,1);
TEMPSPIKE(a+1)=TEMPSPIKE(a)+normrnd(3,1);
TEMPSPIKE(a+2)=TEMPSPIKE(a+1)+normrnd(3,1);
TEMPSPIKE(a+3)=TEMPSPIKE(a+2)+normrnd(10,1);
TEMPSPIKE(a+4)=TEMPSPIKE(a+3)+normrnd(10,1);
end
a=1;
for a=1:5:500
TEMPSPIKE_ISI(a)=normrnd(3,1);
TEMPSPIKE_ISI(a+1)=(normrnd(3,1));
TEMPSPIKE_ISI(a+2)=(normrnd(3,1));
TEMPSPIKE_ISI(a+3)=(normrnd(10,1));
TEMPSPIKE_ISI(a+4)=normrnd(10,1);
end

%% make raster with example unit
% a=200; % CHANGE THIS  TO ROW OF UNIT YOU WANT TO LOOK AT 
% clear 
% TEMPSPIKE=data(a).spiketimes;



subplot(4,1,1)
axis([0 max(TEMPSPIKE) -1 5]);
plot([TEMPSPIKE;TEMPSPIKE],[ones(size(TEMPSPIKE));zeros(size(TEMPSPIKE))],'k-')
set(gca,'TickDir','out',... % draw the tick marks on the outside 
    'YTick', [],... % don't draw y-axis ticks
    'PlotBoxAspectRatio',[1 0.05 1], ... % short and wide
    'Color',get(gcf,'Color'),... % match figure background
    'YColor',get(gcf,'Color')) % hide the y axis
title({"Example"})




subplot(4,1,2)
x=log(TEMPSPIKE_ISI(1:end-1));
y=log(TEMPSPIKE_ISI(2:end));
pts=linspace(-5, 5, 41);
n=histcounts2(y(:), x(:), pts, pts);


 M = max(n, [], 'all'); %finds the max bin in n
 [row, col] = find(ismember(n, max(n(:))));
 ptsx = linspace((pts(row(1))-5), (pts(row(1))+5), 41); %max will be center then change +/- to change axis, change last value to change bins
 ptsy = linspace((pts(col(1))-5), (pts(col(1))+5), 41); %max will be center then change +/- to change axis, change last value to change bins
 N = histcounts2(y(:), x(:), ptsx, ptsy);


    imagesc(ptsx, ptsy, N);
    axis equal;
    set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
    ylabel({'log(ISIn+1)'});
    xlabel({'log(ISIn)'});
    title({'Example'})
%%  gets average of each cluster - using log - doesnt align to individual max 
clear N_add N_avg N_add_temp n a z 

for z=1:8 %change this to the number of cluster you have 
    n(z)=1;
    N_add_temp(40,40)=zeros;
    for a=1:length(data)
        if data(a).ManualCluster==z;  
            N_add_temp=N_add_temp+data(a).scatter.n;
            n(z)=n(z)+1; %keeps track of number units in each cluster
        end
    end
    N_add{z,1}=N_add_temp;
    N_avg{z,1}=N_add_temp/(n(z)-1);
    z=z+1;
    clear N_add_temp 
end

clear N_add_temp a z 
%%
% PLOT above - average density return for each cluster

pts = linspace(-5, 5, 41); %change this for different axis and bins
sgtitle('Average of each cluster');

a=1;
for a=1:length(N_avg)
    clear N;    
    N = N_avg{a,1};
    subplot(3, 4, a); % change to format the layout of graphs
    imagesc(pts, pts, N);
    axis equal;
    set(gca, 'XLim', pts([1 end]), 'YLim', pts([1 end]), 'YDir', 'normal');
    ylabel({'ISIn+1'});
    xlabel({'ISIn'});
    title({"Cluster" + a})
end


clear a pts N 

 %% change number for assigned clusters 
% %need to change 2 and 3 to 1 
% %old / new
% % 1 / 1
% % 2 / 1
% % 3 / 1
% % 6 / 2
% % 11 / 3
% % 8 / 6
% % 14 / 11
% % 4 / 8
% % 9 / 4
% % 12 / 9
% % 7 / 10
% % 15 / 7
% % 16 / 5
% % 
% a=1;
% for a=1:length(data)
%     if data(a).ManualCluster==2 
%         data(a).ManualCluster=1;
%     elseif data(a).ManualCluster == 3
%         data(a).ManualCluster=1;
%     elseif data(a).ManualCluster == 6
%         data(a).ManualCluster=2;
%     elseif data(a).ManualCluster == 11
%         data(a).ManualCluster=3;
%     elseif data(a).ManualCluster == 8
%         data(a).ManualCluster=6;
%     elseif data(a).ManualCluster == 14
%         data(a).ManualCluster=11;
%     elseif data(a).ManualCluster == 4
%         data(a).ManualCluster=8;
%     elseif data(a).ManualCluster == 9
%         data(a).ManualCluster=4;
%     elseif data(a).ManualCluster == 12
%         data(a).ManualCluster=9;
%     elseif data(a).ManualCluster == 7
%         data(a).ManualCluster=10;
%     elseif data(a).ManualCluster == 15
%         data(a).ManualCluster=7;
%     elseif data(a).ManualCluster == 16
%         data(a).ManualCluster=5;
%     end
% end
% 

%%
% make table of summary info of each cluster
%% Make table that has every ISI and other info about each ISI given a cluster

clear man_sex_female man_sex_male man_sex_nan man_species_mouse man_species_nhp man_species_rat man_age_adult man_age_aged man_age_adol
clear man_state_anes man_state_awake man_state_slice man_anes_ch man_anes_iso man_anes_ureth
clear man_geno_WT man_geno_dbh man_geno_gad_vgat man_geno_th man_geno_parkinson man_geno_dyskinetic man_geno_dsp man_geno_app
% man_sex_female=[];man_sex_male=[];man_sex_nan=[];
man_sex_female=zeros(11,1); man_sex_male=zeros(11,1); man_sex_nan=zeros(11,1); man_species_mouse=zeros(11,1); man_species_nhp=zeros(11,1); man_species_rat=zeros(11,1);
man_age_adult=zeros(11,1); man_age_aged=zeros(11,1); man_age_adol=zeros(11,1); man_state_anes=zeros(11,1); man_state_awake=zeros(11,1); man_state_slice=zeros(11,1);
man_anes_ch=zeros(11,1); man_anes_iso=zeros(11,1); man_anes_ureth=zeros(11,1); man_geno_WT=zeros(11,1); man_geno_dbh=zeros(11,1); man_geno_gad_vgat=zeros(11,1);
man_geno_app=zeros(11,1); man_geno_dsp=zeros(11,1); man_geno_dyskinetic=zeros(11,1); man_geno_parkinson=zeros(11,1);man_geno_th=zeros(11,1);

clustermax=8; %change this to cluster you want to look at
for cluster=1:clustermax

a=1;
for a=1:length(data)
    if data(a).ManualCluster==cluster 
        if ((convertCharsToStrings(data(a).traits.gender))  =="f")
            man_sex_female(cluster)=man_sex_female(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.gender))  =="m")
            man_sex_male(cluster)=man_sex_male(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.gender))  =="NaN")
            man_sex_nan(cluster)=man_sex_nan(cluster)+1;
        end

        if ((convertCharsToStrings(data(a).traits.species))  =="mouse")
             man_species_mouse(cluster)=man_species_mouse(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.species))  =="rat")
            man_species_rat(cluster)=man_species_rat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.species))  =="nhp")
            man_species_nhp(cluster)=man_species_nhp(cluster)+1;
        end
        
        if ((convertCharsToStrings(data(a).traits.age))  =="adult")
             man_age_adult(cluster)=man_age_adult(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.age))  =="aged")
            man_age_aged(cluster)=man_age_aged(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.age))  =="adolescent")
            man_age_adol(cluster)=man_age_adol(cluster)+1;
        end
        
        if ((convertCharsToStrings(data(a).state.type))  =="awake")
             man_state_awake(cluster)=man_state_awake(cluster)+1;
        elseif ((convertCharsToStrings(data(a).state.type))  =="anesthesia")
            man_state_anes(cluster)=man_state_anes(cluster)+1;
        elseif ((convertCharsToStrings(data(a).state.type))  =="slice")
            man_state_slice(cluster)=man_state_slice(cluster)+1;
        end

        if ((convertCharsToStrings(data(a).state.type))=="anesthesia")
            if ((convertCharsToStrings(data(a).state.anesthesia.type))=="chloral hydrate")
                man_anes_ch(cluster)=man_anes_ch(cluster)+1;
            elseif ((convertCharsToStrings(data(a).state.anesthesia.type))=="isoflurane")
                man_anes_iso(cluster)=man_anes_iso(cluster) +1;
            elseif ((convertCharsToStrings(data(a).state.anesthesia.type))=="urethane")
                man_anes_ureth(cluster)=man_anes_ureth(cluster)+1;
            end
        end

          if ((convertCharsToStrings(data(a).traits.genotype))  =="WT")
             man_geno_WT(cluster)=man_geno_WT(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="DBH-cre")
            man_geno_dbh(cluster)=man_geno_dbh(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="Gad2-Ires-Cre")
            man_geno_gad_vgat(cluster)=man_geno_gad_vgat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="VGAT-cre")
             man_geno_gad_vgat(cluster)=man_geno_gad_vgat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="app/ps1")
            man_geno_app(cluster)=man_geno_app(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="dsp4")
            man_geno_dsp(cluster)=man_geno_dsp(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="dyskinetic")
            man_geno_dyskinetic(cluster)=man_geno_dyskinetic(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="parkinsonian")
            man_geno_parkinson(cluster)=man_geno_parkinson(cluster)+1;
            elseif ((convertCharsToStrings(data(a).traits.genotype))  =="TH-Cre")
            man_geno_th(cluster)=man_geno_th(cluster)+1;
        end

    end
end
end

tblinfo=... 
     table(clust_list, man_sex_female, man_sex_male, man_sex_nan, man_species_mouse, man_species_rat, man_species_nhp,...
     man_age_adol, man_age_adult, man_age_aged, man_state_awake, man_state_anes, man_state_slice, man_anes_ureth, man_anes_ch, man_anes_iso,...
     man_geno_WT, man_geno_dbh, man_geno_gad_vgat, man_geno_app, man_geno_dsp, man_geno_dyskinetic, man_geno_parkinson,man_geno_th)




%%
clear sex_f_m_n_norm all 
a=1;
for a=1:length(sex_f_m_n)
    all=sum(sex_f_m_n(a,:));
    sex_f_m_n_norm(a,:)=sex_f_m_n(a,:)/all
end

%%
clear sex_f_m_norm all 
a=1;
for a=1:length(sex_f_m)
    all=sum(sex_f_m(a,:));
    sex_f_m_norm(a,:)=sex_f_m(a,:)/all
end

%%
clear sex_f_m_norm_across all 
sex_f_m_across=sex_f_m';
a=1;
for a=1:height(sex_f_m_across)
    all=sum(sex_f_m_across(a,:));
    sex_f_m_norm_across(a,:)=sex_f_m_across(a,:)/all;
end

%%
clear sex_f_m_n_norm_across all 
sex_f_m_n_across=sex_f_m_n';
a=1;
for a=1:height(sex_f_m_n_across)
    all=sum(sex_f_m_n_across(a,:));
    sex_f_m_n_norm_across(a,:)=sex_f_m_n_across(a,:)/all;
end



%% example return plot 

samples = {2232, 968, 1204, 1752, 2527,...
    1930, 2570, 182};  
samples=cell2mat(samples); b=1; a=1;
for a=1:length(samples)
    subplot(2,4,a) % change dimensions
    aa=samples(b);
    N = data(aa).scatter.n;
    ptsx = data(aa).scatter.pts;
    ptsy = data(aa).scatter.pts;
    imagesc(ptsx, ptsy, N);
    axis equal;
    set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
    ylabel({'log(ISIn+1)'});
    xlabel({'log (ISIn)'});
    title({"Type " + data(aa).ManualCluster });
    %title({"Unit " + aa });
    b=b+1;
end

%%
% example return plots for each cluster and average included 

a=1;
aa=2232;
aaa=1988;

% 1-{2232, 1988, ...
% 2- 320, 968, ...
% 3- 1872, 1204, ...
% 4- 1485, 1752,...
% 5 - 2515, 2527, ...
% 6- 1930, 1941, ...
% 7- 2570, 2553,...
% 8- 59, 182, ...
% 9- 2315, 204,...
% 10 - 1400, 1394,...
% 11- 395, 196};  

    
pts = linspace(-5, 5, 41); %change the time limit and number of bins
clear x y N 
% x = tbl{a,1}.Cluster_x_log; 
% y = tbl{a,1}.Cluster_y_log; 
% N = histcounts2(y(:), x(:), pts, pts);
% subplot(1,3,1) % change dimensions
% imagesc(pts, pts, N);
% axis equal;
% set(gca, 'XLim', pts([1 end]), 'YLim', pts([1 end]), 'YDir', 'normal');
% ylabel({'log (ISIn+1)'});
% xlabel({'log (ISIn)'});
% title({"Average" })

subplot(1,2,1) % change dimensions
N = data(aa).scatter.N;
ptsx = data(aa).scatter.ptsx;
ptsy = data(aa).scatter.ptsy;
imagesc(ptsx, ptsy, N);
axis equal;
set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
ylabel({'log(ISIn+1)'});
xlabel({'log (ISIn)'});
title({"Unit " + aa });

subplot(1,2,2) % change dimensions
N = data(aaa).scatter.N;
ptsx = data(aaa).scatter.ptsx;
ptsy = data(aaa).scatter.ptsy;
imagesc(ptsx, ptsy, N);
axis equal;
set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
ylabel({'log(ISIn+1)'});
xlabel({'log (ISIn)'});
title({"Unit " + aaa });
  
sgtitle({"Cluster " + a})

%% make histogram of ISIfinal

clear a
a=1
for a=1:length(data)
    data(a).scatter.ISIhisto=histcounts(data(a).ISIprePharmEvent, 250, 'BinLimits', [0, 2.5], 'Normalization', 'probability' )
end

%% format the histogram into clusters

clear a cluster HistCluster_01 HistCluster_02 HistCluster_03 HistCluster_04 HistCluster_05 HistCluster_06 HistCluster_07 HistCluster_08 HistCluster_09 HistCluster_10 HistCluster_11
a=1; l=1; m=1; n=1; o=1; p=1; q=1; r=1; s=1; t=1; u=1; v=1;
cluster=1;

for a=1:length(data)
    if data(a).ManualCluster==1 
        HistCluster_01(l, 1:250)=data(a).scatter.ISIhisto;
        l=l+1;
    elseif data(a).ManualCluster==2 
        HistCluster_02(m, 1:250)=data(a).scatter.ISIhisto;
        m=m+1;
    elseif data(a).ManualCluster==3 
        HistCluster_03(n, 1:250)=data(a).scatter.ISIhisto;
        n=n+1;
    elseif data(a).ManualCluster==4 
        HistCluster_04(o, 1:250)=data(a).scatter.ISIhisto;
        o=o+1;
    elseif data(a).ManualCluster==5 
        HistCluster_05(p, 1:250)=data(a).scatter.ISIhisto;
        p=p+1; 
    elseif data(a).ManualCluster==6 
        HistCluster_06(q, 1:250)=data(a).scatter.ISIhisto;
        q=q+1;
    elseif data(a).ManualCluster==7 
        HistCluster_07(r, 1:250)=data(a).scatter.ISIhisto;
        r=r+1;
    elseif data(a).ManualCluster==8 
        HistCluster_08(s, 1:250)=data(a).scatter.ISIhisto;
        s=s+1;
    elseif data(a).ManualCluster==9 
        HistCluster_09(t, 1:250)=data(a).scatter.ISIhisto;
        t=t+1;
    elseif data(a).ManualCluster==10 
        HistCluster_10(u, 1:250)=data(a).scatter.ISIhisto;
        u=u+1;
    elseif data(a).ManualCluster==11 
        HistCluster_11(v, 1:250)=data(a).scatter.ISIhisto;
        v=v+1;
    end
end

clear l m n o p q r s t u v 
%%
a=1;n=1;
for a=1:length(data)
    if data(a).ManualCluster>=1 
        HistCluster_All(n, 1:250)=data(a).scatter.ISIhisto;
        n=n+1;
    end
end


%%
a=1;n=1; b=0;
for a=1:length(data)
    if data(a).ManualCluster>=1;
        ClusterAll(n:n+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        n=n+length(data(a).ISIprePharmEvent);
        b=b+1;
    end
end

%%

a=1; l=1; m=1; n=1; o=1; p=1; q=1; r=1; s=1; t=1; u=1; v=1; 

for a=1:length(data)
    if data(a).ManualCluster==1;
        Cluster_01(l:l+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        l=l+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==2;
        Cluster_02(m:m+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        m=m+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==3;
        Cluster_03(n:n+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        n=n+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==4;
        Cluster_04(o:o+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        o=o+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==5;
        Cluster_05(p:p+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        p=p+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==6;
        Cluster_06(q:q+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        q=q+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==7;
        Cluster_07(r:r+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        r=r+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==8;
        Cluster_08(s:s+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        s=s+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==9;
        Cluster_09(t:t+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        t=t+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==10;
        Cluster_10(u:u+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        u=u+length(data(a).ISIprePharmEvent);
    elseif data(a).ManualCluster==11;
        Cluster_11(v:v+length(data(a).ISIprePharmEvent)-1)=data(a).ISIprePharmEvent;
        v=v+length(data(a).ISIprePharmEvent);
    end
end

clear l m n o p q r s t u v 
%%
subplot(3,4,1)
% h= 
histogram(Cluster_01, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,2)
histogram(Cluster_02, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,3)
histogram(Cluster_03, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,4)
histogram(Cluster_04, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,5)
histogram(Cluster_05, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,6)
histogram(Cluster_06, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,7)
histogram(Cluster_07, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,8)
histogram(Cluster_08, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,9)
histogram(Cluster_09, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,10)
histogram(Cluster_10, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')
subplot(3,4,11)
histogram(Cluster_11, 'BinWidth', .025, 'Binlimits', [0 1],'Normalization','probability')
% xline(.06, 'r')

%%

% scatter plots of ISI over time
clear aa samples a b cluster fun tf2 N ptsy ptsx b a 
cluster=11; % change this to interested cluster

fun = @(x) data(x).ManualCluster == cluster;
tf2 = arrayfun(fun, 1:numel(data));
[aa] = find(tf2); %find units in specific cluster and puts in aa
sgtitle({"Cluster" + cluster}); %change the title to match
samples = randsample(aa,7);  
b=1; 
a=1;
for a=1:length(samples)
    subplot(5,2,a) % change dimensions
    a=samples(b);
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end-1)),2, "filled")

    ylabel({'log(ISI)'});
    title({"Unit " + a });
    b=b+1;
end


%%

% scatter plots of ISI over time
clear aa samples a b cluster fun tf2 N ptsy ptsx b a 
% cluster=1; % change this to interested cluster
% sgtitle({"Cluster" + cluster}); %change the title to match
subplot(4,3,1)
a=2232;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 1 - Unit " + a });

subplot(4,3,2)
a=320;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 2 - Unit " + a });


subplot(4,3,3)
a=1872;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 3 - Unit " + a });

subplot(4,3,4)
a=1485;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 4 - Unit " + a });

subplot(4,3,5)
a=2527;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 5 - Unit " + a });    

subplot(4,3,6)
a=1930;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 6 - Unit " + a });    

subplot(4,3,7)
a=2570;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 7 - Unit " + a });    

subplot(4,3,8)
a=59;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 8 - Unit " + a });   

subplot(4,3,9)
a=204;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 9 - Unit " + a });    

subplot(4,3,10)
a=1400;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 10 - Unit " + a });    


 subplot(4,3,11)
a=395;
    scatter((data(a).FR),log(data(a).ISIprePharmEvent(1:end)),2, "filled")
    ylabel({'log(ISI)'});
    title({"Cluster 11 - Unit " + a });   

%%
a=2;
b=1; %neuron
for b=1:length(data)
    len=length(data(b).ISIprePharmEvent)
    data(b).FR(1)=1;
for a=2:len-1
    data(b).FR(a)=data(b).FR(a-1)+data(b).ISIprePharmEvent(a);
end
end


%%
% count lab in each cluster
%% Make table that has every ISI and other info about each ISI given a cluster

clear lab_Arabzadeh lab_Berrocoso lab_BPSur lab_Chandler lab_Devilbiss lab_Froemke lab_Gold ...
    lab_Johansen lab_Kaye lab_McCall lab_McElligott lab_Miguelez lab_Min lab_Pickering ...
    lab_Shea lab_Totah lab_Wang lab_Weinshenker lab_Xiaolong

lab_Arabzadeh=zeros(11,1); lab_Berrocoso=zeros(11,1); lab_BPSur=zeros(11,1); lab_Chandler=zeros(11,1);
lab_Devilbiss=zeros(11,1); lab_Froemke=zeros(11,1); lab_Gold=zeros(11,1); lab_Johansen=zeros(11,1); 
lab_Kaye=zeros(11,1); lab_McCall=zeros(11,1); lab_McElligott=zeros(11,1); lab_Miguelez=zeros(11,1);
lab_Min=zeros(11,1); lab_Pickering=zeros(11,1); lab_Shea=zeros(11,1); lab_Totah=zeros(11,1); 
lab_Wang=zeros(11,1); lab_Weinshenker=zeros(11,1); lab_Xiaolong=zeros(11,1);

clustermax=11; %change this to cluster you want to look at
for cluster=1:clustermax

a=1;
for a=1:length(data)
    if data(a).ManualCluster==cluster 
        if ((convertCharsToStrings(data(a).labname))  =="Arabzadeh")
            lab_Arabzadeh(cluster)=lab_Arabzadeh(cluster)+1;
        elseif ((convertCharsToStrings(data(a).labname))  =="Berrocoso")
            lab_Berrocoso(cluster)=lab_Berrocoso(cluster)+1;
        elseif ((convertCharsToStrings(data(a).labname))  =="Breton-Provencher/Sur")
            lab_BPSur(cluster)=lab_BPSur(cluster)+1;
        elseif ((convertCharsToStrings(data(a).labname))  =="Chandler")
            lab_Chandler(cluster)=lab_Chandler(cluster)+1;
        elseif ((convertCharsToStrings(data(a).labname))  =="Devilbiss")
            lab_Devilbiss(cluster)=lab_Devilbiss(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Froemke")
            lab_Froemke(cluster)=lab_Froemke(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Gold")
            lab_Gold(cluster)=lab_Gold(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Johansen")
            lab_Johansen(cluster)=lab_Johansen(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Kaye")
            lab_Kaye(cluster)=lab_Kaye(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="McCall")
            lab_McCall(cluster)=lab_McCall(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="McElligott")
            lab_McElligott(cluster)=lab_McElligott(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Miguelez")
            lab_Miguelez(cluster)=lab_Miguelez(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Min")
            lab_Min(cluster)=lab_Min(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Pickering")
            lab_Pickering(cluster)=lab_Pickering(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Shea")
            lab_Shea(cluster)=lab_Shea(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Totah")
            lab_Totah(cluster)=lab_Totah(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Wang")
            lab_Wang(cluster)=lab_Wang(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Weinshenker")
            lab_Weinshenker(cluster)=lab_Weinshenker(cluster)+1;
            elseif ((convertCharsToStrings(data(a).labname))  =="Xiaolong")
            lab_Xiaolong(cluster)=lab_Xiaolong(cluster)+1;
        end
    end
end
end
            

% 
% 
% tblinfo=... 
%      table(clust_list, sex_female, sex_male, sex_nan, species_mouse, species_rat, species_nhp,...
%      age_adol, age_adult, age_aged, state_awake, state_anes, state_slice, anes_ureth, anes_ch, anes_iso)


%%
%%
% pca(HistCluster_All)
[traitpca_coeff,traitpca_score,traitpca_latent,traitpca_tsquared,traitpca_explained] = pca(PCAtraits)
scatter3(traitpca_score(:,1),traitpca_score(:,2),traitpca_score(:,3))
scatter(traitpca_score(:,1),traitpca_score(:,2))
% [tpr,fpr,thresholds] = roc(S_CDH03_1018.CUE.Spikes.RightNumTrim,S_CDH03_1018.CUE.Spikes.LeftNumTrim)

%%

npts = 11;
h = scatter3(traitpca_score(:,1),traitpca_score(:,2),traitpca_score(:,3),50,'filled');
% h = scatter(score(:,1),score(:,2),25,'filled');
c = h.CData;
% c is now a 1x3, meaning a RGB color that's used for all of the points
c = repmat(c,[npts 1]);
% c is now a 5x3 containing 5 copies of the original RGB
c(1,:) = [.4 .2275 .7137]; % c now contains red, followed by 4 copies of the original color
c(2,:)=[.6078 0.1529 0.6902];
c(3,:)=[.9137 .1137 0.3843];
c(4,:)=[.9922 .3373 0.1294];
c(5,:)=[1 .5922 0];
c(6,:)=[.9999 .8941 0.0039];
c(7,:)=[0.8000 .8588 .2196];
c(8,:)=[0.5412 .7569 .2863];
c(9,:)=[0.0039 0.5843 .5294];
c(10,:)=[0.0078 .6588 .9569];
c(11,:)=[.2431 .3137 .7059];
xlabel('Principle Component 1');
ylabel('Priciple Component 2');
zlabel('Principle Component 3');
h.CData = c;
% Now the scatter object is using those colors

%%
% get histograms of each unit and put in matrix to then do kmeans

a=1;b=1;
for a=1:length(data)
    if data(a).ManualCluster>=1;
    kmeans_histo(b,1:40)=histcounts(data(a).scatter.ISIn_x_log,data(a).scatter.pts, 'Normalization','probability');
    b=b+1;
end
end

%%
a=1;
n=1;

for a=1:length(data)
    if data(a).ManualCluster==11
  CV_11(n)=std(data(a).ISIprePharmEvent)/mean(data(a).ISIprePharmEvent);
  n=n+1;
    end
end

subplot(3,4,1)
histogram(CV_01,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,2)
histogram(CV_02,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,3)
histogram(CV_03,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,4)
histogram(CV_04,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,5)
histogram(CV_05,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,6)
histogram(CV_06,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,7)
histogram(CV_07,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,8)
histogram(CV_08,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,9)
histogram(CV_09,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,10)
histogram(CV_10,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')
subplot(3,4,11)
histogram(CV_11,'BinWidth', .25, 'BinLimits', [0 5], 'Normalization', 'probability')

%% 
% burst index was defined as the sum of spikes with an interspike interval <6 ms, divided by the number of spikes
% https://journals.physiology.org/doi/full/10.1152/jn.00019.2018

a=1;
for a=1:length(data)
    if data(a).ManualCluster>=1
    burstindex(a)= numel(find(data(a).ISIprePharmEvent(:)<0.006))/length(data(a).ISIprePharmEvent);
    else
        burstindex(a)=NaN;
end
end


%%
burstindex_cluster=zeros(11,1);
burstindexNO_cluster= zeros(11,1);
clustermax=11; %change this to cluster you want to look at
for cluster=1:clustermax
a=1;
for a=1:length(data)

    if data(a).ManualCluster==cluster 
        if ((burstindex(a)>0))
            burstindex_cluster(cluster)=burstindex_cluster(cluster)+1;
       
        end
        if ((burstindex(a)==0))
            burstindexNO_cluster(cluster)=burstindexNO_cluster(cluster)+1;
        end
    end
end
end
%%
burstindex_values=NaN(602,11);
a=1; n=1;
clustermax=11;
cluster=1;
for cluster=1:clustermax
for a=1:length(data)
     if data(a).ManualCluster==cluster 
         burstindex_values(n,cluster)=burstindex(a);
         n=n+1;
     end
end
n=1;
end

%%
%% 
% find number of spikes single, double, triple, etc. 

a=1;
for a=1:length(data)
    if data(a).ManualCluster>=1
    numburst(a)= numel(find(data(a).ISIprePharmEvent(:)<=0.006));
    else
        numburst(a)=NaN;
end
end
% numburst=numburst';

a=1;
numburst_single=zeros(2944,1);
for a=1:length(data)
    if numburst(a)>=1
        for b=2:(length(data(a).ISIprePharmEvent)-1)
            if data(a).ISIprePharmEvent(b) <=0.006 && data(a).ISIprePharmEvent(b+1)>0.006 && data(a).ISIprePharmEvent(b-1)>0.006
            numburst_single(a)= numburst_single(a)+1;
            end
        end
    else
        numburst_single(a)=NaN;
end
end

a=1;
numburst_double=zeros(2944,1);
for a=1:length(data)
    if numburst(a)>=1
        for b=2:(length(data(a).ISIprePharmEvent)-2)
            if data(a).ISIprePharmEvent(b) <=0.006 && data(a).ISIprePharmEvent(b+1)<=0.006 && data(a).ISIprePharmEvent(b+2)>0.006 && data(a).ISIprePharmEvent(b-1)>0.006
            numburst_double(a)= numburst_double(a)+1;
            end
        end
    else
        numburst_double(a)=NaN;
end
end

a=1;
numburst_triple=zeros(2944,1);
for a=1:length(data)
    if numburst(a)>=1
        for b=2:(length(data(a).ISIprePharmEvent)-3)
            if data(a).ISIprePharmEvent(b) <=0.006 && data(a).ISIprePharmEvent(b+1)<=0.006 && data(a).ISIprePharmEvent(b+2)<=0.006 && data(a).ISIprePharmEvent(b-1)>0.006 && data(a).ISIprePharmEvent(b+3)>0.006
            numburst_triple(a)= numburst_triple(a)+1;
            end
        end
    else
        numburst_triple(a)=NaN;
end
end


%% Make table that has every ISI and other info about each ISI given a cluster

clear PCAsex_female PCAsex_male PCAsex_nan PCAspecies_mouse PCAspecies_nhp PCAspecies_rat PCAage_adult PCAage_aged PCAage_adol
clear PCAstate_anes PCAstate_awake PCAstate_slice PCAanes_ch PCAanes_iso PCAanes_ureth
% PCAsex_female=[];PCAsex_male=[];PCAsex_nan=[];
PCAsex_female=zeros(19,1); PCAsex_male=zeros(19,1); PCAsex_nan=zeros(19,1); PCAspecies_mouse=zeros(19,1); PCAspecies_nhp=zeros(19,1); PCAspecies_rat=zeros(19,1);
PCAage_adult=zeros(19,1); PCAage_aged=zeros(19,1); PCAage_adol=zeros(19,1); PCAstate_anes=zeros(19,1); PCAstate_awake=zeros(19,1); PCAstate_slice=zeros(19,1);
PCAanes_ch=zeros(19,1); PCAanes_iso=zeros(19,1); PCAanes_ureth=zeros(19,1); PCAgeno_WT=zeros(19,1); PCAgeno_dbh=zeros(19,1); PCAgeno_gad_vgat=zeros(19,1);
PCAgeno_app=zeros(19,1); PCAgeno_dsp=zeros(19,1); PCAgeno_dyskinetic=zeros(19,1); PCAgeno_parkinson=zeros(19,1);PCAgeno_th=zeros(19,1);

clustermax=17; %change this to cluster you want to look at
for cluster=1:clustermax

a=1;
for a=1:length(data)
    if data(a).PCAclus==cluster 
        if ((convertCharsToStrings(data(a).traits.gender))  =="f")
            PCAsex_female(cluster)=PCAsex_female(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.gender))  =="m")
            PCAsex_male(cluster)=PCAsex_male(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.gender))  =="NaN")
            PCAsex_nan(cluster)=PCAsex_nan(cluster)+1;
        end

        if ((convertCharsToStrings(data(a).traits.species))  =="mouse")
             PCAspecies_mouse(cluster)=PCAspecies_mouse(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.species))  =="rat")
            PCAspecies_rat(cluster)=PCAspecies_rat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.species))  =="nhp")
            PCAspecies_nhp(cluster)=PCAspecies_nhp(cluster)+1;
        end
        
        if ((convertCharsToStrings(data(a).traits.age))  =="adult")
             PCAage_adult(cluster)=PCAage_adult(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.age))  =="aged")
            PCAage_aged(cluster)=PCAage_aged(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.age))  =="adolescent")
            PCAage_adol(cluster)=PCAage_adol(cluster)+1;
        end
        
        if ((convertCharsToStrings(data(a).state.type))  =="awake")
             PCAstate_awake(cluster)=PCAstate_awake(cluster)+1;
        elseif ((convertCharsToStrings(data(a).state.type))  =="anesthesia")
            PCAstate_anes(cluster)=PCAstate_anes(cluster)+1;
        elseif ((convertCharsToStrings(data(a).state.type))  =="slice")
            PCAstate_slice(cluster)=PCAstate_slice(cluster)+1;
        end

        if ((convertCharsToStrings(data(a).state.type))=="anesthesia")
            if ((convertCharsToStrings(data(a).state.anesthesia.type))=="chloral hydrate")
                PCAanes_ch(cluster)=PCAanes_ch(cluster)+1;
            elseif ((convertCharsToStrings(data(a).state.anesthesia.type))=="isoflurane")
                PCAanes_iso(cluster)=PCAanes_iso(cluster) +1;
            elseif ((convertCharsToStrings(data(a).state.anesthesia.type))=="urethane")
                PCAanes_ureth(cluster)=PCAanes_ureth(cluster)+1;
            end
        end

          if ((convertCharsToStrings(data(a).traits.genotype))  =="WT")
             PCAgeno_WT(cluster)=PCAgeno_WT(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="DBH-cre")
            PCAgeno_dbh(cluster)=PCAgeno_dbh(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="Gad2-Ires-Cre")
            PCAgeno_gad_vgat(cluster)=PCAgeno_gad_vgat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="VGAT-cre")
             PCAgeno_gad_vgat(cluster)=PCAgeno_gad_vgat(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="app/ps1")
            PCAgeno_app(cluster)=PCAgeno_app(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="dsp4")
            PCAgeno_dsp(cluster)=PCAgeno_dsp(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="dyskinetic")
            PCAgeno_dyskinetic(cluster)=PCAgeno_dyskinetic(cluster)+1;
        elseif ((convertCharsToStrings(data(a).traits.genotype))  =="parkinsonian")
            PCAgeno_parkinson(cluster)=PCAgeno_parkinson(cluster)+1;
            elseif ((convertCharsToStrings(data(a).traits.genotype))  =="TH-Cre")
            PCAgeno_th(cluster)=PCAgeno_th(cluster)+1;
        end

    end
end
end

tblinfo=... 
     table( PCAsex_female, PCAsex_male, PCAsex_nan, PCAspecies_mouse, PCAspecies_rat, PCAspecies_nhp,...
     PCAage_adol, PCAage_adult, PCAage_aged, PCAstate_awake, PCAstate_anes, PCAstate_slice, PCAanes_ureth, PCAanes_ch, PCAanes_iso,...
     PCAgeno_WT, PCAgeno_dbh, PCAgeno_gad_vgat, PCAgeno_app, PCAgeno_dsp, PCAgeno_dyskinetic, PCAgeno_parkinson,PCAgeno_th)



