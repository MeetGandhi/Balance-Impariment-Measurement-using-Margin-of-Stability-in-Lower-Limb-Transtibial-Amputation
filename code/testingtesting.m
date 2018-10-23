test=c3dserver;
c3d=input('\nEnter path of c3d file of the required Dynamic trial (as a string in single quotes): ');
openc3d(test,0,c3d);
frames=nframes(test);
f=input('Enter Frame Rate of Dynamic Data Collection in Hz: ');
N=frames/f;     %Enter Time for Total Dynamic Data Collection in seconds
S=input('Enter Subject Number: ');
Ty=input('Enter Trial Type (Baseline:1; Training:2): ');
Tn=input('Enter Trial Number for that specific Trial Type: ');

SACR=double(get3dtarget(test,'SACR'));
SACR_X=SACR(:,1);
SACR_Y=SACR(:,2);
SACR_Z=SACR(:,3);

RILIA=double(get3dtarget(test,'RILIA'));
RILIA_X=RILIA(:,1);
RILIA_Y=RILIA(:,2);
RILIA_Z=RILIA(:,3);

LILIA=double(get3dtarget(test,'LILIA'));
LILIA_X=LILIA(:,1);
LILIA_Y=LILIA(:,2);
LILIA_Z=LILIA(:,3);

RASI=double(get3dtarget(test,'RASI'));
RASI_X=RASI(:,1);
RASI_Y=RASI(:,2);
RASI_Z=RASI(:,3);

LASI=double(get3dtarget(test,'LASI'));
LASI_X=LASI(:,1);
LASI_Y=LASI(:,2);
LASI_Z=LASI(:,3);

RHEE=double(get3dtarget(test,'RHEE'));
RHEE_X=RHEE(:,1);
RHEE_Y=RHEE(:,2);
RHEE_Z=RHEE(:,3);

RTOE=double(get3dtarget(test,'RTOE'));
RTOE_X=RTOE(:,1);
RTOE_Y=RTOE(:,2);
RTOE_Z=RTOE(:,3);

LHEE=double(get3dtarget(test,'LHEE'));
LHEE_X=LHEE(:,1);
LHEE_Y=LHEE(:,2);
LHEE_Z=LHEE(:,3);

LTOE=double(get3dtarget(test,'LTOE'));
LTOE_X=LTOE(:,1);
LTOE_Y=LTOE(:,2);
LTOE_Z=LTOE(:,3);

RANK=double(get3dtarget(test,'RANK'));
RANK_X=RANK(:,1);
RANK_Y=RANK(:,2);
RANK_Z=RANK(:,3);

LANK=double(get3dtarget(test,'LANK'));
LANK_X=LANK(:,1);
LANK_Y=LANK(:,2);
LANK_Z=LANK(:,3);

RANK_M=double(get3dtarget(test,'RANK_M'));
RANK_M_X=RANK_M(:,1);
RANK_M_Y=RANK_M(:,2);
RANK_M_Z=RANK_M(:,3);

LANK_M=double(get3dtarget(test,'LANK_M'));
LANK_M_X=LANK_M(:,1);
LANK_M_Y=LANK_M(:,2);
LANK_M_Z=LANK_M(:,3);

RKNEE=double(get3dtarget(test,'RKNEE'));
RKNEE_X=RKNEE(:,1);
RKNEE_Y=RKNEE(:,2);
RKNEE_Z=RKNEE(:,3);

LKNEE=double(get3dtarget(test,'LKNEE'));
LKNEE_X=LKNEE(:,1);
LKNEE_Y=LKNEE(:,2);
LKNEE_Z=LKNEE(:,3);

RKNEE_M=double(get3dtarget(test,'RKNEE_M'));
RKNEE_M_X=RKNEE_M(:,1);
RKNEE_M_Y=RKNEE_M(:,2);
RKNEE_M_Z=RKNEE_M(:,3);

