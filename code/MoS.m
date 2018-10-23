A_V= readtable('DataSet10_Vicon_Neethan(withanklebrace)_edited.csv');
%A_V=readtable('DataSet11_Vicon_Nidarshan(withoutanklebrace)_edited.csv');

% Find SACR
N=200; % Time for the total data collection 200 for Nidarshan
SACR_X=(A_V.LPSI_X+A_V.RPSI_X)/2;
SACR_Y=(A_V.LPSI_Y+A_V.RPSI_Y)/2;
SACR_Z=(A_V.LPSI_Z+A_V.RPSI_Z)/2;
Time=(0:N/size(A_V,1):N-N/size(A_V,1))';
T=table(Time,SACR_X,SACR_Y,SACR_Z);%
A_V=[T,A_V];
%A_V=A_V(A_V.Time > 60.00,:);% Cropping table to accept data only after 60 s

%Right Foot 
TMP1=A_V.RHEE_X-A_V.SACR_X;
TMP2=A_V.RTOE_X-A_V.SACR_X;
[RHS_V,RHS_i]=findpeaks(TMP1,'MinPeakDistance',200); % The indexes of peaks to be the RHS
[RTO_V,RTO_i]=findpeaks(max(TMP2)-TMP2,'MinPeakDistance',200);% The indexes of valleys to be RTO

%Left foot
TMP3=A_V.LHEE_X-A_V.SACR_X;
TMP4=A_V.LTOE_X-A_V.SACR_X;
[LHS_V,LHS_i]=findpeaks(TMP3,'MinPeakDistance',200);% The indexes of peaks to be the LHS
[LTO_V,LTO_i]=findpeaks(max(TMP4)-TMP4,'MinPeakDistance',200);% The indexes of valleys to be RTO


hFig5=figure(5);
set(hFig5, 'Position', [0 0 2000 900])
plot(A_V.Time,TMP1);hold on;plot(A_V.Time(RHS_i),RHS_V,'*');plot(A_V.Time,TMP2);plot(A_V.Time(RTO_i),TMP2(RTO_i),'<')
plot(A_V.Time,TMP3);hold on;plot(A_V.Time(LHS_i),LHS_V,'^');plot(A_V.Time,TMP4);plot(A_V.Time(LTO_i),TMP4(LTO_i),'o')
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
g=9810;
l=990;
[m,n]=size(GC_Right_V);
while k<=m
    while j<=height(A_V)
        if k>m
            break
        end
        if j<GC_Right_V(1,1)
            j=j+1;
        end
        if j>=GC_Right_V(k,1) && j<GC_Right_V(k,2)
            %BoS for RHS to LTO
            x=[A_V.RHEE_X(j,1),A_V.RTOE_X(j,1),A_V.RANK_X(j,1),A_V.LHEE_X(j,1),A_V.LTOE_X(j,1),A_V.LANK_X(j,1)];
            y=[A_V.RHEE_Y(j,1),A_V.RTOE_Y(j,1),A_V.RANK_Y(j,1),A_V.LHEE_Y(j,1),A_V.LTOE_Y(j,1),A_V.LANK_Y(j,1)];
            b=convhull(x,y);
            %BoS for RHS to LTO
            %MoS for RHS to LTO
            xx=A_V.XCOM_X(j,1)+(A_V.COMV_X(j,1)*sqrt(l/g));
            yy=A_V.XCOM_Y(j,1)+(A_V.COMV_Y(j,1)*sqrt(l/g));
            [d,X,Y]=p_poly_dist(xx,yy,x,y);
            s=[s;d];
            z=[z;j];
            %MoS for RHS to LTO
            j=j+1;
        end

        if j>=GC_Right_V(k,2) && j<GC_Right_V(k,3)
            %BoS for LTO to LHS
            x=[A_V.RHEE_X(j,1),A_V.RTOE_X(j,1),A_V.RANK_X(j,1)];
            y=[A_V.RHEE_Y(j,1),A_V.RTOE_Y(j,1),A_V.RANK_Y(j,1)];
            b=convhull(x,y);
            %BoS for LTO to LHS
            %MoS for LTO to LHS
            xx=A_V.XCOM_X(j,1)+(A_V.COMV_X(j,1)*sqrt(l/g));
            yy=A_V.XCOM_Y(j,1)+(A_V.COMV_Y(j,1)*sqrt(l/g));
            [d,X,Y]=p_poly_dist(xx,yy,x,y);
            s=[s;d];
            z=[z;j];
            %MoS for LTO to LHS
            j=j+1;
        end

        if j>=GC_Right_V(k,3) && j<GC_Right_V(k,4)
            %BoS for LHS to RTO
            x=[A_V.RHEE_X(j,1),A_V.RTOE_X(j,1),A_V.RANK_X(j,1),A_V.LHEE_X(j,1),A_V.LTOE_X(j,1),A_V.LANK_X(j,1)];
            y=[A_V.RHEE_Y(j,1),A_V.RTOE_Y(j,1),A_V.RANK_Y(j,1),A_V.LHEE_Y(j,1),A_V.LTOE_Y(j,1),A_V.LANK_Y(j,1)];
            b=convhull(x,y);
            %BoS for LHS to RTO
            %MoS for LHS to RTO
            xx=A_V.XCOM_X(j,1)+(A_V.COMV_X(j,1)*sqrt(l/g));
            yy=A_V.XCOM_Y(j,1)+(A_V.COMV_Y(j,1)*sqrt(l/g));
            [d,X,Y]=p_poly_dist(xx,yy,x,y);
            s=[s;d];
            z=[z;j];
            %MoS for LHS to RTO
            j=j+1;
        end
        
        if j>=GC_Right_V(k,4) && j<GC_Right_V(k,5)
            %BoS for RTO to RHS
            x=[A_V.LHEE_X(j,1),A_V.LTOE_X(j,1),A_V.LANK_X(j,1)];
            y=[A_V.LHEE_Y(j,1),A_V.LTOE_Y(j,1),A_V.LANK_Y(j,1)];
            b=convhull(x,y);
            %BoS for RTO to RHS
            %MoS for RTO to RHS
            xx=A_V.XCOM_X(j,1)+(A_V.COMV_X(j,1)*sqrt(l/g));
            yy=A_V.XCOM_Y(j,1)+(A_V.COMV_Y(j,1)*sqrt(l/g));
            [d,X,Y]=p_poly_dist(xx,yy,x,y);
            s=[s;d];
            z=[z;j];
            %MoS for RTO to RHS
            j=j+1;
        end
        
        if j>=GC_Right_V(k,5)
            k=k+1;
            %j=j-1;
        end
        disp(j)
    end
end
figure
plot(z,s);


