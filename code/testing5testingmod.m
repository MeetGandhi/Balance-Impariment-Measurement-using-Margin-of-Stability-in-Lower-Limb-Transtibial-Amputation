test1=c3dserver;
c3d1=input('\nEnter path of c3d file of the required Static trial (as a string in single quotes): ');
openc3d(test1,0,c3d1);

LANK_Static=double(get3dtarget(test1,'LANK'));
LANK_X_Static=LANK_Static(:,1);
LANK_Y_Static=LANK_Static(:,2);
LANK_Z_Static=LANK_Static(:,3);

LANK_M_Static=double(get3dtarget(test1,'LANK_M'));
LANK_M_X_Static=LANK_M_Static(:,1);
LANK_M_Y_Static=LANK_M_Static(:,2);
LANK_M_Z_Static=LANK_M_Static(:,3);

LHEE_Static=double(get3dtarget(test1,'LHEE'));
LHEE_X_Static=LHEE_Static(:,1);
LHEE_Y_Static=LHEE_Static(:,2);
LHEE_Z_Static=LHEE_Static(:,3);

LTOE_Static=double(get3dtarget(test1,'LTOE'));
LTOE_X_Static=LTOE_Static(:,1);
LTOE_Y_Static=LTOE_Static(:,2);
LTOE_Z_Static=LTOE_Static(:,3);

LMT_Static=double(get3dtarget(test1,'LMT'));
LMT_X_Static=LMT_Static(:,1);
LMT_Y_Static=LMT_Static(:,2);
LMT_Z_Static=LMT_Static(:,3);

RANK_Static=double(get3dtarget(test1,'RANK'));
RANK_X_Static=RANK_Static(:,1);
RANK_Y_Static=RANK_Static(:,2);
RANK_Z_Static=RANK_Static(:,3);

RANK_M_Static=double(get3dtarget(test1,'RANK_M'));
RANK_M_X_Static=RANK_M_Static(:,1);
RANK_M_Y_Static=RANK_M_Static(:,2);
RANK_M_Z_Static=RANK_M_Static(:,3);

RHEE_Static=double(get3dtarget(test1,'RHEE'));
RHEE_X_Static=RHEE_Static(:,1);
RHEE_Y_Static=RHEE_Static(:,2);
RHEE_Z_Static=RHEE_Static(:,3);

RTOE_Static=double(get3dtarget(test1,'RTOE'));
RTOE_X_Static=RTOE_Static(:,1);
RTOE_Y_Static=RTOE_Static(:,2);
RTOE_Z_Static=RTOE_Static(:,3);

RMT_Static=double(get3dtarget(test1,'RMT'));
RMT_X_Static=RMT_Static(:,1);
RMT_Y_Static=RMT_Static(:,2);
RMT_Z_Static=RMT_Static(:,3);

LFEA_Static=double(get3dtarget(test1,'LFEA'));
LFEA_X_Static=LFEA_Static(:,1);
LFEA_Y_Static=LFEA_Static(:,2);
LFEA_Z_Static=LFEA_Static(:,3);
LFEA_X_Static_avg=mean(LFEA_X_Static);
LFEA_Y_Static_avg=mean(LFEA_Y_Static);
LFEA_Z_Static_avg=mean(LFEA_Z_Static);

LSEA_Static=double(get3dtarget(test1,'LSEA'));
LSEA_X_Static=LSEA_Static(:,1);
LSEA_Y_Static=LSEA_Static(:,2);
LSEA_Z_Static=LSEA_Static(:,3);
LSEA_X_Static_avg=mean(LSEA_X_Static);
LSEA_Y_Static_avg=mean(LSEA_Y_Static);
LSEA_Z_Static_avg=mean(LSEA_Z_Static);

LTEA_Static=double(get3dtarget(test1,'LTEA'));
LTEA_X_Static=LTEA_Static(:,1);
LTEA_Y_Static=LTEA_Static(:,2);
LTEA_Z_Static=LTEA_Static(:,3);
LTEA_X_Static_avg=mean(LTEA_X_Static);
LTEA_Y_Static_avg=mean(LTEA_Y_Static);
LTEA_Z_Static_avg=mean(LTEA_Z_Static);

RFEA_Static=double(get3dtarget(test1,'RFEA'));
RFEA_X_Static=RFEA_Static(:,1);
RFEA_Y_Static=RFEA_Static(:,2);
RFEA_Z_Static=RFEA_Static(:,3);
RFEA_X_Static_avg=mean(RFEA_X_Static);
RFEA_Y_Static_avg=mean(RFEA_Y_Static);
RFEA_Z_Static_avg=mean(RFEA_Z_Static);

RSEA_Static=double(get3dtarget(test1,'RSEA'));
RSEA_X_Static=RSEA_Static(:,1);
RSEA_Y_Static=RSEA_Static(:,2);
RSEA_Z_Static=RSEA_Static(:,3);
RSEA_X_Static_avg=mean(RSEA_X_Static);
RSEA_Y_Static_avg=mean(RSEA_Y_Static);
RSEA_Z_Static_avg=mean(RSEA_Z_Static);

RTEA_Static=double(get3dtarget(test1,'RTEA'));
RTEA_X_Static=RTEA_Static(:,1);
RTEA_Y_Static=RTEA_Static(:,2);
RTEA_Z_Static=RTEA_Static(:,3);
RTEA_X_Static_avg=mean(RTEA_X_Static);
RTEA_Y_Static_avg=mean(RTEA_Y_Static);
RTEA_Z_Static_avg=mean(RTEA_Z_Static);

PEA_Static=double(get3dtarget(test1,'PEA'));
PEA_X_Static=PEA_Static(:,1);
PEA_Y_Static=PEA_Static(:,2);
PEA_Z_Static=PEA_Static(:,3);
PEA_X_Static_avg=mean(PEA_X_Static);
PEA_Y_Static_avg=mean(PEA_Y_Static);
PEA_Z_Static_avg=mean(PEA_Z_Static);

Mov1=VideoWriter('Mov1.avi');
%Mov1.FrameRate=50;
Mov2=VideoWriter('Mov2.avi');
%Mov2.FrameRate=50;
Mov3=VideoWriter('Mov3.avi');
%Mov3.FrameRate=50;
open(Mov1);
open(Mov2);
open(Mov3);
uu=1;
xqq=0:100;
while uu<=m
    tt=[];
    vv=((GC_Right_V(uu,5)-GC_Right_V(uu,1))/100);
    jj=GC_Right_V(uu,1);
    for ii=0:100
        tt=[tt,jj];
        jj=jj+vv;
    end
    xqq=[xqq;tt];
    uu=uu+1;
    
end
% Always exclude the first row. Reason: See the first row in xqq
yqq_SACR_X=spline(1:length(SACR_X),transpose(SACR_X),xqq);
yqq_SACR_Y=spline(1:length(SACR_X),transpose(SACR_Y),xqq);
yqq_SACR_Z=spline(1:length(SACR_X),transpose(SACR_Z),xqq);

yqq_RILIA_X=spline(1:length(SACR_X),transpose(RILIA_X),xqq);
yqq_RILIA_Y=spline(1:length(SACR_X),transpose(RILIA_Y),xqq);
yqq_RILIA_Z=spline(1:length(SACR_X),transpose(RILIA_Z),xqq);

yqq_LILIA_X=spline(1:length(SACR_X),transpose(LILIA_X),xqq);
yqq_LILIA_Y=spline(1:length(SACR_X),transpose(LILIA_Y),xqq);
yqq_LILIA_Z=spline(1:length(SACR_X),transpose(LILIA_Z),xqq);