LKNEE_M=double(get3dtarget(test,'LKNEE_M'));
LKNEE_M_X=LKNEE_M(:,1);
LKNEE_M_Y=LKNEE_M(:,2);
LKNEE_M_Z=LKNEE_M(:,3);

RTH_L=double(get3dtarget(test,'RTH_L'));
RTH_L_X=RTH_L(:,1);
RTH_L_Y=RTH_L(:,2);
RTH_L_Z=RTH_L(:,3);

LTH_L=double(get3dtarget(test,'LTH_L'));
LTH_L_X=LTH_L(:,1);
LTH_L_Y=LTH_L(:,2);
LTH_L_Z=LTH_L(:,3);

RTH_M=double(get3dtarget(test,'RTH_M'));
RTH_M_X=RTH_M(:,1);
RTH_M_Y=RTH_M(:,2);
RTH_M_Z=RTH_M(:,3);

LTH_M=double(get3dtarget(test,'LTH_M'));
LTH_M_X=LTH_M(:,1);
LTH_M_Y=LTH_M(:,2);
LTH_M_Z=LTH_M(:,3);

RMT=double(get3dtarget(test,'RMT'));
RMT_X=RMT(:,1);
RMT_Y=RMT(:,2);
RMT_Z=RMT(:,3);

LMT=double(get3dtarget(test,'LMT'));
LMT_X=LMT(:,1);
LMT_Y=LMT(:,2);
LMT_Z=LMT(:,3);

RCON=double(get3dtarget(test,'RCON'));
RCON_X=RCON(:,1);
RCON_Y=RCON(:,2);
RCON_Z=RCON(:,3);

LCON=double(get3dtarget(test,'LCON'));
LCON_X=LCON(:,1);
LCON_Y=LCON(:,2);
LCON_Z=LCON(:,3);

RFIB=double(get3dtarget(test,'RFIB'));
RFIB_X=RFIB(:,1);
RFIB_Y=RFIB(:,2);
RFIB_Z=RFIB(:,3);

LFIB=double(get3dtarget(test,'LFIB'));
LFIB_X=LFIB(:,1);
LFIB_Y=LFIB(:,2);
LFIB_Z=LFIB(:,3);

XCOM_X=[];
XCOM_Y=[];
XCOM_Z=[];
for i=1:length(SACR_X)
    P=[SACR(i,:);RILIA(i,:);LILIA(i,:);RASI(i,:);LASI(i,:)];
    COM=mean(P);
    XCOM_X=[XCOM_X;COM(1,1)];
    XCOM_Y=[XCOM_Y;COM(1,2)];
    XCOM_Z=[XCOM_Z;COM(1,3)];
end

COMV_X=zeros(length(SACR_X),1);
COMV_X(1,1)=(XCOM_X(2,1)-XCOM_X(1,1))*f;
COMV_X(2,1)=((XCOM_X(3,1)-XCOM_X(1,1))*f)/2.0;
COMV_X(length(SACR_X),1)=(XCOM_X(length(SACR_X),1)-XCOM_X(length(SACR_X)-1,1))*f;
COMV_X(length(SACR_X)-1,1)=((XCOM_X(length(SACR_X),1)-XCOM_X(length(SACR_X)-2,1))*f)/2.0;
for i=3:(length(SACR_X)-2)
    COMV_X(i,1)=((XCOM_X(i+2,1)-XCOM_X(i-2,1))*f)/4.0;
end

COMV_Y=zeros(length(SACR_X),1);
COMV_Y(1,1)=(XCOM_Y(2,1)-XCOM_Y(1,1))*f;
COMV_Y(2,1)=((XCOM_Y(3,1)-XCOM_Y(1,1))*f)/2.0;
COMV_Y(length(SACR_X),1)=(XCOM_Y(length(SACR_X),1)-XCOM_Y(length(SACR_X)-1,1))*f;
COMV_Y(length(SACR_X)-1,1)=((XCOM_Y(length(SACR_X),1)-XCOM_Y(length(SACR_X)-2,1))*f)/2.0;
for i=3:(length(SACR_X)-2)
    COMV_Y(i,1)=((XCOM_Y(i+2,1)-XCOM_Y(i-2,1))*f)/4.0;
