a=1;
for a=1:length(data)
data(a).PythonKmean3=NaN;
end
%%%
a=1;
for a=1:length(kmeansIDcenter2clus)
if kmeansIDcenter2clus(a)==0
kmeansIDcenter2clus(a)=2
end
end
a=1;
for a=1:length(data)
data(a).PythonKmean3=NaN;
end
a=1;
n=1;
for a=1:length(data)
if data(a).ManualCluster>=1
data(a).PythonKmean3=kmeansIDcenter2clus(n)
n=n+1
end
end

%%%

a=1;
n=1;
for a=1:length(data)
    if data(a).ManualCluster>=1
        data(a).PythonKmean3=kmeansIDcenter2clus(n)
        n=n+1
    end
end