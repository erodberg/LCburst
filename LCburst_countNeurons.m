% a=1; templab={}; b=1;
% for a=1:length(data)
% %if data(a).ManualCluster>=1
% templab(b)=cellstr(data(a).labname);
% b=b+1;
% %end
% end
% lab=unique(templab);
% lab=lab';

%% by lab species
clear species tempspecies

a=1; tempspecies={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempspecies(b)=cellstr(data(a).traits.species);
b=b+1;
%end
end
end
species=unique(tempspecies);
species=species';

%% by lab sex
clear sex tempsex
a=1; tempsex={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempsex(b)=cellstr(data(a).traits.gender);
b=b+1;
%end
end
end
sex=unique(tempsex);
sex=sex';

%% by lab strain
clear strain tempstrain 

a=1; tempstrain={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempstrain(b)=cellstr(data(a).traits.strain);
b=b+1;
%end
end
end
strain=unique(tempstrain);
strain=strain';

%% by lab age
clear age tempage 
a=1; tempage={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempage(b)=cellstr(data(a).traits.age);
b=b+1;
%end
end
end
age=unique(tempage);
age=age';

%% by lab geno
clear geno tempgeno 
a=1; tempgeno={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempgeno(b)=cellstr(data(a).traits.genotype);
b=b+1;
%end
end
end
geno=unique(tempgeno);
geno=geno';

%% by lab state
clear state tempstate 
a=1; tempstate={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempstate(b)=cellstr(data(a).state.type);
b=b+1;
%end
end
end
state=unique(tempstate);
state=state';

%% by lab anes type
clear anestype tempanestype 
a=1; tempanestype={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
tempanestype(b)=cellstr(data(a).state.anesthesia.type);
b=b+1;
%end
end
end
anestype=unique(tempanestype);
anestype=anestype';

%% by lab rectype
clear rectype temprectype
a=1; temprectype={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
temprectype(b)=cellstr(data(a).record_type);
b=b+1;
%end
end
end
rectype=unique(temprectype);
rectype=rectype';

%% count neurons
a=1;a_all=0; a_inclISI=0; a_inclFR=0;
for a=1:length(data)
    if data(a).labname=="Weinshenker"
        a_all=a_all+1;
        if data(a).ManualCluster>=1;
            a_inclISI=a_inclISI+1;
        end
        if data(a).EXCLUDE==0;
            a_inclFR=a_inclFR+1;
        end
    end
end


%%
% %% count neurons - strain

% a=1;a_all=0; a_inclISI=0; a_inclFR=0;
% for a=1:length(data)
%     if data(a).labname=="Weinshenker"
%         if data(a).traits.gender=="f"
% %             if data(a).traits.age=="adolescent"
%         a_all=a_all+1;
%         if data(a).ManualCluster>=1;
%             a_inclISI=a_inclISI+1;
%         end
%         if data(a).EXCLUDE==0;
%             a_inclFR=a_inclFR+1;
%         end
% 
%     end
%     end
% %     end
% end
% % 

% %% by lab geno
% clear geno tempgeno 
% a=1; tempgeno={}; b=1;
% for a=1:length(data)
% %if data(a).ManualCluster>=1
% if data(a).labname=="Weinshenker"
%     if data(a).traits.gender=="m"
% tempgeno(b)=cellstr(data(a).traits.genotype);
% b=b+1;
% %end
%     end
% end
% end
% geno=unique(tempgeno);
% geno=geno';
% 
%%
% 
% a=1;a_all=0;a_inclISI=0; a_inclFR=0;
% for a=1:length(data)
%     if data(a).labname=="Weinshenker"
%         if data(a).traits.strain=="spraguedawley"
%         a_all=a_all+1;
%         if data(a).ManualCluster>=1;
%             a_inclISI=a_inclISI+1;
%         end
%         if data(a).EXCLUDE==0;
%             a_inclFR=a_inclFR+1;
%         end
%                 end
%             end
%         end


 %%
%     a=1;clear b; 
%     b=0;
%     for a=1:length(data)
%         if data(a).labname=="Weinshenker"
%             if data(a).traits.gender=="f"
%                 if data(a).state.anesthesia.type=="urethane"
%             b=b+1;
%                 end
%             end
%         end
%     end
% 
% 
%%


a=1;a_all=0;a_inclISI=0; a_inclFR=0;
for a=1:length(data)
    if data(a).labname=="Weinshenker"
        if data(a).traits.age=="adolescent"

        a_all=a_all+1;
        if data(a).ManualCluster>=1;
            a_inclISI=a_inclISI+1;
        end
        if data(a).EXCLUDE==0;
            a_inclFR=a_inclFR+1;
        end
            end
                end
            end
        


%%
%% by lab strain
clear strain tempstrain 

a=1; tempstrain={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
    if data(a).traits.species=="rat"
        if data(a).traits.gender=="m"
            if data(a).traits.age=="aged"
tempstrain(b)=cellstr(data(a).traits.strain);
b=b+1;
%end
            end
        end
    end
end
end
strain=unique(tempstrain);
strain=strain';


clear age tempage 
a=1; tempage={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
    if data(a).traits.species=="rat"
        if data(a).traits.gender=="m"
            if data(a).traits.age=="aged"
tempage(b)=cellstr(data(a).traits.age);
b=b+1;
%end
            end
        end
    end
end
end
age=unique(tempage);
age=age';


clear geno tempgeno 
a=1; tempgeno={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
        if data(a).traits.species=="rat"
        if data(a).traits.gender=="m"
            if data(a).traits.age=="aged"
tempgeno(b)=cellstr(data(a).traits.genotype);
b=b+1;
%end
            end
        end
        end
end
end
geno=unique(tempgeno);
geno=geno';


clear state tempstate 
a=1; tempstate={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
        if data(a).traits.species=="rat"
        if data(a).traits.gender=="m"
            if data(a).traits.age=="aged"
tempstate(b)=cellstr(data(a).state.type);
b=b+1;
%end
            end
        end
        end
end
end
state=unique(tempstate);
state=state';


clear anestype tempanestype 
a=1; tempanestype={}; b=1;
for a=1:length(data)
%if data(a).ManualCluster>=1
if data(a).labname=="Weinshenker"
        if data(a).traits.species=="rat"
        if data(a).traits.gender=="m"
            if data(a).traits.age=="aged"
tempanestype(b)=cellstr(data(a).state.anesthesia.type);
b=b+1;
%end
            end
        end
        end
end
end
anestype=unique(tempanestype);
anestype=anestype';