end

COMV_Z=zeros(length(SACR_X),1);
COMV_Z(1,1)=(XCOM_Z(2,1)-XCOM_Z(1,1))*f;
COMV_Z(2,1)=((XCOM_Z(3,1)-XCOM_Z(1,1))*f)/2.0;
COMV_Z(length(SACR_X),1)=(XCOM_Z(length(SACR_X),1)-XCOM_Z(length(SACR_X)-1,1))*f;
COMV_Z(length(SACR_X)-1,1)=((XCOM_Z(length(SACR_X),1)-XCOM_Z(length(SACR_X)-2,1))*f)/2.0;
for i=3:(length(SACR_X)-2)
    COMV_Z(i,1)=((XCOM_Z(i+2,1)-XCOM_Z(i-2,1))*f)/4.0;
end

% XCOM=get3dtarget(test,'CentreOfMassFloor');
% COMV=get3dtarget(test,'');
% RANK_Ang=get3dtarget(test,'RAnkleAngles');
% C7=get3dtarget(test,'C7');

%spline
%A_V=readtable('DataSet11_Vicon_Nidarshan(withoutanklebrace).csv'); 
%Recent Configuration Alright
%A_V=readtable('DataSet11_Vicon_Nidarshan(withanklebrace).csv');        

%A_V=readtable('DataSet10_Vicon_Neethan(withoutanklebrace).csv'); 
%Recent Configuration Alright

%A_V=readtable('DataSet10_Vicon_Neethan(withanklebrace).csv'); 
%Recent Configuration Alright except for RTOE; set for RTOE_Z,
%MaxNumChanges to 3 instead of 2 and take the second point, however in some
%(very less: 2 out of 51 gait cycles) 
%trajectories of RTOE_Z i.e. in some gait cycle, we get only first and third
%points which leads to error.

%A_V=readtable('Manan(withoutanklebrace).csv');
%A_V=readtable('Manan(withanklebrace).csv');
%N=60; % Time for the total data collection
%f=100; % Frame Rate in Hz

% Find SACR

%SACR_X=(A_V.LPSI_X+A_V.RPSI_X)/2;
%SACR_Y=(A_V.LPSI_Y+A_V.RPSI_Y)/2;
%SACR_Z=(A_V.LPSI_Z+A_V.RPSI_Z)/2;
Time=(0:N/length(SACR_X):N-N/length(SACR_X))';
%T=table(Time,SACR_X,SACR_Y,SACR_Z);%
%A_V=[T,A_V];
%A_V=A_V(A_V.Time > 60.00,:);% Cropping table to accept data only after 60 s

%Right Foot 
TMP1=RHEE_Y-SACR_Y;
TMP2=RTOE_Y-SACR_Y;
[RHS_V,RHS_i]=findpeaks(TMP1,'MinPeakDistance',N); % The indexes of peaks to be the RHS
[RTO_V,RTO_i]=findpeaks(max(TMP2)-TMP2,'MinPeakDistance',N);% The indexes of valleys to be RTO

%Left foot
TMP3=LHEE_Y-SACR_Y;
TMP4=LTOE_Y-SACR_Y;
[LHS_V,LHS_i]=findpeaks(TMP3,'MinPeakDistance',N);% The indexes of peaks to be the LHS
[LTO_V,LTO_i]=findpeaks(max(TMP4)-TMP4,'MinPeakDistance',N);% The indexes of valleys to be RTO