yqq_RASI_X=spline(1:length(SACR_X),transpose(RASI_X),xqq);
yqq_RASI_Y=spline(1:length(SACR_X),transpose(RASI_Y),xqq);
yqq_RASI_Z=spline(1:length(SACR_X),transpose(RASI_Z),xqq);

yqq_LASI_X=spline(1:length(SACR_X),transpose(LASI_X),xqq);
yqq_LASI_Y=spline(1:length(SACR_X),transpose(LASI_Y),xqq);
yqq_LASI_Z=spline(1:length(SACR_X),transpose(LASI_Z),xqq);

yqq_RKNEE_X=spline(1:length(SACR_X),transpose(RKNEE_X),xqq);
yqq_RKNEE_Y=spline(1:length(SACR_X),transpose(RKNEE_Y),xqq);
yqq_RKNEE_Z=spline(1:length(SACR_X),transpose(RKNEE_Z),xqq);

yqq_RKNEE_M_X=spline(1:length(SACR_X),transpose(RKNEE_M_X),xqq);
yqq_RKNEE_M_Y=spline(1:length(SACR_X),transpose(RKNEE_M_Y),xqq);
yqq_RKNEE_M_Z=spline(1:length(SACR_X),transpose(RKNEE_M_Z),xqq);

yqq_RTH_L_X=spline(1:length(SACR_X),transpose(RTH_L_X),xqq);
yqq_RTH_L_Y=spline(1:length(SACR_X),transpose(RTH_L_Y),xqq);
yqq_RTH_L_Z=spline(1:length(SACR_X),transpose(RTH_L_Z),xqq);

yqq_RTH_M_X=spline(1:length(SACR_X),transpose(RTH_M_X),xqq);
yqq_RTH_M_Y=spline(1:length(SACR_X),transpose(RTH_M_Y),xqq);
yqq_RTH_M_Z=spline(1:length(SACR_X),transpose(RTH_M_Z),xqq);

yqq_LKNEE_X=spline(1:length(SACR_X),transpose(LKNEE_X),xqq);
yqq_LKNEE_Y=spline(1:length(SACR_X),transpose(LKNEE_Y),xqq);
yqq_LKNEE_Z=spline(1:length(SACR_X),transpose(LKNEE_Z),xqq);

yqq_LKNEE_M_X=spline(1:length(SACR_X),transpose(LKNEE_M_X),xqq);
yqq_LKNEE_M_Y=spline(1:length(SACR_X),transpose(LKNEE_M_Y),xqq);
yqq_LKNEE_M_Z=spline(1:length(SACR_X),transpose(LKNEE_M_Z),xqq);

yqq_LTH_L_X=spline(1:length(SACR_X),transpose(LTH_L_X),xqq);
yqq_LTH_L_Y=spline(1:length(SACR_X),transpose(LTH_L_Y),xqq);
yqq_LTH_L_Z=spline(1:length(SACR_X),transpose(LTH_L_Z),xqq);

yqq_LTH_M_X=spline(1:length(SACR_X),transpose(LTH_M_X),xqq);
yqq_LTH_M_Y=spline(1:length(SACR_X),transpose(LTH_M_Y),xqq);
yqq_LTH_M_Z=spline(1:length(SACR_X),transpose(LTH_M_Z),xqq);

yqq_RCON_X=spline(1:length(SACR_X),transpose(RCON_X),xqq);
yqq_RCON_Y=spline(1:length(SACR_X),transpose(RCON_Y),xqq);
yqq_RCON_Z=spline(1:length(SACR_X),transpose(RCON_Z),xqq);

yqq_RFIB_X=spline(1:length(SACR_X),transpose(RFIB_X),xqq);
yqq_RFIB_Y=spline(1:length(SACR_X),transpose(RFIB_Y),xqq);
yqq_RFIB_Z=spline(1:length(SACR_X),transpose(RFIB_Z),xqq);

yqq_RANK_X=spline(1:length(SACR_X),transpose(RANK_X),xqq);
yqq_RANK_Y=spline(1:length(SACR_X),transpose(RANK_Y),xqq);
yqq_RANK_Z=spline(1:length(SACR_X),transpose(RANK_Z),xqq);

yqq_RANK_M_X=spline(1:length(SACR_X),transpose(RANK_M_X),xqq);
yqq_RANK_M_Y=spline(1:length(SACR_X),transpose(RANK_M_Y),xqq);
yqq_RANK_M_Z=spline(1:length(SACR_X),transpose(RANK_M_Z),xqq);

yqq_RHEE_X=spline(1:length(SACR_X),transpose(RHEE_X),xqq);
yqq_RHEE_Y=spline(1:length(SACR_X),transpose(RHEE_Y),xqq);
yqq_RHEE_Z=spline(1:length(SACR_X),transpose(RHEE_Z),xqq);

yqq_RTOE_X=spline(1:length(SACR_X),transpose(RTOE_X),xqq);
yqq_RTOE_Y=spline(1:length(SACR_X),transpose(RTOE_Y),xqq);
yqq_RTOE_Z=spline(1:length(SACR_X),transpose(RTOE_Z),xqq);

yqq_RMT_X=spline(1:length(SACR_X),transpose(RMT_X),xqq);
yqq_RMT_Y=spline(1:length(SACR_X),transpose(RMT_Y),xqq);
yqq_RMT_Z=spline(1:length(SACR_X),transpose(RMT_Z),xqq);

yqq_LCON_X=spline(1:length(SACR_X),transpose(LCON_X),xqq);
yqq_LCON_Y=spline(1:length(SACR_X),transpose(LCON_Y),xqq);
yqq_LCON_Z=spline(1:length(SACR_X),transpose(LCON_Z),xqq);

yqq_LFIB_X=spline(1:length(SACR_X),transpose(LFIB_X),xqq);
yqq_LFIB_Y=spline(1:length(SACR_X),transpose(LFIB_Y),xqq);
yqq_LFIB_Z=spline(1:length(SACR_X),transpose(LFIB_Z),xqq);

yqq_LANK_X=spline(1:length(SACR_X),transpose(LANK_X),xqq);
yqq_LANK_Y=spline(1:length(SACR_X),transpose(LANK_Y),xqq);
yqq_LANK_Z=spline(1:length(SACR_X),transpose(LANK_Z),xqq);

yqq_LANK_M_X=spline(1:length(SACR_X),transpose(LANK_M_X),xqq);
yqq_LANK_M_Y=spline(1:length(SACR_X),transpose(LANK_M_Y),xqq);
yqq_LANK_M_Z=spline(1:length(SACR_X),transpose(LANK_M_Z),xqq);

yqq_LHEE_X=spline(1:length(SACR_X),transpose(LHEE_X),xqq);
yqq_LHEE_Y=spline(1:length(SACR_X),transpose(LHEE_Y),xqq);
yqq_LHEE_Z=spline(1:length(SACR_X),transpose(LHEE_Z),xqq);

yqq_LTOE_X=spline(1:length(SACR_X),transpose(LTOE_X),xqq);
yqq_LTOE_Y=spline(1:length(SACR_X),transpose(LTOE_Y),xqq);
yqq_LTOE_Z=spline(1:length(SACR_X),transpose(LTOE_Z),xqq);

yqq_LMT_X=spline(1:length(SACR_X),transpose(LMT_X),xqq);
yqq_LMT_Y=spline(1:length(SACR_X),transpose(LMT_Y),xqq);
yqq_LMT_Z=spline(1:length(SACR_X),transpose(LMT_Z),xqq);


yqq_XCOM_X=spline(1:length(SACR_X),transpose(XCOM_X),xqq);
yqq_XCOM_Y=spline(1:length(SACR_X),transpose(XCOM_Y),xqq);
yqq_XCOM_Z=spline(1:length(SACR_X),transpose(XCOM_Z),xqq);

