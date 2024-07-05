% %%
% 
% a=1, b=0;
% for a=1:length(data)
%     if data(a).ManualCluster==8;
%         b=b+1;
%     end
% end
% b
% %%
% a=1;
% for a=1:length(data)
%     if data(a).ManualCluster>=1;
%         data(a).scatter.MeanISI=mean(data(a).ISIfinal);
%         data(a).scatter.MedianISI=median(data(a).ISIfinal);
%         data(a).scatter.StdISI=std(data(a).ISIfinal);
%     end
% end
% 
% %%
% a=1; a1=1; a2=1, a3=1, a4=1, a5=1, a6=1, a7=1, a8=1;
% clear a1_mean a1_median  a1_std ...
%     a2_mean a2_median  a2_std...
%     a3_mean a3_median  a3_std...
%     a4_mean a4_median  a4_std...
%     a5_mean a5_median  a5_std...
%     a6_mean a6_median  a6_std...
%     a7_mean a7_median  a7_std...
%     a8_mean a8_median  a8_std
% a1_mean=zeros(689,1 ); a1_median=zeros(689,1);a1_std=zeros( 689,1);
% a2_mean=zeros(560,1); a2_median=zeros(560,1);a2_std=zeros( 560,1);
% a3_mean=zeros(90,1); a3_median=zeros( 90,1);a3_std=zeros( 90,1);
% a4_mean=zeros(206,1); a4_median=zeros( 206,1);a4_std=zeros( 206,1);
% a5_mean=zeros(48,1); a5_median=zeros( 48,1);a5_std=zeros( 48,1);
% a6_mean=zeros(44,1); a6_median=zeros( 44,1);a6_std=zeros( 44,1);
% a7_mean=zeros(50,1); a7_median=zeros( 50,1);a7_std=zeros(50,1);
% a8_mean=zeros(21,1); a8_median=zeros( 21,1);a8_std=zeros(21,1);
% for a=1:length(data)
%     if data(a).ManualCluster==1
%         a1_mean(a1)=data(a).scatter.MeanISI;
%         a1_median(a1)=data(a).scatter.MedianISI;
%         a1_std(a1)=data(a).scatter.StdISI;
%         a1=a1+1;
%     elseif data(a).ManualCluster==2
%         a2_mean(a2)=data(a).scatter.MeanISI;
%         a2_median(a2)=data(a).scatter.MedianISI;
%         a2_std(a2)=data(a).scatter.StdISI;
%         a2=a2+1;
%     elseif data(a).ManualCluster==3
%         a3_mean(a3)=data(a).scatter.MeanISI;
%         a3_median(a3)=data(a).scatter.MedianISI;
%         a3_std(a3)=data(a).scatter.StdISI;
%         a3=a3+1;
%     elseif data(a).ManualCluster==4
%         a4_mean(a4)=data(a).scatter.MeanISI;
%         a4_median(a4)=data(a).scatter.MedianISI;
%         a4_std(a4)=data(a).scatter.StdISI;
%         a4=a4+1;
%     elseif data(a).ManualCluster==5
%         a5_mean(a5)=data(a).scatter.MeanISI;
%         a5_median(a5)=data(a).scatter.MedianISI;
%         a5_std(a5)=data(a).scatter.StdISI;
%         a5=a5+1;
%     elseif data(a).ManualCluster==6
%         a6_mean(a6)=data(a).scatter.MeanISI;
%         a6_median(a6)=data(a).scatter.MedianISI;
%         a6_std(a6)=data(a).scatter.StdISI;
%         a6=a6+1;
%     elseif data(a).ManualCluster==7
%         a7_mean(a7)=data(a).scatter.MeanISI;
%         a7_median(a7)=data(a).scatter.MedianISI;
%         a7_std(a7)=data(a).scatter.StdISI;
%         a7=a7+1;
%     elseif data(a).ManualCluster==8
%         a8_mean(a8)=data(a).scatter.MeanISI;
%         a8_median(a8)=data(a).scatter.MedianISI;
%         a8_std(a8)=data(a).scatter.StdISI;
%         a8=a8+1;
%     end
% end






























