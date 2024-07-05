%check manual cluster 

clear aa; clear samples;
[aa]=find(ClusterID==11);
sgtitle('Cluster 8');
b=1;

for b=1:length(aa)
    clf; clear N, clear ptsx; clear ptxy;
a=aa(b);
% N = dataCopyTrim(a).scatter.N;
% ptsx = dataCopyTrim(a).scatter.ptsx;
% ptsy = dataCopyTrim(a).scatter.ptsy;
% imagesc(ptsx, ptsy, N);

x=log(dataCopyTrim(a).scatter.ISIn_x);
y=log(dataCopyTrim(a).scatter.ISIn1_y);
PTS = linspace(-5, 5, 41);
dataCopyTrim(a).scatter.pts=PTS;
n=histcounts2(y(:), x(:), PTS, PTS);
imagesc(PTS, PTS, n);

drawnow;
axis equal;
set(gca, 'XLim', PTS([1 end]), 'YLim', PTS([1 end]), 'YDir', 'normal');
ylabel({'log(ISIn+1)'});
xlabel({'log (ISIn)'});
title({"Unit " + a });


%prompt for cluster ID type
prompt2 = "Agree with assignment" + ...
    "\n 1= yes" + ...
    "\n 2= no"+...
    "\n" ;
ClusterAgree(b) = input(prompt2)

b=b+1;
end
