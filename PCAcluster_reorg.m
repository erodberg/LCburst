%% change number for assigned clusters 
% %need to change 2 and 3 to 1 
% %old / new
% % 1 / 25 / 5
% % 2 / 21 / 1
% % 3 / 22 / 2
% % 4 / 26 / 6
% % 5 / 32 / 12
% % 6 / 33 / 13
% % 8 / 34 / 14
% % 9 / 23 / 3
% % 10 / 28 / 8
% % 11 / 24 / 4
% % 12 / 35 / 15
% % 13 / 29 / 9
% % 14 / 36 / 16
% % 15 / 30 / 10
% % 16 / 31 / 11

% % 7 / 27 / 7
% % 17 / 37 / 17

% 1, 4, 7, 10, 12, 14, 17
% 5, 6, 7,  8, 15, 16, 17
% 4, 2, 4,  2,  4,  2,  3

a=1;
for a=1:length(data)
    if data(a).PCAclus==25
        data(a).PCAclus=5;
    elseif data(a).PCAclus == 21
        data(a).PCAclus=1;
    elseif data(a).PCAclus == 22
        data(a).PCAclus=2;
    elseif data(a).PCAclus == 26
        data(a).PCAclus=6;
    elseif data(a).PCAclus == 32
        data(a).PCAclus=12;
    elseif data(a).PCAclus == 33
        data(a).PCAclus=13;

    elseif data(a).PCAclus == 34
        data(a).PCAclus=14;
    elseif data(a).PCAclus == 23
        data(a).PCAclus=3;
    elseif data(a).PCAclus == 28
        data(a).PCAclus=8;
    elseif data(a).PCAclus == 24
        data(a).PCAclus=4;
    elseif data(a).PCAclus == 35
        data(a).PCAclus=15;
    elseif data(a).PCAclus == 29
        data(a).PCAclus=9;
    elseif data(a).PCAclus == 36
        data(a).PCAclus=16;
    elseif data(a).PCAclus == 30
        data(a).PCAclus=10;
    elseif data(a).PCAclus == 31
        data(a).PCAclus=11;

    end
end

% 
% a=1;
% for a=1:length(data)
%     if data(a).PCAclus==1 
%         data(a).PCAclus=25;
%     elseif data(a).PCAclus == 2
%         data(a).PCAclus=21;
%     elseif data(a).PCAclus == 3
%         data(a).PCAclus=22;
%     elseif data(a).PCAclus == 4
%         data(a).PCAclus=26;
%     elseif data(a).PCAclus == 5
%         data(a).PCAclus=32;
%     elseif data(a).PCAclus == 6
%         data(a).PCAclus=33;
% 
%     elseif data(a).PCAclus == 8
%         data(a).PCAclus=34;
%     elseif data(a).PCAclus == 9
%         data(a).PCAclus=23;
%     elseif data(a).PCAclus == 10
%         data(a).PCAclus=28;
%     elseif data(a).PCAclus == 11
%         data(a).PCAclus=24;
%     elseif data(a).PCAclus == 12
%         data(a).PCAclus=35;
%     elseif data(a).PCAclus == 13
%         data(a).PCAclus=29;
%     elseif data(a).PCAclus == 14
%         data(a).PCAclus=36;
%     elseif data(a).PCAclus == 15
%         data(a).PCAclus=30;
%     elseif data(a).PCAclus == 16
%         data(a).PCAclus=31;
% 
%     end
% end

%%

a=1;
for a=1:length(data)
    if data(a).PCAclus ==1
        ClustNum(1,1)=ClustNum(1,1)+1;
    elseif data(a).PCAclus ==2
        ClustNum(2,1)=ClustNum(2,1)+1;
    elseif data(a).PCAclus ==3
        ClustNum(3,1)=ClustNum(3,1)+1;
    elseif data(a).PCAclus ==4
        ClustNum(4,1)=ClustNum(4,1)+1;
    elseif data(a).PCAclus ==5
        ClustNum(5,1)=ClustNum(5,1)+1;
    elseif data(a).PCAclus ==6
        ClustNum(6,1)=ClustNum(6,1)+1;
    elseif data(a).PCAclus ==7
        ClustNum(7,1)=ClustNum(7,1)+1;
    elseif data(a).PCAclus ==8
        ClustNum(8,1)=ClustNum(8,1)+1;
    elseif data(a).PCAclus ==9
        ClustNum(9,1)=ClustNum(9,1)+1;
    elseif data(a).PCAclus ==10
        ClustNum(10,1)=ClustNum(10,1)+1;
    elseif data(a).PCAclus ==11
        ClustNum(11,1)=ClustNum(11,1)+1;
    elseif data(a).PCAclus ==12
        ClustNum(12,1)=ClustNum(12,1)+1;
    elseif data(a).PCAclus ==13
        ClustNum(13,1)=ClustNum(13,1)+1;
    elseif data(a).PCAclus ==14
        ClustNum(14,1)=ClustNum(14,1)+1;
    elseif data(a).PCAclus ==15
        ClustNum(15,1)=ClustNum(15,1)+1;
    elseif data(a).PCAclus ==16
        ClustNum(16,1)=ClustNum(16,1)+1;
    elseif data(a).PCAclus ==17
        ClustNum(17,1)=ClustNum(17,1)+1;
    end
end

%%
a=1;b=1;
for a=1:length(data)
    if data(a).PCAclus>=1
        ClustID(b)=data(a).PCAclus
        b=b+1;
    end
end