%%
% a=1; sex_male=zeros(1,8);sex_female=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if data(a).traits.gender=='m'
            sex_male(1,1)=sex_male(1,1)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,1)=sex_female(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if data(a).traits.gender=='m'
            sex_male(1,2)=sex_male(1,2)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,2)=sex_female(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if data(a).traits.gender=='m'
            sex_male(1,3)=sex_male(1,3)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,3)=sex_female(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if data(a).traits.gender=='m'
            sex_male(1,4)=sex_male(1,4)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,4)=sex_female(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if data(a).traits.gender=='m'
            sex_male(1,5)=sex_male(1,5)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,5)=sex_female(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if data(a).traits.gender=='m'
            sex_male(1,6)=sex_male(1,6)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,6)=sex_female(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if data(a).traits.gender=='m'
            sex_male(1,7)=sex_male(1,7)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,7)=sex_female(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if data(a).traits.gender=='m'
            sex_male(1,8)=sex_male(1,8)+1;
        elseif data(a).traits.gender=='f'
            sex_female(1,8)=sex_female(1,8)+1;
        end
    end
end

%
       

%%
a=1; species_mouse=zeros(1,8);species_rat=zeros(1,8);species_nhp=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,1)=species_mouse(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,1)=species_rat(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,1)=species_nhp(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,2)=species_mouse(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,2)=species_rat(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,2)=species_nhp(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,3)=species_mouse(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,3)=species_rat(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,3)=species_nhp(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,4)=species_mouse(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,4)=species_rat(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,4)=species_nhp(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,5)=species_mouse(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,5)=species_rat(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,5)=species_nhp(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,6)=species_mouse(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,6)=species_rat(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,6)=species_nhp(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,7)=species_mouse(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,7)=species_rat(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,7)=species_nhp(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).traits.species)=='mouse'
            species_mouse(1,8)=species_mouse(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='rat'
            species_rat(1,8)=species_rat(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.species)=='nhp'
            species_nhp(1,8)=species_nhp(1,8)+1;
        end
    end
end

        


%%
a=1; age_adol=zeros(1,8);age_adult=zeros(1,8);age_aged=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,1)=age_adol(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,1)=age_adult(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,1)=age_aged(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,2)=age_adol(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,2)=age_adult(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,2)=age_aged(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,3)=age_adol(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,3)=age_adult(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,3)=age_aged(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,4)=age_adol(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,4)=age_adult(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,4)=age_aged(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,5)=age_adol(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,5)=age_adult(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,5)=age_aged(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,6)=age_adol(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,6)=age_adult(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,6)=age_aged(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,7)=age_adol(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,7)=age_adult(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,7)=age_aged(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).traits.age)=='adolescent'
            age_adol(1,8)=age_adol(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='adult'
            age_adult(1,8)=age_adult(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.age)=='aged'
            age_aged(1,8)=age_aged(1,8)+1;
        end
    end
end

        


%%f
a=1; rec_awake=zeros(1,8);rec_anes=zeros(1,8);rec_slice=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,1)=rec_awake(1,1)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,1)=rec_anes(1,1)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,1)=rec_slice(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,2)=rec_awake(1,2)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,2)=rec_anes(1,2)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,2)=rec_slice(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,3)=rec_awake(1,3)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,3)=rec_anes(1,3)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,3)=rec_slice(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,4)=rec_awake(1,4)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,4)=rec_anes(1,4)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,4)=rec_slice(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,5)=rec_awake(1,5)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,5)=rec_anes(1,5)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,5)=rec_slice(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,6)=rec_awake(1,6)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,6)=rec_anes(1,6)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,6)=rec_slice(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,7)=rec_awake(1,7)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,7)=rec_anes(1,7)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,7)=rec_slice(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).state.type)=='awake'
            rec_awake(1,8)=rec_awake(1,8)+1;
        elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
            rec_anes(1,8)=rec_anes(1,8)+1;
        elseif convertCharsToStrings(data(a).state.type)=='slice'
            rec_slice(1,8)=rec_slice(1,8)+1;
        end
    end
end

        

