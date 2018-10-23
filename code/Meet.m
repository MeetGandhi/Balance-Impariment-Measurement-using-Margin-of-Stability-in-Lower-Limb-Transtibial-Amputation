%% Verification using Vicon DATA
 
% A_V= readtable('DataSet10_Vicon_Neethan(withoutanklebrace)_edited.csv');
A_V=readtable('DataSet11_Vicon_Nidarshan(withoutanklebrace)_edited.csv');

% Find SACR
N=200; % Time for the total data collection 200 for Nidarshan
SACR_X=(A_V.LPSI_X+A_V.RPSI_X)/2;
SACR_Y=(A_V.LPSI_Y+A_V.RPSI_Y)/2;
SACR_Z=(A_V.LPSI_Z+A_V.RPSI_Z)/2;
Time=(0:N/size(A_V,1):N-N/size(A_V,1))';
T=table(Time,SACR_X,SACR_Y,SACR_Z);%
A_V=[T,A_V];
A_V=A_V(A_V.Time > 60.00,:);% Cropping table to accept data only after 60 s

%Right Foot 
TMP1=A_V.RHEE_Z-A_V.SACR_Z;
TMP2=A_V.RTOE_Z-A_V.SACR_Z;
[RHS_V,RHS_i]=findpeaks(TMP1,'MinPeakDistance',200); % The indexes of peaks to be the RHS
[RTO_V,RTO_i]=findpeaks(max(TMP2)-TMP2,'MinPeakDistance',200);% The indexes of valleys to be RTO

%Left foot
TMP3=A_V.LHEE_Z-A_V.SACR_Z;
TMP4=A_V.LTOE_Z-A_V.SACR_Z;
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


%% Getting the Gait parameters from the vicon data 
% Intra Limb Parameters
    %Right Foot
    % Right Gait Cycle time
    RGC_t_V=((A_V.Time(GC_Total_V(:,5))-A_V.Time(GC_Total_V(:,1))));
    m_RGC_t_V=mean(RGC_t_V);%mean
    sd_RGC_t_V=std(RGC_t_V);% Standard Deviation
    % 
    % %Swing time and Stance time
    St_R_V=100*(A_V.Time(GC_Total_V(:,4))-A_V.Time(GC_Total_V(:,1)))./RGC_t_V;
    Sw_R_V=100*(A_V.Time(GC_Total_V(:,5))-A_V.Time(GC_Total_V(:,4)))./RGC_t_V;
    m_St_R_V=mean(St_R_V);% Means
    m_Sw_R_V=mean(Sw_R_V);
    sd_St_R_V=std(St_R_V);% Standard Deviations
    sd_Sw_R_V=std(St_R_V);

    SS_t_R_V=100*((A_V.Time(GC_Total_V(:,3))-A_V.Time(GC_Total_V(:,2))))./RGC_t_V; %Single Support Right
    m_SS_t_R_V=mean(SS_t_R_V);
    sd_SS_t_R_V=std(SS_t_R_V);

    DS_t_R_V=100*((A_V.Time(GC_Total_V(:,2))-A_V.Time(GC_Total_V(:,1))))./RGC_t_V;% Double Support Right
    m_DS_t_R_V=mean(DS_t_R_V);
    sd_DS_t_R_V=std(DS_t_R_V);
    

    % %Left Foot
    % % Left Gait Cycle time
    LGC_t_V=((A_V.Time(GC_Total_V(:,6))-A_V.Time(GC_Total_V(:,2))));
    m_LGC_t_V=mean(LGC_t_V);%mean
    sd_LGC_t_V=std(LGC_t_V);% Standard Deviation

     
    % %Swing time and Stance time
    Sw_L_V=100*(A_V.Time(GC_Total_V(:,3))-A_V.Time(GC_Total_V(:,2)))./LGC_t_V;
    St_L_V=100*(A_V.Time(GC_Total_V(:,6))-A_V.Time(GC_Total_V(:,3)))./LGC_t_V;
    m_St_L_V=mean(St_L_V);% Means
    m_Sw_L_V=mean(Sw_L_V);
    sd_St_L_V=std(St_L_V);% Standard Deviations
    sd_Sw_L_V=std(St_L_V);

    SS_t_L_V=100*((A_V.Time(GC_Total_V(:,5))-A_V.Time(GC_Total_V(:,4))))./LGC_t_V; %Single Support Left
    m_SS_t_L_V=mean(SS_t_L_V);
    sd_SS_t_L_V=std(SS_t_L_V);

    DS_t_L_V=100*((A_V.Time(GC_Total_V(:,4))-A_V.Time(GC_Total_V(:,3))))./LGC_t_V;% Double Support Right
    m_DS_t_L_V=mean(DS_t_L_V);
    sd_DS_t_L_V=std(DS_t_L_V);
    
    
    % Step times
    % Right Step time
    RST_V=100*((A_V.Time(GC_Total_V(:,3))-A_V.Time(GC_Total_V(:,1))))./RGC_t_V;
    m_RST_V=mean(RST_V);
    sd_RST_V=std(RST_V);
    
    %Left Step Time
    LST_V=100*(A_V.Time(GC_Total_V(:,5))-A_V.Time(GC_Total_V(:,3)))./LGC_t_V;
    m_LST_V=mean(LST_V);
    sd_LST_V=std(LST_V);
    