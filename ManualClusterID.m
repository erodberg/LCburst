% a=1;
% for a=1:length(data)
%  a=1+length(ClusterID);
%  for a=(length(ClusterID)+1):length(data)


clear aa; clear samples;
[aa]=find(ClusterID==1);
% [aa]=find(fix==0);
%[aa]=newinclude;
b=1
 for b=1:length(aa)
     a=aa(b)

clf; clear N, clear ptsx; clear ptxy;
%get prebinned data from data structure
N = data(a).scatter.N;
ptsx = data(a).scatter.ptsx;
ptsy = data(a).scatter.ptsy;

%plot return density plot
%figure()
imagesc(ptsx, ptsy, N);
drawnow;
axis equal;
set(gca, 'XLim', ptsx([1 end]), 'YLim', ptsy([1 end]), 'YDir', 'normal');
ylabel({'log(ISIn+1)'});
xlabel({'log (ISIn)'});
title({"Unit " + a });


%prompt for cluster ID type
prompt = "What is the cluster assignment?" + ...
    "\n 1=  boomerang " + ...
    "\n 2=  triangle " + ...
    "\n 4=   BUG " + ...
    "\n 5=  point and 2 rays" + ...
    "\n 6=  middle oval big" + ...
    "\n 8=  diagonal bottom L-R" + ...
    "\n 11=  point " + ...
    "\n 12=  2 groups" + ...
    "\n 13=  3 pointed triangle" + ...
    "\n 14=  circle and diagonal" + ...
    "\n 16=  down triangle" + ...
    "\n 17=  criss cross" + ...
    "\n 10=  WEIRD" + ...
    "\n 0 = unknown" + ...
    "\n" ;
data(a).ManualCluster = input(prompt)

%  if input(prompt)=='e'
%      return
%  end


%save('ClusterID')

 end

 %%
 count=zeros(11,1);
 a=1;
 for a=1:length(data)

         if data(a).ManualCluster==1
         count(1,1)=count(1,1)+1;
         elseif data(a).ManualCluster==2
         count(2,1)=count(2,1)+1;
     elseif data(a).ManualCluster==3
         count(3,1)=count(3,1)+1;
     elseif data(a).ManualCluster==4
         count(4,1)=count(4,1)+1;
     elseif data(a).ManualCluster==5
         count(5,1)=count(5,1)+1;
     elseif data(a).ManualCluster==6
         count(6,1)=count(6,1)+1;
     elseif data(a).ManualCluster==7
         count(7,1)=count(7,1)+1;
     elseif data(a).ManualCluster==8
         count(8,1)=count(8,1)+1;
     elseif data(a).ManualCluster==9
         count(9,1)=count(9,1)+1;
     elseif data(a).ManualCluster==10
         count(10,1)=count(10,1)+1;
     elseif data(a).ManualCluster==11
         count(11,1)=count(11,1)+1;
         end
     end