%%
a=1; anes_iso=zeros(1,8);anes_ch=zeros(1,8);anes_ureth=zeros(1,8);
for a=1:length(data)
    if convertCharsToStrings(data(a).state.type)=='anesthesia'
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,1)=anes_iso(1,1)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,1)=anes_ch(1,1)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,1)=anes_ureth(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,2)=anes_iso(1,2)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,2)=anes_ch(1,2)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,2)=anes_ureth(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,3)=anes_iso(1,3)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,3)=anes_ch(1,3)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,3)=anes_ureth(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,4)=anes_iso(1,4)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,4)=anes_ch(1,4)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,4)=anes_ureth(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,5)=anes_iso(1,5)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,5)=anes_ch(1,5)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,5)=anes_ureth(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,6)=anes_iso(1,6)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,6)=anes_ch(1,6)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,6)=anes_ureth(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,7)=anes_iso(1,7)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,7)=anes_ch(1,7)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,7)=anes_ureth(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
            anes_iso(1,8)=anes_iso(1,8)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
            anes_ch(1,8)=anes_ch(1,8)+1;
        elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
            anes_ureth(1,8)=anes_ureth(1,8)+1;
        end
    end
    end
end

        
%%
a=1; geno_WT=zeros(1,8);geno_park=zeros(1,8);geno_dysk=zeros(1,8); geno_app=zeros(1,8); geno_dsp=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,1)=geno_WT(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,1)=geno_park(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,1)=geno_dysk(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,1)=geno_app(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,1)=geno_dsp(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,2)=geno_WT(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,2)=geno_park(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,2)=geno_dysk(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,2)=geno_app(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,2)=geno_dsp(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,3)=geno_WT(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,3)=geno_park(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,3)=geno_dysk(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,3)=geno_app(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,3)=geno_dsp(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,4)=geno_WT(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,4)=geno_park(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,4)=geno_dysk(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,4)=geno_app(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,4)=geno_dsp(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,5)=geno_WT(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,5)=geno_park(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,5)=geno_dysk(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,5)=geno_app(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,5)=geno_dsp(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,6)=geno_WT(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,6)=geno_park(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,6)=geno_dysk(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,6)=geno_app(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,6)=geno_dsp(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,7)=geno_WT(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,7)=geno_park(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,7)=geno_dysk(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,7)=geno_app(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,7)=geno_dsp(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,8)=geno_WT(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
            geno_park(1,8)=geno_park(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
            geno_dysk(1,8)=geno_dysk(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
            geno_app(1,8)=geno_app(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
            geno_dsp(1,8)=geno_dsp(1,8)+1;
        end
        end
    end
  


%%
a=1; geno_WT=zeros(1,8);geno_dbh=zeros(1,8);geno_gat=zeros(1,8); geno_th=zeros(1,8);
for a=1:length(data)
    if data(a).ManualCluster==1
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,1)=geno_WT(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,1)=geno_dbh(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,1)=geno_gat(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,1)=geno_gat(1,1)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,1)=geno_th(1,1)+1;
        end
    elseif data(a).ManualCluster==2
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,2)=geno_WT(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,2)=geno_dbh(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,2)=geno_gat(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,2)=geno_gat(1,2)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,2)=geno_th(1,2)+1;
        end
    elseif data(a).ManualCluster==3
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,3)=geno_WT(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,3)=geno_dbh(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,3)=geno_gat(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,3)=geno_gat(1,3)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,3)=geno_th(1,3)+1;
        end
    elseif data(a).ManualCluster==4
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,4)=geno_WT(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,4)=geno_dbh(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,4)=geno_gat(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,4)=geno_gat(1,4)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,4)=geno_th(1,4)+1;
        end
    elseif data(a).ManualCluster==5
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,5)=geno_WT(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,5)=geno_dbh(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,5)=geno_gat(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,5)=geno_gat(1,5)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,5)=geno_th(1,5)+1;
        end
    elseif data(a).ManualCluster==6
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,6)=geno_WT(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,6)=geno_dbh(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,6)=geno_gat(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,6)=geno_gat(1,6)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,6)=geno_th(1,6)+1;
        end
    elseif data(a).ManualCluster==7
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,7)=geno_WT(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,7)=geno_dbh(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,7)=geno_gat(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,7)=geno_gat(1,7)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,7)=geno_th(1,7)+1;
        end
    elseif data(a).ManualCluster==8
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,8)=geno_WT(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,8)=geno_dbh(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,8)=geno_gat(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,8)=geno_gat(1,8)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,8)=geno_th(1,8)+1;
        end
        end
    end
  

