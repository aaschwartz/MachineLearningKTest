% Name: AARON SCHWARTZ
% Number: 000760622
% Project 1
close all;
clear all;
clc;

T= readtable('kmtest.csv');
data=table2array(T);
k=input('Input k value: ');

n=size(data(:,2));
m=size(data(2,:));
figure(1)
plot(data(:,1),data(:,2),'.')
axis([0 20 0 20]);

MAXx=max(data(:,1));
MINx=min(data(:,1));
MAXy=max(data(:,2));
MINy=min(data(:,2));
distance12=.5;
distance23=.5;
distance13=.5;
distance24=.5;
distance14=.5;
distance34=.5;
distance15=.5;
distance25=.5;
distance35=.5;
distance45=.5;
if k==2
while distance12<=9
for j=1:k
     c(j,:)=[MINx+(MAXx-MINx)*rand(1,1) MINy+ (MAXy-MINy)*rand(1,1)];
for i=1:n(1)
   dist(i,:)=((((data(i,1)-c(j,1)).^2)+(data(i,2)-c(j,2)).^2).^(1/2));  
end
   D(:,j)=[dist];
end
distance12 = (((c(1,1)-c(2,1)).^2+(c(1,2)-c(2,2)).^2).^(1/2));
end
elseif k==3
 while distance23<=7 || distance13<=7 || distance12<=7
for j=1:k
     c(j,:)=[MINx+(MAXx-MINx)*rand(1,1) MINy+ (MAXy-MINy)*rand(1,1)];
for i=1:n(1)
   dist(i,:)=((((data(i,1)-c(j,1)).^2)+(data(i,2)-c(j,2)).^2).^(1/2));  
end
   D(:,j)=[dist];
end
distance12 = (((c(1,1)-c(2,1)).^2+(c(1,2)-c(2,2)).^2).^(1/2));
distance13 = (((c(1,1)-c(3,1)).^2+(c(1,2)-c(3,2)).^2).^(1/2));
distance23 = (((c(2,1)-c(3,1)).^2+(c(2,2)-c(3,2)).^2).^(1/2));
 end
elseif k==4
     while distance34<=5 || distance12<=5 || distance13 <=5 || distance23<=5 || distance14<=5 ||distance24<=5 
for j=1:k
     c(j,:)=[MINx+(MAXx-MINx)*rand(1,1) MINy+ (MAXy-MINy)*rand(1,1)];
for i=1:n(1)
   dist(i,:)=((((data(i,1)-c(j,1)).^2)+(data(i,2)-c(j,2)).^2).^(1/2));  
end
   D(:,j)=[dist];
end
distance12 = (((c(1,1)-c(2,1)).^2+(c(1,2)-c(2,2)).^2).^(1/2));
distance13 = (((c(1,1)-c(3,1)).^2+(c(1,2)-c(3,2)).^2).^(1/2));
distance23 = (((c(2,1)-c(3,1)).^2+(c(2,2)-c(3,2)).^2).^(1/2));
distance14 = (((c(1,1)-c(4,1)).^2+(c(1,2)-c(4,2)).^2).^(1/2));
distance24 = (((c(2,1)-c(4,1)).^2+(c(2,2)-c(4,2)).^2).^(1/2));
distance34 = (((c(3,1)-c(4,1)).^2+(c(3,2)-c(4,2)).^2).^(1/2));
     end
elseif k==5
 while distance34<=3 || distance12<=3 || distance13 <=3 || distance23<=3 || distance14<=3 ||distance24<=3 || distance15<=3 || distance25<=3 || distance35 <=3 || distance45<=3
for j=1:k
     c(j,:)=[MINx+(MAXx-MINx)*rand(1,1) MINy+ (MAXy-MINy)*rand(1,1)];
for i=1:n(1)
   dist(i,:)=((((data(i,1)-c(j,1)).^2)+(data(i,2)-c(j,2)).^2).^(1/2));  
end
   D(:,j)=[dist];
end
distance12 = (((c(1,1)-c(2,1)).^2+(c(1,2)-c(2,2)).^2).^(1/2));
distance13 = (((c(1,1)-c(3,1)).^2+(c(1,2)-c(3,2)).^2).^(1/2));
distance23 = (((c(2,1)-c(3,1)).^2+(c(2,2)-c(3,2)).^2).^(1/2));
distance14 = (((c(1,1)-c(4,1)).^2+(c(1,2)-c(4,2)).^2).^(1/2));
distance24 = (((c(2,1)-c(4,1)).^2+(c(2,2)-c(4,2)).^2).^(1/2));
distance34 = (((c(3,1)-c(4,1)).^2+(c(3,2)-c(4,2)).^2).^(1/2));
distance15 = (((c(1,1)-c(5,1)).^2+(c(1,2)-c(5,2)).^2).^(1/2));
distance25 = (((c(2,1)-c(5,1)).^2+(c(2,2)-c(5,2)).^2).^(1/2));
distance35 = (((c(3,1)-c(5,1)).^2+(c(3,2)-c(5,2)).^2).^(1/2));
distance45 = (((c(4,1)-c(5,1)).^2+(c(4,2)-c(5,2)).^2).^(1/2));
 end
end


[value index] = min(D');


I=index';
   figure(2)
   hold on
   axis([0 20 0 20]);
   if k==1
   plot(data(I==1,1),data(I==1,2),'ko');
   plot(c(1,1),c(1,2),'k+','MarkerSize',20)
   elseif k==2
   plot(data(I==1,1),data(I==1,2),'ko');
   plot(c(1,1),c(1,2),'k+','MarkerSize',20)
   plot(data(I==2,1),data(I==2,2),'go');
   plot(c(2,1),c(2,2),'g+','MarkerSize',20)
   elseif k==3
   plot(data(I==1,1),data(I==1,2),'ko');
   plot(c(1,1),c(1,2),'k+','MarkerSize',20)
   plot(data(I==2,1),data(I==2,2),'go');
   plot(c(2,1),c(2,2),'g+','MarkerSize',20)
   plot(data(I==3,1),data(I==3,2),'bo');
   plot(c(3,1),c(3,2),'b+','MarkerSize',20)
   elseif k ==4
   plot(data(I==1,1),data(I==1,2),'ko');
   plot(c(1,1),c(1,2),'k+','MarkerSize',20)
   plot(data(I==2,1),data(I==2,2),'go');
   plot(c(2,1),c(2,2),'g+','MarkerSize',20)
   plot(data(I==3,1),data(I==3,2),'bo');
   plot(c(3,1),c(3,2),'b+','MarkerSize',20)   
   plot(data(I==4,1),data(I==4,2),'mo');
   plot(c(4,1),c(4,2),'m+','MarkerSize',20)
   elseif k == 5
   plot(data(I==1,1),data(I==1,2),'ko');
   plot(c(1,1),c(1,2),'k+','MarkerSize',20)
   plot(data(I==2,1),data(I==2,2),'go');
   plot(c(2,1),c(2,2),'g+','MarkerSize',20)
   plot(data(I==3,1),data(I==3,2),'bo');
   plot(c(3,1),c(3,2),'b+','MarkerSize',20)   
   plot(data(I==4,1),data(I==4,2),'mo');
   plot(c(4,1),c(4,2),'m+','MarkerSize',20) 
   plot(data(I==5,1),data(I==5,2),'ro');
   plot(c(5,1),c(5,2),'r+','MarkerSize',20) 
   else
       disp("Break");
       close all;
   end

