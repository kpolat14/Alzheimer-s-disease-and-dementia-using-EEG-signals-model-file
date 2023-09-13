clc;

clear all;

uz=[];
uz1=[];
uz2=[];
uz3=[];
uz4=[];
uz5=[];
uz6=[];
uz7=[];
uz8=[];
uz9=[];
uz10=[];

y1=0;
y2=0;
y3=0;
y4=0;
y5=0;
y6=0;
y7=0;
y8=0;
y9=0;
y10=0;
    

load spiral_0;
load spiral_1;

A=spiral_0(:,1:2);
 

B=spiral_1(:,1:2);


data=[spiral_0(:,1:2)
    spiral_1(:,1:2)];


spiral_0=spiral_0(:,1:2);
 spiral_1=spiral_1(:,1:2);
 
 [center,U,obj_fcn] = fcm(data,2);

     
 c=center;

      
   d_mean_1=mean(spiral_0,1);
      d_mean_2=mean(spiral_1,1);
      
      
      
 [n,m]=size(spiral_0);
   
 
  
 for i=1:m,
 fark_1(i,1)=(d_mean_1(1,i)/c(1,i));
 end
 
fark_1=fark_1';




for i=1:m,
 fark_2(i,1)=(d_mean_2(1,i)/c(2,i));
 end
 
fark_2=fark_2';




for i=1:m,

spiral_0_fcm_weighted(:,i)=(spiral_0(:,i)*fark_1(:,i));

end


for i=1:m,

  spiral_1_fcm_weighted(:,i)=(spiral_1(:,i)*fark_2(:,i));

end




  spiral_full_fcm_weighted_full=[spiral_0_fcm_weighted
    spiral_1_fcm_weighted];
                            


figure;

subplot(211);

plot(A(:,1),A(:,2),'bh',B(:,1),B(:,2),'rs');
xlabel('First attribute of dataset'); ylabel('Second attribute of dataset');
grid on;
title('The class distribution of raw two spiral dataset without any normalization');

subplot(212);

plot(spiral_0_fcm_weighted(:,1),spiral_0_fcm_weighted(:,2),'bh',spiral_1_fcm_weighted(:,1),spiral_1_fcm_weighted(:,2),'rs');


xlabel('First attribute of dataset'); ylabel('Second attribute of dataset');
title('The class distribution of weighted two spiral dataset by FCM based attribute weighting');


grid on;



                                
% 
% save spiral_full_fcm_weighted_full;
% 
% save spiral_0_fcm_weighted;
% 
% 
% save spiral_1_fcm_weighted;


% f_ort=mean(fark,1);
% 
%     
% % özellik secme iþlemi
% 
%  F_secilen(1,1)=0; 
%  
%  F_ignore(1,1)=0;
%  
%   a=1;
%   b=1;
%     
%       for z=1:m,
%           
%           if fark(z)<=f_ort,
%               F_secilen(1,a)=z;
%               a=a+1;
%                 else
%               F_ignore(1,b)=z;
%               b=b+1;
%           end
%       end
% 
%       
%          [g,h]=size(F_secilen);
%          
%          
%          
%       for o=1:h,
%           
%      bupa_fcm(:,o)=data(:,F_secilen(1,o));
%       end
% 
% 
%       save bupa_fcm;
% 
% 
% 
%       
%  
% 
% 
%  
%  
%  
%  
%  
%  
%  
%  
%  
% 
%      
%  
%  
%  
%      
%         