hFig5=figure(5);
set(hFig5, 'Position', [0 0 2000 900])
plot(Time,TMP1);hold on;plot(Time(RHS_i),RHS_V,'*');plot(Time,TMP2);plot(Time(RTO_i),TMP2(RTO_i),'<')
plot(Time,TMP3);hold on;plot(Time(LHS_i),LHS_V,'^');plot(Time,TMP4);plot(Time(LTO_i),TMP4(LTO_i),'o')
legend('Right Heel','RHS','Right Toe','RTO','Left Heel','LHS','Left Toe','LTO');
title('HS and TO from Vicon Data');
hold off

%% Finding the Gait Cycles from Vicon Data

ctr_R_V=1;
ctr_total_V=1;

m=min([length(RHS_i),length(RTO_i),length(LHS_i),length(LTO_i)]);
% finding the right gait cycles
% for this we need to find the gait events in the order RHS LTO LHS RTO RHS

for i=1:m-1
    X_R_V=LTO_i(LTO_i<RHS_i(i+1) & LTO_i>RHS_i(i));%find an LTO btwn 2 RHS
        if(length(X_R_V)==1) % If an LTO has been found then look for an RTO
            Z_R_V=RTO_i(RTO_i<RHS_i(i+1) & RTO_i>RHS_i(i) );%find an RTO btwn 2 RHS's
                if(length(Z_R_V)==1)% If an RTO has been found, then check for an LHS between LTO and RTO 
                    Y_R_V=LHS_i(LHS_i<Z_R_V & LHS_i>X_R_V);
                        if(length(Y_R_V)==1)% If a LHS is found lying between LTO and RTO
                            RGC_t_V=[RHS_i(i)   X_R_V  Y_R_V  Z_R_V   RHS_i(i+1)];
                            GC_Right_V(ctr_R_V,1:length(RGC_t_V))= RGC_t_V(1:length(RGC_t_V));
                            ctr_R_V=ctr_R_V+1;
                        end
                end
        end
end

% Once the Right Gait Cycle is found out, we club two RGC's together
% to get a RGC and a LGC one after other
for i=2:length(GC_Right_V)
    % If the last index of the previous gait cycle is identical to the first index of the next gait cycle 
    % then club them together to get a complete gait cycle
    if(GC_Right_V(i,1)==GC_Right_V(i-1,5))
        GC_Total_V(ctr_total_V,1:5)=GC_Right_V(i-1,:);
        GC_Total_V(ctr_total_V,6:9)=GC_Right_V(i,2:5);
        ctr_total_V=ctr_total_V+1;
    end
end
        
% Extracting the Left Gait Cycle from the total Gait Cycle
GC_Left_V=GC_Total_V(:,5:9);