yqq_COMV_X=spline(1:length(SACR_X),transpose(COMV_X),xqq);
yqq_COMV_Y=spline(1:length(SACR_X),transpose(COMV_Y),xqq);
yqq_COMV_Z=spline(1:length(SACR_X),transpose(COMV_Z),xqq);

xff=[];
tff=[];
[mmm,nnn]=size(xqq);
[ooo,ppp]=size(GC_Right_V);
for mm=2:mmm
    xff=[xff;tff];
    tff=[];
    for ff=1:ppp-1
        ii=2;
        while xqq(mm,ii)<GC_Right_V(mm-1,ff)
            ii=ii+1;
            if ii==nnn+1
                break
            end
        end
        tff=[tff,xqq(mm,ii-1)];
    end
    tff=[tff,xqq(mm,nnn)];
end
xff=[xff;tff];

xpp=[];
tff=[];
[mmm,nnn]=size(xqq);
[ooo,ppp]=size(GC_Right_V);
for mm=2:mmm
    xpp=[xpp;tff];
    tff=[];
    for ff=1:ppp-1
        ii=2;
        while xqq(mm,ii)<GC_Right_V(mm-1,ff)
            ii=ii+1;
            if ii==nnn+1
                break
            end
        end
        tff=[tff,ii-2];
    end
    tff=[tff,nnn-1];
end
xpp=[xpp;tff];

[qqq,rrr]=size(xpp);
for i3=1:qqq 
    xpp(i3,9)=xpp(i3,5);
    xpp(i3,7)=xpp(i3,4);
    xpp(i3,5)=xpp(i3,3);
    xpp(i3,3)=xpp(i3,2);
    xpp(i3,2)=round((xpp(i3,1)+xpp(i3,3))/2);
    xpp(i3,4)=round((xpp(i3,3)+xpp(i3,5))/2);
    xpp(i3,6)=round((xpp(i3,5)+xpp(i3,7))/2);
    xpp(i3,8)=round((xpp(i3,7)+xpp(i3,9))/2);
end
T=1000;

RHEEmin=min(RHEE_Z_Static);
RHEEmax=max(RHEE_Z_Static);
LHEEmin=min(LHEE_Z_Static);
LHEEmax=max(LHEE_Z_Static);

RANKmin=min(RANK_Z_Static);
RANKmax=max(RANK_Z_Static);
LANKmin=min(LANK_Z_Static);
LANKmax=max(LANK_Z_Static);

RANK_Mmin=min(RANK_M_Z_Static);
RANK_Mmax=max(RANK_M_Z_Static);
LANK_Mmin=min(LANK_M_Z_Static);
LANK_Mmax=max(LANK_M_Z_Static);

RMTmin=min(RMT_Z_Static);
RMTmax=max(RMT_Z_Static);
LMTmin=min(LMT_Z_Static);
LMTmax=max(LMT_Z_Static);

RTOEmin=min(RTOE_Z_Static);
RTOEmax=max(RTOE_Z_Static);
LTOEmin=min(LTOE_Z_Static);
LTOEmax=max(LTOE_Z_Static);

