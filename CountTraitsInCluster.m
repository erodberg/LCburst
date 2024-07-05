% a=1; sex_male=zeros(1,17);sex_female=zeros(1,17);
% for a=1:length(data)
%     if data(a).PCAclus==1
%         if data(a).traits.gender=='m'
%             sex_male(1,1)=sex_male(1,1)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,1)=sex_female(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if data(a).traits.gender=='m'
%             sex_male(1,2)=sex_male(1,2)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,2)=sex_female(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if data(a).traits.gender=='m'
%             sex_male(1,3)=sex_male(1,3)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,3)=sex_female(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if data(a).traits.gender=='m'
%             sex_male(1,4)=sex_male(1,4)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,4)=sex_female(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if data(a).traits.gender=='m'
%             sex_male(1,5)=sex_male(1,5)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,5)=sex_female(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if data(a).traits.gender=='m'
%             sex_male(1,6)=sex_male(1,6)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,6)=sex_female(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if data(a).traits.gender=='m'
%             sex_male(1,7)=sex_male(1,7)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,7)=sex_female(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if data(a).traits.gender=='m'
%             sex_male(1,8)=sex_male(1,8)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,8)=sex_female(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if data(a).traits.gender=='m'
%             sex_male(1,9)=sex_male(1,9)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,9)=sex_female(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if data(a).traits.gender=='m'
%             sex_male(1,10)=sex_male(1,10)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,10)=sex_female(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if data(a).traits.gender=='m'
%             sex_male(1,11)=sex_male(1,11)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,11)=sex_female(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if data(a).traits.gender=='m'
%             sex_male(1,12)=sex_male(1,12)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,12)=sex_female(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if data(a).traits.gender=='m'
%             sex_male(1,13)=sex_male(1,13)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,13)=sex_female(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if data(a).traits.gender=='m'
%             sex_male(1,14)=sex_male(1,14)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,14)=sex_female(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if data(a).traits.gender=='m'
%             sex_male(1,15)=sex_male(1,15)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,15)=sex_female(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if data(a).traits.gender=='m'
%             sex_male(1,16)=sex_male(1,16)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,16)=sex_female(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if data(a).traits.gender=='m'
%             sex_male(1,17)=sex_male(1,17)+1;
%         elseif data(a).traits.gender=='f'
%             sex_female(1,17)=sex_female(1,17)+1;
%         end
%     end
% end
% 
%         

% %%
% a=1; species_mouse=zeros(1,17);species_rat=zeros(1,17);species_nhp=zeros(1,17);
% for a=1:length(data)
%     if data(a).PCAclus==1
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,1)=species_mouse(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,1)=species_rat(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,1)=species_nhp(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,2)=species_mouse(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,2)=species_rat(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,2)=species_nhp(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,3)=species_mouse(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,3)=species_rat(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,3)=species_nhp(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,4)=species_mouse(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,4)=species_rat(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,4)=species_nhp(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,5)=species_mouse(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,5)=species_rat(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,5)=species_nhp(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,6)=species_mouse(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,6)=species_rat(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,6)=species_nhp(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,7)=species_mouse(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,7)=species_rat(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,7)=species_nhp(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,8)=species_mouse(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,8)=species_rat(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,8)=species_nhp(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,9)=species_mouse(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,9)=species_rat(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,9)=species_nhp(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,10)=species_mouse(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,10)=species_rat(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,10)=species_nhp(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,11)=species_mouse(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,11)=species_rat(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,11)=species_nhp(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,12)=species_mouse(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,12)=species_rat(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,12)=species_nhp(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,13)=species_mouse(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,13)=species_rat(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,13)=species_nhp(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,14)=species_mouse(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,14)=species_rat(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,14)=species_nhp(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,15)=species_mouse(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,15)=species_rat(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,15)=species_nhp(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,16)=species_mouse(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,16)=species_rat(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,16)=species_nhp(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if convertCharsToStrings(data(a).traits.species)=='mouse'
%             species_mouse(1,17)=species_mouse(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='rat'
%             species_rat(1,17)=species_rat(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.species)=='nhp'
%             species_nhp(1,17)=species_nhp(1,17)+1;
%         end
%     end
% end
% 
%         


% %%
% a=1; age_adol=zeros(1,17);age_adult=zeros(1,17);age_aged=zeros(1,17);
% for a=1:length(data)
%     if data(a).PCAclus==1
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,1)=age_adol(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,1)=age_adult(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,1)=age_aged(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,2)=age_adol(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,2)=age_adult(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,2)=age_aged(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,3)=age_adol(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,3)=age_adult(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,3)=age_aged(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,4)=age_adol(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,4)=age_adult(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,4)=age_aged(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,5)=age_adol(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,5)=age_adult(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,5)=age_aged(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,6)=age_adol(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,6)=age_adult(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,6)=age_aged(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,7)=age_adol(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,7)=age_adult(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,7)=age_aged(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,8)=age_adol(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,8)=age_adult(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,8)=age_aged(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,9)=age_adol(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,9)=age_adult(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,9)=age_aged(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,10)=age_adol(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,10)=age_adult(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,10)=age_aged(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,11)=age_adol(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,11)=age_adult(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,11)=age_aged(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,12)=age_adol(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,12)=age_adult(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,12)=age_aged(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,13)=age_adol(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,13)=age_adult(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,13)=age_aged(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,14)=age_adol(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,14)=age_adult(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,14)=age_aged(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,15)=age_adol(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,15)=age_adult(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,15)=age_aged(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,16)=age_adol(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,16)=age_adult(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,16)=age_aged(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if convertCharsToStrings(data(a).traits.age)=='adolescent'
%             age_adol(1,17)=age_adol(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='adult'
%             age_adult(1,17)=age_adult(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.age)=='aged'
%             age_aged(1,17)=age_aged(1,17)+1;
%         end
%     end
% end
% 
%         
% 

% %%
% a=1; rec_awake=zeros(1,17);rec_anes=zeros(1,17);rec_slice=zeros(1,17);
% for a=1:length(data)
%     if data(a).PCAclus==1
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,1)=rec_awake(1,1)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,1)=rec_anes(1,1)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,1)=rec_slice(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,2)=rec_awake(1,2)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,2)=rec_anes(1,2)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,2)=rec_slice(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,3)=rec_awake(1,3)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,3)=rec_anes(1,3)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,3)=rec_slice(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,4)=rec_awake(1,4)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,4)=rec_anes(1,4)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,4)=rec_slice(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,5)=rec_awake(1,5)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,5)=rec_anes(1,5)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,5)=rec_slice(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,6)=rec_awake(1,6)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,6)=rec_anes(1,6)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,6)=rec_slice(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,7)=rec_awake(1,7)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,7)=rec_anes(1,7)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,7)=rec_slice(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,8)=rec_awake(1,8)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,8)=rec_anes(1,8)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,8)=rec_slice(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,9)=rec_awake(1,9)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,9)=rec_anes(1,9)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,9)=rec_slice(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,10)=rec_awake(1,10)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,10)=rec_anes(1,10)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,10)=rec_slice(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,11)=rec_awake(1,11)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,11)=rec_anes(1,11)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,11)=rec_slice(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,12)=rec_awake(1,12)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,12)=rec_anes(1,12)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,12)=rec_slice(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,13)=rec_awake(1,13)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,13)=rec_anes(1,13)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,13)=rec_slice(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,14)=rec_awake(1,14)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,14)=rec_anes(1,14)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,14)=rec_slice(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,15)=rec_awake(1,15)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,15)=rec_anes(1,15)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,15)=rec_slice(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,16)=rec_awake(1,16)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,16)=rec_anes(1,16)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,16)=rec_slice(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if convertCharsToStrings(data(a).state.type)=='awake'
%             rec_awake(1,17)=rec_awake(1,17)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='anesthesia'
%             rec_anes(1,17)=rec_anes(1,17)+1;
%         elseif convertCharsToStrings(data(a).state.type)=='slice'
%             rec_slice(1,17)=rec_slice(1,17)+1;
%         end
%     end
% end
% 
%         
% 
% %%
% a=1; anes_iso=zeros(1,17);anes_ch=zeros(1,17);anes_ureth=zeros(1,17);
% for a=1:length(data)
%     if convertCharsToStrings(data(a).state.type)=='anesthesia'
%     if data(a).PCAclus==1
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,1)=anes_iso(1,1)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,1)=anes_ch(1,1)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,1)=anes_ureth(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,2)=anes_iso(1,2)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,2)=anes_ch(1,2)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,2)=anes_ureth(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,3)=anes_iso(1,3)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,3)=anes_ch(1,3)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,3)=anes_ureth(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,4)=anes_iso(1,4)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,4)=anes_ch(1,4)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,4)=anes_ureth(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,5)=anes_iso(1,5)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,5)=anes_ch(1,5)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,5)=anes_ureth(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,6)=anes_iso(1,6)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,6)=anes_ch(1,6)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,6)=anes_ureth(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,7)=anes_iso(1,7)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,7)=anes_ch(1,7)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,7)=anes_ureth(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,8)=anes_iso(1,8)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,8)=anes_ch(1,8)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,8)=anes_ureth(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,9)=anes_iso(1,9)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,9)=anes_ch(1,9)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,9)=anes_ureth(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,10)=anes_iso(1,10)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,10)=anes_ch(1,10)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,10)=anes_ureth(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,11)=anes_iso(1,11)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,11)=anes_ch(1,11)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,11)=anes_ureth(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,12)=anes_iso(1,12)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,12)=anes_ch(1,12)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,12)=anes_ureth(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,13)=anes_iso(1,13)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,13)=anes_ch(1,13)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,13)=anes_ureth(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,14)=anes_iso(1,14)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,14)=anes_ch(1,14)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,14)=anes_ureth(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,15)=anes_iso(1,15)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,15)=anes_ch(1,15)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,15)=anes_ureth(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,16)=anes_iso(1,16)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,16)=anes_ch(1,16)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,16)=anes_ureth(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if convertCharsToStrings(data(a).state.anesthesia.type)=='isoflurane'
%             anes_iso(1,17)=anes_iso(1,17)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='chloral hydrate'
%             anes_ch(1,17)=anes_ch(1,17)+1;
%         elseif convertCharsToStrings(data(a).state.anesthesia.type)=='urethane'
%             anes_ureth(1,17)=anes_ureth(1,17)+1;
%         end
%     end
%     end
% end

        
% %%
% a=1; geno_WT=zeros(1,17);geno_park=zeros(1,17);geno_dysk=zeros(1,17); geno_app=zeros(1,17); geno_dsp=zeros(1,17);
% for a=1:length(data)
%     if data(a).PCAclus==1
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,1)=geno_WT(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,1)=geno_park(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,1)=geno_dysk(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,1)=geno_app(1,1)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,1)=geno_dsp(1,1)+1;
%         end
%     elseif data(a).PCAclus==2
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,2)=geno_WT(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,2)=geno_park(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,2)=geno_dysk(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,2)=geno_app(1,2)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,2)=geno_dsp(1,2)+1;
%         end
%     elseif data(a).PCAclus==3
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,3)=geno_WT(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,3)=geno_park(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,3)=geno_dysk(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,3)=geno_app(1,3)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,3)=geno_dsp(1,3)+1;
%         end
%     elseif data(a).PCAclus==4
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,4)=geno_WT(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,4)=geno_park(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,4)=geno_dysk(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,4)=geno_app(1,4)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,4)=geno_dsp(1,4)+1;
%         end
%     elseif data(a).PCAclus==5
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,5)=geno_WT(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,5)=geno_park(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,5)=geno_dysk(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,5)=geno_app(1,5)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,5)=geno_dsp(1,5)+1;
%         end
%     elseif data(a).PCAclus==6
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,6)=geno_WT(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,6)=geno_park(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,6)=geno_dysk(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,6)=geno_app(1,6)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,6)=geno_dsp(1,6)+1;
%         end
%     elseif data(a).PCAclus==7
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,7)=geno_WT(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,7)=geno_park(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,7)=geno_dysk(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,7)=geno_app(1,7)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,7)=geno_dsp(1,7)+1;
%         end
%     elseif data(a).PCAclus==8
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,8)=geno_WT(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,8)=geno_park(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,8)=geno_dysk(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,8)=geno_app(1,8)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,8)=geno_dsp(1,8)+1;
%         end
%     elseif data(a).PCAclus==9
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,9)=geno_WT(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,9)=geno_park(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,9)=geno_dysk(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,9)=geno_app(1,9)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,9)=geno_dsp(1,9)+1;
%         end
%     elseif data(a).PCAclus==10
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,10)=geno_WT(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,10)=geno_park(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,10)=geno_dysk(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,10)=geno_app(1,10)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,10)=geno_dsp(1,10)+1;
%         end
%     elseif data(a).PCAclus==11
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,11)=geno_WT(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,11)=geno_park(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,11)=geno_dysk(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,11)=geno_app(1,11)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,11)=geno_dsp(1,11)+1;
%         end
%     elseif data(a).PCAclus==12
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,12)=geno_WT(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,12)=geno_park(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,12)=geno_dysk(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,12)=geno_app(1,12)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,12)=geno_dsp(1,12)+1;
%         end
%     elseif data(a).PCAclus==13
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,13)=geno_WT(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,13)=geno_park(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,13)=geno_dysk(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,13)=geno_app(1,13)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,13)=geno_dsp(1,13)+1;
%         end
%     elseif data(a).PCAclus==14
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,14)=geno_WT(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,14)=geno_park(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,14)=geno_dysk(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,14)=geno_app(1,14)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,14)=geno_dsp(1,14)+1;
%         end
%     elseif data(a).PCAclus==15
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,15)=geno_WT(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,15)=geno_park(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,15)=geno_dysk(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,15)=geno_app(1,15)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,15)=geno_dsp(1,15)+1;
%         end
%     elseif data(a).PCAclus==16
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,16)=geno_WT(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,16)=geno_park(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,16)=geno_dysk(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,16)=geno_app(1,16)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,16)=geno_dsp(1,16)+1;
%         end
%     elseif data(a).PCAclus==17
%         if convertCharsToStrings(data(a).traits.genotype)=='WT'
%             geno_WT(1,17)=geno_WT(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='parkinsonian'
%             geno_park(1,17)=geno_park(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dyskinetic'
%             geno_dysk(1,17)=geno_dysk(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='app/ps1'
%             geno_app(1,17)=geno_app(1,17)+1;
%         elseif convertCharsToStrings(data(a).traits.genotype)=='dsp4'
%             geno_dsp(1,17)=geno_dsp(1,17)+1;
%         end
%         end
%     end
%   


%%
a=1; geno_WT=zeros(1,17);geno_dbh=zeros(1,17);geno_gat=zeros(1,17); geno_th=zeros(1,17);
for a=1:length(data)
    if data(a).PCAclus==1
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
    elseif data(a).PCAclus==2
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
    elseif data(a).PCAclus==3
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
    elseif data(a).PCAclus==4
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
    elseif data(a).PCAclus==5
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
    elseif data(a).PCAclus==6
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
    elseif data(a).PCAclus==7
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
    elseif data(a).PCAclus==8
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
    elseif data(a).PCAclus==9
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,9)=geno_WT(1,9)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,9)=geno_dbh(1,9)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,9)=geno_gat(1,9)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,9)=geno_gat(1,9)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,9)=geno_th(1,9)+1;
        end
    elseif data(a).PCAclus==10
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,10)=geno_WT(1,10)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,10)=geno_dbh(1,10)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,10)=geno_gat(1,10)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,10)=geno_gat(1,10)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,10)=geno_th(1,10)+1;
        end
    elseif data(a).PCAclus==11
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,11)=geno_WT(1,11)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,11)=geno_dbh(1,11)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,11)=geno_gat(1,11)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,11)=geno_gat(1,11)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,11)=geno_th(1,11)+1;
        end
    elseif data(a).PCAclus==12
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,12)=geno_WT(1,12)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,12)=geno_dbh(1,12)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,12)=geno_gat(1,12)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,12)=geno_gat(1,12)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,12)=geno_th(1,12)+1;
        end
    elseif data(a).PCAclus==13
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,13)=geno_WT(1,13)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,13)=geno_dbh(1,13)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,13)=geno_gat(1,13)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,13)=geno_gat(1,13)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,13)=geno_th(1,13)+1;
        end
    elseif data(a).PCAclus==14
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,14)=geno_WT(1,14)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,14)=geno_dbh(1,14)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,14)=geno_gat(1,14)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,14)=geno_gat(1,14)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,14)=geno_th(1,14)+1;
        end
    elseif data(a).PCAclus==15
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,15)=geno_WT(1,15)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,15)=geno_dbh(1,15)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,15)=geno_gat(1,15)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,15)=geno_gat(1,15)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,15)=geno_th(1,15)+1;
        end
    elseif data(a).PCAclus==16
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,16)=geno_WT(1,16)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,16)=geno_dbh(1,16)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,16)=geno_gat(1,16)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,16)=geno_gat(1,16)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,16)=geno_th(1,16)+1;
        end
    elseif data(a).PCAclus==17
        if convertCharsToStrings(data(a).traits.genotype)=='WT'
            geno_WT(1,17)=geno_WT(1,17)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='DBH-cre'
            geno_dbh(1,17)=geno_dbh(1,17)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='Gad2-Ires-Cre'
            geno_gat(1,17)=geno_gat(1,17)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='VGAT-cre'
            geno_gat(1,17)=geno_gat(1,17)+1;
        elseif convertCharsToStrings(data(a).traits.genotype)=='TH-Cre'
            geno_th(1,17)=geno_th(1,17)+1;
        end
        end
    end
  