s=[];
z=[];
k=1;
j=1;
t1=1;
t2=1;
t3=1;
t4=1;
t=700;
g=9810;
% LegLength=mean(XCOM_Z);
% l=LegLength;
[m,n]=size(GC_Right_V);
% while k<=m
%     while j<=length(SACR_X)
%         if k>m
%             break
%         end
%         if j<GC_Right_V(1,1)
%             j=j+1;
%         end
%         if j>=GC_Right_V(k,1) && j<GC_Right_V(k,2)
%             %BoS for RHS to LTO
%             x=[RHEE_X(j,1),RTOE_X(j,1),RANK_X(j,1),LHEE_X(j,1),LTOE_X(j,1),LANK_X(j,1)];
%             y=[RHEE_Y(j,1),RTOE_Y(j,1),RANK_Y(j,1),LHEE_Y(j,1),LTOE_Y(j,1),LANK_Y(j,1)];
%             b=convhull(x,y);
%             %BoS for RHS to LTO
%             %MoS for RHS to LTO
%             xx=XCOM_X(j,1)+(COMV_X(j,1)*sqrt(l/g));
%             yy=XCOM_Y(j,1)+(COMV_Y(j,1)*sqrt(l/g));
%             [d,X,Y]=p_poly_dist(xx,yy,x,y);
%             while t1==1
%                 plot(y(b),x(b),'r-',yy,xx,'b*',y,x,'r*');
%                 hold on;
%                 t1=t1+1;
%             end
%             if j==468
%                 y=y+(4*t);
%                 yy=yy+(4*t);
%                 b=convhull(x,y);
%                 plot(y(b),x(b),'r-',yy,xx,'b*',y,x,'r*');
%                 hold on;
%             end
%             s=[s;d];
%             z=[z;j];
%             %MoS for RHS to LTO
%             j=j+1;
%         end
% 
%         if j>=GC_Right_V(k,2) && j<GC_Right_V(k,3)
%             %BoS for LTO to LHS
%             x=[RHEE_X(j,1),RTOE_X(j,1),RANK_X(j,1)];
%             y=[RHEE_Y(j,1),RTOE_Y(j,1),RANK_Y(j,1)];
%             y=y+t;
%             b=convhull(x,y);
%             %BoS for LTO to LHS
%             %MoS for LTO to LHS
%             xx=XCOM_X(j,1)+(COMV_X(j,1)*sqrt(l/g));
%             yy=XCOM_Y(j,1)+(COMV_Y(j,1)*sqrt(l/g));
%             yy=yy+(t);
%             [d,X,Y]=p_poly_dist(xx,yy,x,y);
%             while t2==1
%                 plot(y(b),x(b),'r-',yy,xx,'b*',y,x,'r*');
%                 hold on;
%                 t2=t2+1;
%             end
%             s=[s;d];
%             z=[z;j];
%             %MoS for LTO to LHS
%             j=j+1;
%         end
% 
%         if j>=GC_Right_V(k,3) && j<GC_Right_V(k,4)
%             %BoS for LHS to RTO
%             x=[RHEE_X(j,1),RTOE_X(j,1),RANK_X(j,1),LHEE_X(j,1),LTOE_X(j,1),LANK_X(j,1)];
%             y=[RHEE_Y(j,1),RTOE_Y(j,1),RANK_Y(j,1),LHEE_Y(j,1),LTOE_Y(j,1),LANK_Y(j,1)];
%             y=y+(2*t);
%             b=convhull(x,y);
%             %BoS for LHS to RTO
%             %MoS for LHS to RTO
%             xx=XCOM_X(j,1)+(COMV_X(j,1)*sqrt(l/g));
%             yy=XCOM_Y(j,1)+(COMV_Y(j,1)*sqrt(l/g));
%             yy=yy+(2*t);
%             [d,X,Y]=p_poly_dist(xx,yy,x,y);
%             while t3==1
%                 plot(y(b),x(b),'r-',yy,xx,'b*',y,x,'r*');
%                 hold on;
%                 t3=t3+1;
%             end
%             s=[s;d];
%             z=[z;j];
%             %MoS for LHS to RTO
%             j=j+1;
%         end
%         
%         if j>=GC_Right_V(k,4) && j<GC_Right_V(k,5)
%             %BoS for RTO to RHS
%             x=[LHEE_X(j,1),LTOE_X(j,1),LANK_X(j,1)];
%             y=[LHEE_Y(j,1),LTOE_Y(j,1),LANK_Y(j,1)];
%             y=y+(3*t);
%             b=convhull(x,y);
%             %BoS for RTO to RHS
%             %MoS for RTO to RHS
%             xx=XCOM_X(j,1)+(COMV_X(j,1)*sqrt(l/g));
%             yy=XCOM_Y(j,1)+(COMV_Y(j,1)*sqrt(l/g));
%             yy=yy+(3*t);
%             [d,X,Y]=p_poly_dist(xx,yy,x,y);
%             while t4==1
%                 plot(y(b),x(b),'r-',yy,xx,'b*',y,x,'r*');
%                 hold on;
%                 t4=t4+1;
%             end
%             s=[s;d];
%             z=[z;j];
%             %MoS for RTO to RHS
%             j=j+1;
%         end
%         
%         if j>=GC_Right_V(k,5)
%             k=k+1;
%             %j=j-1;
%         end
%         disp(j)
%     end
% end
% hold off;
% figure
% plot(z,s);