% sub=struct;
% ty=struct;
% markers=struct;
% sacr=struct;
% rilia=struct;
% lilia=struct;
% rasi=struct;
% lasi=struct;
% rhee=struct;
% rtoe=struct;
% lhee=struct;
% ltoe=struct;
% rank=struct;
% lank=struct;
% xcom=struct;
% comv=struct;
% ja=struct;
% lfea=struct;
% lsea=struct;
% ltea=struct;
% rfea=struct;
% rsea=struct;
% rtea=struct;
% pea=struct;
% lhjc=struct;
% rhjc=struct;

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).sacr=[transpose(yqq_SACR_X(i+1,:)),transpose(yqq_SACR_Y(i+1,:)),transpose(yqq_SACR_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rilia=[transpose(yqq_RILIA_X(i+1,:)),transpose(yqq_RILIA_Y(i+1,:)),transpose(yqq_RILIA_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lilia=[transpose(yqq_LILIA_X(i+1,:)),transpose(yqq_LILIA_Y(i+1,:)),transpose(yqq_LILIA_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rasi=[transpose(yqq_RASI_X(i+1,:)),transpose(yqq_RASI_Y(i+1,:)),transpose(yqq_RASI_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lasi=[transpose(yqq_LASI_X(i+1,:)),transpose(yqq_LASI_Y(i+1,:)),transpose(yqq_LASI_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rhee=[transpose(yqq_RHEE_X(i+1,:)),transpose(yqq_RHEE_Y(i+1,:)),transpose(yqq_RHEE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rtoe=[transpose(yqq_RTOE_X(i+1,:)),transpose(yqq_RTOE_Y(i+1,:)),transpose(yqq_RTOE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lhee=[transpose(yqq_LHEE_X(i+1,:)),transpose(yqq_LHEE_Y(i+1,:)),transpose(yqq_LHEE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).ltoe=[transpose(yqq_LTOE_X(i+1,:)),transpose(yqq_LTOE_Y(i+1,:)),transpose(yqq_LTOE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rank=[transpose(yqq_RANK_X(i+1,:)),transpose(yqq_RANK_Y(i+1,:)),transpose(yqq_RANK_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lank=[transpose(yqq_LANK_X(i+1,:)),transpose(yqq_LANK_Y(i+1,:)),transpose(yqq_LANK_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rank_m=[transpose(yqq_RANK_M_X(i+1,:)),transpose(yqq_RANK_M_Y(i+1,:)),transpose(yqq_RANK_M_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lank_m=[transpose(yqq_LANK_M_X(i+1,:)),transpose(yqq_LANK_M_Y(i+1,:)),transpose(yqq_LANK_M_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rmt=[transpose(yqq_RMT_X(i+1,:)),transpose(yqq_RMT_Y(i+1,:)),transpose(yqq_RMT_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lmt=[transpose(yqq_LMT_X(i+1,:)),transpose(yqq_LMT_Y(i+1,:)),transpose(yqq_LMT_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rcon=[transpose(yqq_RCON_X(i+1,:)),transpose(yqq_RCON_Y(i+1,:)),transpose(yqq_RCON_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lcon=[transpose(yqq_LCON_X(i+1,:)),transpose(yqq_LCON_Y(i+1,:)),transpose(yqq_LCON_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rfib=[transpose(yqq_RFIB_X(i+1,:)),transpose(yqq_RFIB_Y(i+1,:)),transpose(yqq_RFIB_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lfib=[transpose(yqq_LFIB_X(i+1,:)),transpose(yqq_LFIB_Y(i+1,:)),transpose(yqq_LFIB_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rknee=[transpose(yqq_RKNEE_X(i+1,:)),transpose(yqq_RKNEE_Y(i+1,:)),transpose(yqq_RKNEE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lknee=[transpose(yqq_LKNEE_X(i+1,:)),transpose(yqq_LKNEE_Y(i+1,:)),transpose(yqq_LKNEE_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rknee_m=[transpose(yqq_RKNEE_M_X(i+1,:)),transpose(yqq_RKNEE_M_Y(i+1,:)),transpose(yqq_RKNEE_M_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lknee_m=[transpose(yqq_LKNEE_M_X(i+1,:)),transpose(yqq_LKNEE_M_Y(i+1,:)),transpose(yqq_LKNEE_M_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rth_l=[transpose(yqq_RTH_L_X(i+1,:)),transpose(yqq_RTH_L_Y(i+1,:)),transpose(yqq_RTH_L_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lth_l=[transpose(yqq_LTH_L_X(i+1,:)),transpose(yqq_LTH_L_Y(i+1,:)),transpose(yqq_LTH_L_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).rth_m=[transpose(yqq_RTH_M_X(i+1,:)),transpose(yqq_RTH_M_Y(i+1,:)),transpose(yqq_RTH_M_Z(i+1,:))];
end

for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).lth_m=[transpose(yqq_LTH_M_X(i+1,:)),transpose(yqq_LTH_M_Y(i+1,:)),transpose(yqq_LTH_M_Z(i+1,:))];
end

XCOM=[XCOM_X,XCOM_Y,XCOM_Z];
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).xcom=[transpose(yqq_XCOM_X(i+1,:)),transpose(yqq_XCOM_Y(i+1,:)),transpose(yqq_XCOM_Z(i+1,:))];
end

COMV=[COMV_X,COMV_Y];
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).markers(i).comv=[transpose(yqq_COMV_X(i+1,:)),transpose(yqq_COMV_Y(i+1,:)),transpose(yqq_COMV_Z(i+1,:))];
end



LFEA=double(get3dtarget(test,'LFEA'));
LFEA_X=LFEA(:,1);
LFEA_Y=LFEA(:,2);
LFEA_Z=LFEA(:,3);
yqq_LFEA_X=spline(1:length(SACR_X),transpose(LFEA_X),xqq);
yqq_LFEA_Y=spline(1:length(SACR_X),transpose(LFEA_Y),xqq);
yqq_LFEA_Z=spline(1:length(SACR_X),transpose(LFEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).lfea=[transpose(yqq_LFEA_X(i+1,:)-LFEA_X_Static_avg),transpose(yqq_LFEA_Y(i+1,:)-LFEA_Y_Static_avg),transpose(yqq_LFEA_Z(i+1,:)-LFEA_Z_Static_avg)];
end

LSEA=double(get3dtarget(test,'LSEA'));
LSEA_X=LSEA(:,1);
LSEA_Y=LSEA(:,2);
LSEA_Z=LSEA(:,3);
yqq_LSEA_X=spline(1:length(SACR_X),transpose(LSEA_X),xqq);
yqq_LSEA_Y=spline(1:length(SACR_X),transpose(LSEA_Y),xqq);
yqq_LSEA_Z=spline(1:length(SACR_X),transpose(LSEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).lsea=[transpose(yqq_LSEA_X(i+1,:)-LSEA_X_Static_avg),transpose(yqq_LSEA_Y(i+1,:)-LSEA_Y_Static_avg),transpose(yqq_LSEA_Z(i+1,:)-LSEA_Z_Static_avg)];
end

LTEA=double(get3dtarget(test,'LTEA'));
LTEA_X=LTEA(:,1);
LTEA_Y=LTEA(:,2);
LTEA_Z=LTEA(:,3);
yqq_LTEA_X=spline(1:length(SACR_X),transpose(LTEA_X),xqq);
yqq_LTEA_Y=spline(1:length(SACR_X),transpose(LTEA_Y),xqq);
yqq_LTEA_Z=spline(1:length(SACR_X),transpose(LTEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).ltea=[transpose(yqq_LTEA_X(i+1,:)-LTEA_X_Static_avg),transpose(yqq_LTEA_Y(i+1,:)-LTEA_Y_Static_avg),transpose(yqq_LTEA_Z(i+1,:)-LTEA_Z_Static_avg)];
end

RFEA=double(get3dtarget(test,'RFEA'));
RFEA_X=RFEA(:,1);
RFEA_Y=RFEA(:,2);
RFEA_Z=RFEA(:,3);
yqq_RFEA_X=spline(1:length(SACR_X),transpose(RFEA_X),xqq);
yqq_RFEA_Y=spline(1:length(SACR_X),transpose(RFEA_Y),xqq);
yqq_RFEA_Z=spline(1:length(SACR_X),transpose(RFEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).rfea=[transpose(yqq_RFEA_X(i+1,:)-RFEA_X_Static_avg),transpose(yqq_RFEA_Y(i+1,:)-RFEA_Y_Static_avg),transpose(yqq_RFEA_Z(i+1,:)-RFEA_Z_Static_avg)];
end

RSEA=double(get3dtarget(test,'RSEA'));
RSEA_X=RSEA(:,1);
RSEA_Y=RSEA(:,2);
RSEA_Z=RSEA(:,3);
yqq_RSEA_X=spline(1:length(SACR_X),transpose(RSEA_X),xqq);
yqq_RSEA_Y=spline(1:length(SACR_X),transpose(RSEA_Y),xqq);
yqq_RSEA_Z=spline(1:length(SACR_X),transpose(RSEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).rsea=[transpose(yqq_RSEA_X(i+1,:)-RSEA_X_Static_avg),transpose(yqq_RSEA_Y(i+1,:)-RSEA_Y_Static_avg),transpose(yqq_RSEA_Z(i+1,:)-RSEA_Z_Static_avg)];
end

RTEA=double(get3dtarget(test,'RTEA'));
RTEA_X=RTEA(:,1);
RTEA_Y=RTEA(:,2);
RTEA_Z=RTEA(:,3);
yqq_RTEA_X=spline(1:length(SACR_X),transpose(RTEA_X),xqq);
yqq_RTEA_Y=spline(1:length(SACR_X),transpose(RTEA_Y),xqq);
yqq_RTEA_Z=spline(1:length(SACR_X),transpose(RTEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).rtea=[transpose(yqq_RTEA_X(i+1,:)-RTEA_X_Static_avg),transpose(yqq_RTEA_Y(i+1,:)-RTEA_Y_Static_avg),transpose(yqq_RTEA_Z(i+1,:)-RTEA_Z_Static_avg)];
end


PEA=double(get3dtarget(test,'PEA'));
PEA_X=PEA(:,1);
PEA_Y=PEA(:,2);
PEA_Z=PEA(:,3);
yqq_PEA_X=spline(1:length(SACR_X),transpose(PEA_X),xqq);
yqq_PEA_Y=spline(1:length(SACR_X),transpose(PEA_Y),xqq);
yqq_PEA_Z=spline(1:length(SACR_X),transpose(PEA_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).pea=[transpose(yqq_PEA_X(i+1,:)-PEA_X_Static_avg),transpose(yqq_PEA_Y(i+1,:)-PEA_Y_Static_avg),transpose(yqq_PEA_Z(i+1,:)-PEA_Z_Static_avg)];
end

RHJC=double(get3dtarget(test,'RHJC'));
RHJC_X=RHJC(:,1);
RHJC_Y=RHJC(:,2);
RHJC_Z=RHJC(:,3);
yqq_RHJC_X=spline(1:length(SACR_X),transpose(RHJC_X),xqq);
yqq_RHJC_Y=spline(1:length(SACR_X),transpose(RHJC_Y),xqq);
yqq_RHJC_Z=spline(1:length(SACR_X),transpose(RHJC_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).rhjc=[transpose(yqq_RHJC_X(i+1,:)),transpose(yqq_RHJC_Y(i+1,:)),transpose(yqq_RHJC_Z(i+1,:))];
end

LHJC=double(get3dtarget(test,'LHJC'));
LHJC_X=LHJC(:,1);
LHJC_Y=LHJC(:,2);
LHJC_Z=LHJC(:,3);
yqq_LHJC_X=spline(1:length(SACR_X),transpose(LHJC_X),xqq);
yqq_LHJC_Y=spline(1:length(SACR_X),transpose(LHJC_Y),xqq);
yqq_LHJC_Z=spline(1:length(SACR_X),transpose(LHJC_Z),xqq);
for i=1:length(GC_Right_V)
    sub(S).ty(Ty).tn(Tn).ja(i).lhjc=[transpose(yqq_LHJC_X(i+1,:)),transpose(yqq_LHJC_Y(i+1,:)),transpose(yqq_LHJC_Z(i+1,:))];
end


MOSG=[];
TT=[];
FFFR=[];
FFFL=[];
MOSML_R=[];
MOSAP_R=[];
MOSML_L=[];
MOSAP_L=[];
SL_R=[];
SL_L=[];
SW_R=[];
SW_L=[];
TTT=2*T;


for aa=1:qqq
    MOS=[];
    mos=[];
    F=[];
    CVX=[];
    CVY=[];
    FF=[];
    
    
%     figure('Name','RHEE_Z')
%     findchangepts(yqq_RHEE_Z(aa+1,:),'MaxNumChanges',2);
%     RHEE_Z_h=gcf;
%     axesObjs_RHEE_Z=get(RHEE_Z_h,'Children');  %axes handles
%     dataObjs_RHEE_Z=get(axesObjs_RHEE_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_RHEE_Z=findobj(dataObjs_RHEE_Z, 'type', 'line');
%     ydata_RHEE_Z = get(lineObjs_RHEE_Z, 'YData');
%     Y_RHEE_Z=unique(ydata_RHEE_Z{2,1},'stable');
%     YD_RHEE_Z_1=Y_RHEE_Z(1);
%     YD_RHEE_Z_2=Y_RHEE_Z(5);
%     xdata_RHEE_Z = get(lineObjs_RHEE_Z, 'XData');
%     X_RHEE_Z=unique(xdata_RHEE_Z{2,1});
%     XD_RHEE_Z_1=X_RHEE_Z(2);
%     XD_RHEE_Z_2=X_RHEE_Z(3);
%     
%     figure('Name','RANK_Z')
%     findchangepts(yqq_RANK_Z(aa+1,:),'MaxNumChanges',2);
%     RANK_Z_h=gcf;
%     axesObjs_RANK_Z=get(RANK_Z_h,'Children');  %axes handles
%     dataObjs_RANK_Z=get(axesObjs_RANK_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_RANK_Z=findobj(dataObjs_RANK_Z, 'type', 'line');
%     ydata_RANK_Z = get(lineObjs_RANK_Z, 'YData');
%     Y_RANK_Z=unique(ydata_RANK_Z{2,1},'stable');
%     YD_RANK_Z_1=Y_RANK_Z(1);
%     YD_RANK_Z_2=Y_RANK_Z(5);
%     xdata_RANK_Z = get(lineObjs_RANK_Z, 'XData');
%     X_RANK_Z=unique(xdata_RANK_Z{2,1});
%     XD_RANK_Z_1=X_RANK_Z(2);
%     XD_RANK_Z_2=X_RANK_Z(3);
%     
%     figure('Name','RANK_M_Z')
%     findchangepts(yqq_RANK_M_Z(aa+1,:),'MaxNumChanges',2);
%     RANK_M_Z_h=gcf;
%     axesObjs_RANK_M_Z=get(RANK_M_Z_h,'Children');  %axes handles
%     dataObjs_RANK_M_Z=get(axesObjs_RANK_M_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_RANK_M_Z=findobj(dataObjs_RANK_M_Z, 'type', 'line');
%     ydata_RANK_M_Z = get(lineObjs_RANK_M_Z, 'YData');
%     Y_RANK_M_Z=unique(ydata_RANK_M_Z{2,1},'stable');
%     YD_RANK_M_Z_1=Y_RANK_M_Z(1);
%     YD_RANK_M_Z_2=Y_RANK_M_Z(5);
%     xdata_RANK_M_Z = get(lineObjs_RANK_M_Z, 'XData');
%     X_RANK_M_Z=unique(xdata_RANK_M_Z{2,1});
%     XD_RANK_M_Z_1=X_RANK_M_Z(2);
%     XD_RANK_M_Z_2=X_RANK_M_Z(3);
%     
%     
%     % Start-End % Neethan and Nidarshan(withanklebrace): 3 instead of 2
%     figure('Name','RTOE_Z')
%     findchangepts(yqq_RTOE_Z(aa+1,:),'MaxNumChanges',2);
%     RTOE_Z_h=gcf;
%     axesObjs_RTOE_Z=get(RTOE_Z_h,'Children');  %axes handles
%     dataObjs_RTOE_Z=get(axesObjs_RTOE_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_RTOE_Z=findobj(dataObjs_RTOE_Z, 'type', 'line');
%     ydata_RTOE_Z = get(lineObjs_RTOE_Z, 'YData');
%     D_RTOE_Z=min(ydata_RTOE_Z{2,1});
%     
%     figure('Name','RMT_Z')
%     findchangepts(yqq_RMT_Z(aa+1,:),'MaxNumChanges',2);
%     RMT_Z_h=gcf;
%     axesObjs_RMT_Z=get(RMT_Z_h,'Children');  %axes handles
%     dataObjs_RMT_Z=get(axesObjs_RMT_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_RMT_Z=findobj(dataObjs_RMT_Z, 'type', 'line');
%     ydata_RMT_Z = get(lineObjs_RMT_Z, 'YData');
%     D_RMT_Z=min(ydata_RMT_Z{2,1});
%     
%     
%     figure('Name','LHEE_Z')
%     findchangepts(yqq_LHEE_Z(aa+1,:),'MaxNumChanges',2);
%     LHEE_Z_h=gcf;
%     axesObjs_LHEE_Z=get(LHEE_Z_h,'Children');  %axes handles
%     dataObjs_LHEE_Z=get(axesObjs_LHEE_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_LHEE_Z=findobj(dataObjs_LHEE_Z, 'type', 'line');
%     ydata_LHEE_Z = get(lineObjs_LHEE_Z, 'YData');
%     Y_LHEE_Z=unique(ydata_LHEE_Z{2,1},'stable');
%     YD_LHEE_Z_1=Y_LHEE_Z(1);
%     YD_LHEE_Z_2=Y_LHEE_Z(5);
%     xdata_LHEE_Z = get(lineObjs_LHEE_Z, 'XData');
%     X_LHEE_Z=unique(xdata_LHEE_Z{2,1});
%     XD_LHEE_Z_1=X_LHEE_Z(2);
%     XD_LHEE_Z_2=X_LHEE_Z(3);
%     
%     figure('Name','LANK_Z')
%     findchangepts(yqq_LANK_Z(aa+1,:),'MaxNumChanges',2);
%     LANK_Z_h=gcf;
%     axesObjs_LANK_Z=get(LANK_Z_h,'Children');  %axes handles
%     dataObjs_LANK_Z=get(axesObjs_LANK_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_LANK_Z=findobj(dataObjs_LANK_Z, 'type', 'line');
%     ydata_LANK_Z = get(lineObjs_LANK_Z, 'YData');
%     Y_LANK_Z=unique(ydata_LANK_Z{2,1},'stable');
%     YD_LANK_Z_1=Y_LANK_Z(1);
%     YD_LANK_Z_2=Y_LANK_Z(5);
%     xdata_LANK_Z = get(lineObjs_LANK_Z, 'XData');
%     X_LANK_Z=unique(xdata_LANK_Z{2,1});
%     XD_LANK_Z_1=X_LANK_Z(2);
%     XD_LANK_Z_2=X_LANK_Z(3);
%     
%     figure('Name','LANK_M_Z')
%     findchangepts(yqq_LANK_M_Z(aa+1,:),'MaxNumChanges',2);
%     LANK_M_Z_h=gcf;
%     axesObjs_LANK_M_Z=get(LANK_M_Z_h,'Children');  %axes handles
%     dataObjs_LANK_M_Z=get(axesObjs_LANK_M_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_LANK_M_Z=findobj(dataObjs_LANK_M_Z, 'type', 'line');
%     ydata_LANK_M_Z = get(lineObjs_LANK_M_Z, 'YData');
%     Y_LANK_M_Z=unique(ydata_LANK_M_Z{2,1},'stable');
%     YD_LANK_M_Z_1=Y_LANK_M_Z(1);
%     YD_LANK_M_Z_2=Y_LANK_M_Z(5);
%     xdata_LANK_M_Z = get(lineObjs_LANK_M_Z, 'XData');
%     X_LANK_M_Z=unique(xdata_LANK_M_Z{2,1});
%     XD_LANK_M_Z_1=X_LANK_M_Z(2);
%     XD_LANK_M_Z_2=X_LANK_M_Z(3);
%     
%     figure('Name','LTOE_Z')
%     findchangepts(yqq_LTOE_Z(aa+1,:),'MaxNumChanges',2);
%     LTOE_Z_h=gcf;
%     axesObjs_LTOE_Z=get(LTOE_Z_h,'Children');  %axes handles
%     dataObjs_LTOE_Z=get(axesObjs_LTOE_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_LTOE_Z=findobj(dataObjs_LTOE_Z, 'type', 'line');
%     ydata_LTOE_Z = get(lineObjs_LTOE_Z, 'YData');
%     Y_LTOE_Z=unique(ydata_LTOE_Z{2,1},'stable');
%     YD_LTOE_Z_1=Y_LTOE_Z(1);
%     YD_LTOE_Z_2=Y_LTOE_Z(5);
%     xdata_LTOE_Z = get(lineObjs_LTOE_Z, 'XData');
%     X_LTOE_Z=unique(xdata_LTOE_Z{2,1});
%     XD_LTOE_Z_1=X_LTOE_Z(2);
%     XD_LTOE_Z_2=X_LTOE_Z(3);
%     
%     figure('Name','LMT_Z')
%     findchangepts(yqq_LMT_Z(aa+1,:),'MaxNumChanges',2);
%     LMT_Z_h=gcf;
%     axesObjs_LMT_Z=get(LMT_Z_h,'Children');  %axes handles
%     dataObjs_LMT_Z=get(axesObjs_LMT_Z,'Children'); %handles to low-level graphics objects in axes
%     lineObjs_LMT_Z=findobj(dataObjs_LMT_Z, 'type', 'line');
%     ydata_LMT_Z = get(lineObjs_LMT_Z, 'YData');
%     Y_LMT_Z=unique(ydata_LMT_Z{2,1},'stable');
%     if length(Y_LMT_Z)>4
%         YD_LMT_Z_1=Y_LMT_Z(1);
%         YD_LMT_Z_2=Y_LMT_Z(5);
%         xdata_LMT_Z = get(lineObjs_LMT_Z, 'XData');
%         X_LMT_Z=unique(xdata_LMT_Z{2,1});
%         XD_LMT_Z_1=X_LMT_Z(2);
%         XD_LMT_Z_2=X_LMT_Z(3);
%     end
    
    figure
    for a=1:9
        dA=0;
        if a==1 %|| a==9
            for c=1

                l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

%                 if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                     xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                     xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                     xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                     xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                     xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                     xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%                 %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%                 %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%                 %end
% 
%                 if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                     xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                     xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                     xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if length(Y_LMT_Z)>4
%                     if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                         xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                         ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                     end
%                 else
%                     D_LMT_Z=min(ydata_LMT_Z{2,1});
%                     if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                         xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                         ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                     end
%                 end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                    if a==9
                        MOSML_Rd=max(abs(yqq_RANK_X(aa+1,xpp(aa,a)+1)-xc),abs(yqq_RMT_X(aa+1,xpp(aa,a)+1)-xc));
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosmlr=MOSML_Rd;
                        MOSAP_Rd=abs(yqq_RTOE_Y(aa+1,xpp(aa,a)+1)-yc);
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosapr=MOSAP_Rd;

                        MOSML_R=[MOSML_R;MOSML_Rd];
                        MOSAP_R=[MOSAP_R;MOSAP_Rd];

                        slr=abs(yqq_RHEE_Y(aa+1,xpp(aa,a)+1)-yqq_LHEE_Y(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.slr=slr;
                        SL_R=[SL_R;slr];

                        swr=abs(yqq_LHEE_X(aa+1,xpp(aa,a)+1)-yqq_RHEE_X(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.swr=swr;
                        SW_R=[SW_R;swr];

                        FFFR=[FFFR;xqq(aa+1,xpp(aa,a)+1)];  
                    end
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
            end
            sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(1)=dA;
        end
        
        if a==9
            for c=-1

                l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

%                 if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                     xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                     xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                     xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                     xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                     xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                     xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%                 %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%                 %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%                 %end
% 
%                 if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                     xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                     xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%                 end
% 
%                 if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                     xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%                 if length(Y_LMT_Z)>4
%                     if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                         xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                         ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                     end
%                 else
%                     D_LMT_Z=min(ydata_LMT_Z{2,1});
%                     if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                         xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                         ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                     end
%                 end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                    if a==9
                        MOSML_Rd=max(abs(yqq_RANK_X(aa+1,xpp(aa,a)+1)-xc),abs(yqq_RMT_X(aa+1,xpp(aa,a)+1)-xc));
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosmlr=MOSML_Rd;
                        MOSAP_Rd=abs(yqq_RTOE_Y(aa+1,xpp(aa,a)+1)-yc);
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosapr=MOSAP_Rd;

                        MOSML_R=[MOSML_R;MOSML_Rd];
                        MOSAP_R=[MOSAP_R;MOSAP_Rd];

                        slr=abs(yqq_RHEE_Y(aa+1,xpp(aa,a)+1)-yqq_LHEE_Y(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.slr=slr;
                        SL_R=[SL_R;slr];

                        swr=abs(yqq_LHEE_X(aa+1,xpp(aa,a)+1)-yqq_RHEE_X(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.swr=swr;
                        SW_R=[SW_R;swr];

                        FFFR=[FFFR;xqq(aa+1,xpp(aa,a)+1)];  
                    end
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
            end
            sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(10)=dA;
        end

        if a==3 %|| a==4
            
%             l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+1))^2);
%             
%             xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RMT_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LMT_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%             yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RMT_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LMT_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
%             CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
%             FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
%             xa=[];
%             ya=[];
%             
%             if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                 xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                 xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                 xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                 xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                 xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                 xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%             %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%             %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%             %end
%             
%             if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                 xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                 xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                 xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if length(Y_LMT_Z)>4
%                 if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             else
%                 D_LMT_Z=min(ydata_LMT_Z{2,1});
%                 if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             end
%             
%             if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%                 BA=convhull(xa,ya);
%                 xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
%                 YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
%                 [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
%                 [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
%                 MOS=[MOS;dA];
%                 MOSG=[MOSG;dA];
%                 TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
%                 mos=[mos;DDA];
%                 F=[F;xqq(aa+1,xpp(aa,a)+1)];
%             end
             for c=[-1,1]

                l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
                if c==-1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(2)=dA;
                end
                if c==1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(3)=dA;
                end
                    
            end        
        end
        
        if a==4             
%             l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+1))^2);
%             
%             xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RMT_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LMT_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%             yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RMT_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LMT_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
%             CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
%             FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
%             xa=[];
%             ya=[];
%             
%             if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                 xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                 xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                 xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                 xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                 xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                 xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%             %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%             %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%             %end
%             
%             if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                 xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                 xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                 xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if length(Y_LMT_Z)>4
%                 if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             else
%                 D_LMT_Z=min(ydata_LMT_Z{2,1});
%                 if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             end
%             
%             if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%                 BA=convhull(xa,ya);
%                 xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
%                 YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
%                 [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
%                 [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
%                 MOS=[MOS;dA];
%                 MOSG=[MOSG;dA];
%                 TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
%                 mos=[mos;DDA];
%                 F=[F;xqq(aa+1,xpp(aa,a)+1)];
%             end
             for c=0

                l=sqrt((yqq_RANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_RANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==0
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
            end
            sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(4)=dA;
        end

        if a==5 %|| a==6
            
%             l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+1))^2);
%             
%             xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RMT_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LMT_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%             yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RMT_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LMT_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
%             CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
%             FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
%             xa=[];
%             ya=[];
%             
%             if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                 xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                 xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                 xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                 xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                 xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                 xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%             %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%             %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%             %end
%             
%             if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                 xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                 xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                 xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if length(Y_LMT_Z)>4
%                 if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             else
%                 D_LMT_Z=min(ydata_LMT_Z{2,1});
%                 if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             end
%             
%             if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%                 BA=convhull(xa,ya);
%                 xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
%                 YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
%                 [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
%                 [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
%                 MOS=[MOS;dA];
%                 MOSG=[MOSG;dA];
%                 TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
%                 mos=[mos;DDA];
%                 F=[F;xqq(aa+1,xpp(aa,a)+1)];
%                 if a==5
%                     MOSML_Ld=max(abs(yqq_LANK_X(aa+1,xpp(aa,a)+1)-xc),abs(yqq_LMT_X(aa+1,xpp(aa,a)+1)-xc));
%                     sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosmll=MOSML_Ld;
%                     MOSAP_Ld=abs(yqq_LTOE_Y(aa+1,xpp(aa,a)+1)-yc);
%                     sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosapl=MOSAP_Ld;
%                     
%                     MOSML_L=[MOSML_L;MOSML_Ld];
%                     MOSAP_L=[MOSAP_L;MOSAP_Ld];
%                     
%                     sll=abs(yqq_LHEE_Y(aa+1,xpp(aa,a)+1)-yqq_RHEE_Y(aa+1,xpp(aa,a)+1));
%                     sub(S).ty(Ty).tn(Tn).gp(aa).sp.sll=sll;
%                     SL_L=[SL_L;sll];
%                     
%                     swl=abs(yqq_LHEE_X(aa+1,xpp(aa,a)+1)-yqq_RHEE_X(aa+1,xpp(aa,a)+1));
%                     sub(S).ty(Ty).tn(Tn).gp(aa).sp.swl=swl;
%                     SW_L=[SW_L;swl];
%                     
%                     FFFL=[FFFL;xqq(aa+1,xpp(aa,a)+1)];
%                 end
%             end
            for c=[-1,1]

                l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==1
                    xa=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1)];
                end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                    if a==5
                        MOSML_Ld=max(abs(yqq_LANK_X(aa+1,xpp(aa,a)+1)-xc),abs(yqq_LMT_X(aa+1,xpp(aa,a)+1)-xc));
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosmll=MOSML_Ld;
                        MOSAP_Ld=abs(yqq_LTOE_Y(aa+1,xpp(aa,a)+1)-yc);
                        sub(S).ty(Ty).tn(Tn).gp(aa).stab.mosapl=MOSAP_Ld;

                        MOSML_L=[MOSML_L;MOSML_Ld];
                        MOSAP_L=[MOSAP_L;MOSAP_Ld];

                        sll=abs(yqq_LHEE_Y(aa+1,xpp(aa,a)+1)-yqq_RHEE_Y(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.sll=sll;
                        SL_L=[SL_L;sll];

                        swl=abs(yqq_LHEE_X(aa+1,xpp(aa,a)+1)-yqq_RHEE_X(aa+1,xpp(aa,a)+1));
                        sub(S).ty(Ty).tn(Tn).gp(aa).sp.swl=swl;
                        SW_L=[SW_L;swl];

                        FFFL=[FFFL;xqq(aa+1,xpp(aa,a)+1)];
                    end
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
                if c==-1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(5)=dA;
                end
                if c==1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(6)=dA;
                end
            end
        end

        if a==7 %|| a==8
            
%             l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+1))^2);
%             
%             xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RMT_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LMT_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%             yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RMT_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LMT_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
%             CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
%             FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
%             xa=[];
%             ya=[];
%             
%             if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                 xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                 xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                 xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                 xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                 xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                 xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%             %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%             %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%             %end
%             
%             if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                 xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                 xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                 xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if length(Y_LMT_Z)>4
%                 if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             else
%                 D_LMT_Z=min(ydata_LMT_Z{2,1});
%                 if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             end
%             
%             if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%                 BA=convhull(xa,ya);
%                 xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
%                 YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
%                 [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
%                 [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
%                 MOS=[MOS;dA];
%                 MOSG=[MOSG;dA];
%                 TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
%                 mos=[mos;DDA];
%                 F=[F;xqq(aa+1,xpp(aa,a)+1)];
%             end
            for c=[-1,1]

                l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==1
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                    
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
                if c==-1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(7)=dA;
                end
                if c==1
                    sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(8)=dA;
                end
            end
        end
        
        if a==8
            
%             l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+1))^2);
%             
%             xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RMT_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LMT_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%             yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RMT_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LMT_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
%             CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
%             FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
%             xa=[];
%             ya=[];
%             
%             if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
%                 xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
%                 xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
%                 xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
%                 xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_1 && xpp(aa,a)<=XD_RANK_M_Z_1) || (yqq_RANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_M_Z_2 && xpp(aa,a)>=XD_RANK_M_Z_2)
%                 xa=[xa,yqq_RANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_1 && xpp(aa,a)<=XD_LANK_M_Z_1) || (yqq_LANK_M_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_M_Z_2 && xpp(aa,a)>=XD_LANK_M_Z_2)
%                 xa=[xa,yqq_LANK_M_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LANK_M_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
%             %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
%             %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
%             %end
%             
%             if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
%                 xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
%                 xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
%             end
%             
%             if yqq_RMT_Z(aa+1,xpp(aa,a)+1)<=D_RMT_Z
%                 xa=[xa,yqq_RMT_X(aa+1,xpp(aa,a)+1)];
%                 ya=[ya,yqq_RMT_Y(aa+1,xpp(aa,a)+1)];
%             end
%             if length(Y_LMT_Z)>4
%                 if (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_1 && xpp(aa,a)<=XD_LMT_Z_1) || (yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=YD_LMT_Z_2 && xpp(aa,a)>=XD_LMT_Z_2)
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             else
%                 D_LMT_Z=min(ydata_LMT_Z{2,1});
%                 if yqq_LMT_Z(aa+1,xpp(aa,a)+1)<=D_LMT_Z
%                     xa=[xa,yqq_LMT_X(aa+1,xpp(aa,a)+1)];
%                     ya=[ya,yqq_LMT_Y(aa+1,xpp(aa,a)+1)];
%                 end
%             end
%             
%             if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%                 BA=convhull(xa,ya);
%                 xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
%                 XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
%                 YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
%                 [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
%                 [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
%                 MOS=[MOS;dA];
%                 MOSG=[MOSG;dA];
%                 TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
%                 mos=[mos;DDA];
%                 F=[F;xqq(aa+1,xpp(aa,a)+1)];
%             end
            for c=0

                l=sqrt((yqq_LANK_X(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_X(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Y(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1))^2+(yqq_LANK_Z(aa+1,xpp(aa,a)+c+1)-yqq_XCOM_Z(aa+1,xpp(aa,a)+c+1))^2);

                xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1),yqq_RMT_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_X(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_RMT_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_Y(aa+1,xpp(aa,a)+c+1),yqq_RANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+c+1)];
                CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)];
                FF=[FF,xqq(aa+1,xpp(aa,a)+c)];
                if c==-1
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1),yqq_RTOE_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+c+1)];
                end
                
                if c==0
                    xa=[yqq_LHEE_X(aa+1,xpp(aa,a)+c+1),yqq_LTOE_X(aa+1,xpp(aa,a)+c+1),yqq_LMT_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_X(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_X(aa+1,xpp(aa,a)+c+1)];
                    ya=[yqq_LHEE_Y(aa+1,xpp(aa,a)+c+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+c+1),yqq_LMT_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_Y(aa+1,xpp(aa,a)+c+1),yqq_LANK_M_Y(aa+1,xpp(aa,a)+c+1)];
                end

                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    BA=convhull(xa,ya);
                    xc=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+c+1)*sqrt(l/g));
                    XC=yqq_XCOM_X(aa+1,xpp(aa,a)+c+1);
                    YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+c+1);
                    [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                    [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                    MOS=[MOS;dA];
                    MOSG=[MOSG;dA];
                    TT=[TT;xqq(aa+1,xpp(aa,a)+c)];
                    mos=[mos;DDA];
                    F=[F;xqq(aa+1,xpp(aa,a)+c)];
                    
                end
                plot(xaax,yaay+(((a-1)*TTT)+((c+1)*T)),'D');
                if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                    %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
                    plot(xa(BA),ya(BA)+(((a-1)*TTT)+((c+1)*T)),'r-',xc,yc+(((a-1)*TTT)+((c+1)*T)),'g*',xa,ya+(((a-1)*TTT)+((c+1)*T)),'r*',XC,YC+(((a-1)*TTT)+((c+1)*T)),'b*');
                    %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
                    text((yqq_RANK_X(aa+1,xpp(aa,a)+c+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+c+1))+(((a-1)*TTT)+((c+1)*T)),num2str(xpp(aa,a)+c));
                    hold on;
%                 else 
%                     %plot(ya+((a-1)*T),xa,'r*');
%                     %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%                     plot(xa,ya+((a-1)*T),'r*');
%                     text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%                     hold on;
                end
            end
            sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(9)=dA;
        end
        
%         plot(xaax,yaay+((a-1)*T),'D');
%         if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
%             %plot(ya(BA)+((a-1)*T),xa(BA),'r-',yc+((a-1)*T),xc,'g*',ya+((a-1)*T),xa,'r*',YC+((a-1)*T),XC,'b*');
%             plot(xa(BA),ya(BA)+((a-1)*T),'r-',xc,yc+((a-1)*T),'g*',xa,ya+((a-1)*T),'r*',XC,YC+((a-1)*T),'b*');
%             %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%             text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%             hold on;
%         else 
%             %plot(ya+((a-1)*T),xa,'r*');
%             %text((yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
%             plot(xa,ya+((a-1)*T),'r*');
%             text((yqq_RANK_X(aa+1,xpp(aa,a)+1))-10,(yqq_RANK_Y(aa+1,xpp(aa,a)+1))+((a-1)*T),num2str(xpp(aa,a)));
%             hold on;
%         end
%     sub(S).ty(Ty).tn(Tn).gp(aa).stab.mos(a)=dA;    
    end
    M3=getframe(gcf);
    writeVideo(Mov3,M3);
    hold off;
    %figure('Name','MOS: Green; mos: Blue')
    %plot(F,MOS,'g*',F,mos,'b*',F,MOS,'g-',F,mos,'b-');
    M1=getframe(gcf);
    writeVideo(Mov1,M1);
    %figure('Name','CVX: Red; CVY: Blue')
    %plot(FF,CVX,'r-',FF,CVY,'b-');
    M2=getframe(gcf);
    writeVideo(Mov2,M2);
end
close(Mov1);
close(Mov2);
close(Mov3);
ST_R=[];
ST_L=[];
ST_R=[ST_R,0];
ST_L=[ST_L,0];
O_L=[];
O_R=[];
SwT_R=[];
O_wL=[];
O_wR=[];
SwT_L=[];
%Stride Time

for gg=1:ooo-1
    st=(GC_Right_V(gg+1,1)-GC_Right_V(gg,1))/f;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.st_r=st;
    ST_R=[ST_R;st];
    O_R=[O_R;gg];
end
for gg=1:ooo-1
    st=(GC_Right_V(gg+1,3)-GC_Right_V(gg,3))/f;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.st_l=st;
    ST_L=[ST_L;st];
    O_L=[O_L;gg];
end

% Swing Time Right

for gg=1:ooo
    swt=(GC_Right_V(gg,5)-GC_Right_V(gg,4))/f;
    SwT_R=[SwT_R;swt];
    O_wR=[O_wR;gg];
end

% Swing Time Left

for gg=1:ooo
    swt=(GC_Right_V(gg,3)-GC_Right_V(gg,2))/f;
    SwT_L=[SwT_L;swt];
    O_wL=[O_wL;gg];
end


SS_R=[];
SS_L=[];
O_SS_R=[];
O_SS_L=[];
DS1=[];
O_DS1=[];
DS2=[];
O_DS2=[];

% Right Single Support
for gg=1:ooo
    ss=((GC_Right_V(gg,3)-GC_Right_V(gg,2))/(GC_Right_V(gg,5)-GC_Right_V(gg,1)))*100;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.ssr=ss;
    SS_R=[SS_R;ss];
    O_SS_R=[O_SS_R;gg];
end

% Left Single Support
for gg=1:ooo
    ss=((GC_Right_V(gg,5)-GC_Right_V(gg,4))/(GC_Right_V(gg,5)-GC_Right_V(gg,1)))*100;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.ssl=ss;
    SS_L=[SS_L;ss];
    O_SS_L=[O_SS_L;gg];
end


% Double Support 1

for gg=1:ooo
    ds=((GC_Right_V(gg,2)-GC_Right_V(gg,1))/(GC_Right_V(gg,5)-GC_Right_V(gg,1)))*100;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.ds1=ds;    
    DS1=[DS1;ds];
    O_DS1=[O_DS1;gg];
end

% Double Support 2

for gg=1:ooo
    ds=((GC_Right_V(gg,4)-GC_Right_V(gg,3))/(GC_Right_V(gg,5)-GC_Right_V(gg,1)))*100;
    sub(S).ty(Ty).tn(Tn).gp(gg).temp.ds2=ds;    
    DS2=[DS2;ds];
    O_DS2=[O_DS2;gg];
end

% C7 wrt SACR
% C7_Xn=A_V.C7_X-SACR_X;
% C7_Yn=A_V.C7_X-SACR_Y;
% C7_Zn=A_V.C7_X-SACR_Z;

% Step Length

% Stride Time for Left Foot: ST_L O_L
% Stride Time for Right Foot: ST_R O_R
% C7 wrt SACR: (C7_Xn,C7_Yn,C7_Zn) F
% Step Width at RHS: SW_R FFFR
% Step Width at LHS: SW_L FFFL
% Step Length at RHS: SL_R FFFR
% Step Length at LHS: SL_L FFFL
% MOS ML at LHS: MOSML_L FFFL
% MOS AP at LHS: MOSAP_L FFFL
% MOS ML at RHS: MOSML_R FFFR
% MOS AP at RHS: MOSAP_R FFFR
% MOS for entire trial: MOSG TT
% Swing Time for Left Foot: SwT_L O_Lw
% Swing Time for Right Foot: SwT_R O_Rw
% Right Single Support: SS_R O_SS_R
% Left Single Support: SS_L O_SS_L
% Double Support 1: DS1 O_DS1
% Double Support 2: DS2 O_DS2




