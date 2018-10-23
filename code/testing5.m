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

yqq_RHEE_X=spline(1:height(A_V),transpose(A_V.RHEE_X),xqq);
yqq_RHEE_Y=spline(1:height(A_V),transpose(A_V.RHEE_Y),xqq);
yqq_RHEE_Z=spline(1:height(A_V),transpose(A_V.RHEE_Z),xqq);

yqq_RTOE_X=spline(1:height(A_V),transpose(A_V.RTOE_X),xqq);
yqq_RTOE_Y=spline(1:height(A_V),transpose(A_V.RTOE_Y),xqq);
yqq_RTOE_Z=spline(1:height(A_V),transpose(A_V.RTOE_Z),xqq);

yqq_RANK_X=spline(1:height(A_V),transpose(A_V.RANK_X),xqq);
yqq_RANK_Y=spline(1:height(A_V),transpose(A_V.RANK_Y),xqq);
yqq_RANK_Z=spline(1:height(A_V),transpose(A_V.RANK_Z),xqq);

yqq_LHEE_X=spline(1:height(A_V),transpose(A_V.LHEE_X),xqq);
yqq_LHEE_Y=spline(1:height(A_V),transpose(A_V.LHEE_Y),xqq);
yqq_LHEE_Z=spline(1:height(A_V),transpose(A_V.LHEE_Z),xqq);

yqq_LTOE_X=spline(1:height(A_V),transpose(A_V.LTOE_X),xqq);
yqq_LTOE_Y=spline(1:height(A_V),transpose(A_V.LTOE_Y),xqq);
yqq_LTOE_Z=spline(1:height(A_V),transpose(A_V.LTOE_Z),xqq);

yqq_LANK_X=spline(1:height(A_V),transpose(A_V.LANK_X),xqq);
yqq_LANK_Y=spline(1:height(A_V),transpose(A_V.LANK_Y),xqq);
yqq_LANK_Z=spline(1:height(A_V),transpose(A_V.LANK_Z),xqq);


yqq_XCOM_X=spline(1:height(A_V),transpose(A_V.XCOM_X),xqq);
yqq_XCOM_Y=spline(1:height(A_V),transpose(A_V.XCOM_Y),xqq);
yqq_COMV_X=spline(1:height(A_V),transpose(A_V.COMV_X),xqq);
yqq_COMV_Y=spline(1:height(A_V),transpose(A_V.COMV_Y),xqq);

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
T=500;

RHEEmin=min(A_V.RHEE_Z_Static);
RHEEmax=max(A_V.RHEE_Z_Static);
LHEEmin=min(A_V.LHEE_Z_Static);
LHEEmax=max(A_V.LHEE_Z_Static);

RANKmin=min(A_V.RANK_Z_Static);
RANKmax=max(A_V.RANK_Z_Static);
LANKmin=min(A_V.LANK_Z_Static);
LANKmax=max(A_V.LANK_Z_Static);

RTOEmin=min(A_V.RTOE_Z_Static);
RTOEmax=max(A_V.RTOE_Z_Static);
LTOEmin=min(A_V.LTOE_Z_Static);
LTOEmax=max(A_V.LTOE_Z_Static);

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


for aa=1:qqq
    MOS=[];
    mos=[];
    F=[];
    CVX=[];
    CVY=[];
    FF=[];
    
    
    figure('Name','RHEE_Z')
    findchangepts(yqq_RHEE_Z(aa+1,:),'MaxNumChanges',2);
    RHEE_Z_h=gcf;
    axesObjs_RHEE_Z=get(RHEE_Z_h,'Children');  %axes handles
    dataObjs_RHEE_Z=get(axesObjs_RHEE_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_RHEE_Z=findobj(dataObjs_RHEE_Z, 'type', 'line');
    ydata_RHEE_Z = get(lineObjs_RHEE_Z, 'YData');
    Y_RHEE_Z=unique(ydata_RHEE_Z{2,1});
    YD_RHEE_Z_1=Y_RHEE_Z(1);
    YD_RHEE_Z_2=Y_RHEE_Z(2);
    xdata_RHEE_Z = get(lineObjs_RHEE_Z, 'XData');
    X_RHEE_Z=unique(xdata_RHEE_Z{2,1});
    XD_RHEE_Z_1=X_RHEE_Z(2);
    XD_RHEE_Z_2=X_RHEE_Z(3);
    
    figure('Name','RANK_Z')
    findchangepts(yqq_RANK_Z(aa+1,:),'MaxNumChanges',2);
    RANK_Z_h=gcf;
    axesObjs_RANK_Z=get(RANK_Z_h,'Children');  %axes handles
    dataObjs_RANK_Z=get(axesObjs_RANK_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_RANK_Z=findobj(dataObjs_RANK_Z, 'type', 'line');
    ydata_RANK_Z = get(lineObjs_RANK_Z, 'YData');
    Y_RANK_Z=unique(ydata_RANK_Z{2,1});
    YD_RANK_Z_1=Y_RANK_Z(1);
    YD_RANK_Z_2=Y_RANK_Z(2);
    xdata_RANK_Z = get(lineObjs_RANK_Z, 'XData');
    X_RANK_Z=unique(xdata_RANK_Z{2,1});
    XD_RANK_Z_1=X_RANK_Z(2);
    XD_RANK_Z_2=X_RANK_Z(3);
    
    
    % Start-End % Neethan and Nidarshan(withanklebrace): 3 instead of 2
    figure('Name','RTOE_Z')
    findchangepts(yqq_RTOE_Z(aa+1,:),'MaxNumChanges',2);
    RTOE_Z_h=gcf;
    axesObjs_RTOE_Z=get(RTOE_Z_h,'Children');  %axes handles
    dataObjs_RTOE_Z=get(axesObjs_RTOE_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_RTOE_Z=findobj(dataObjs_RTOE_Z, 'type', 'line');
    ydata_RTOE_Z = get(lineObjs_RTOE_Z, 'YData');
    D_RTOE_Z=min(ydata_RTOE_Z{2,1});
    
    figure('Name','LHEE_Z')
    findchangepts(yqq_LHEE_Z(aa+1,:),'MaxNumChanges',2);
    LHEE_Z_h=gcf;
    axesObjs_LHEE_Z=get(LHEE_Z_h,'Children');  %axes handles
    dataObjs_LHEE_Z=get(axesObjs_LHEE_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_LHEE_Z=findobj(dataObjs_LHEE_Z, 'type', 'line');
    ydata_LHEE_Z = get(lineObjs_LHEE_Z, 'YData');
    Y_LHEE_Z=unique(ydata_LHEE_Z{2,1});
    YD_LHEE_Z_1=Y_LHEE_Z(1);
    YD_LHEE_Z_2=Y_LHEE_Z(2);
    xdata_LHEE_Z = get(lineObjs_LHEE_Z, 'XData');
    X_LHEE_Z=unique(xdata_LHEE_Z{2,1});
    XD_LHEE_Z_1=X_LHEE_Z(2);
    XD_LHEE_Z_2=X_LHEE_Z(3);
    
    figure('Name','LANK_Z')
    findchangepts(yqq_LANK_Z(aa+1,:),'MaxNumChanges',2);
    LANK_Z_h=gcf;
    axesObjs_LANK_Z=get(LANK_Z_h,'Children');  %axes handles
    dataObjs_LANK_Z=get(axesObjs_LANK_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_LANK_Z=findobj(dataObjs_LANK_Z, 'type', 'line');
    ydata_LANK_Z = get(lineObjs_LANK_Z, 'YData');
    Y_LANK_Z=unique(ydata_LANK_Z{2,1});
    YD_LANK_Z_1=Y_LANK_Z(1);
    YD_LANK_Z_2=Y_LANK_Z(2);
    xdata_LANK_Z = get(lineObjs_LANK_Z, 'XData');
    X_LANK_Z=unique(xdata_LANK_Z{2,1});
    XD_LANK_Z_1=X_LANK_Z(2);
    XD_LANK_Z_2=X_LANK_Z(3);
    
    
    figure('Name','LTOE_Z')
    findchangepts(yqq_LTOE_Z(aa+1,:),'MaxNumChanges',2);
    LTOE_Z_h=gcf;
    axesObjs_LTOE_Z=get(LTOE_Z_h,'Children');  %axes handles
    dataObjs_LTOE_Z=get(axesObjs_LTOE_Z,'Children'); %handles to low-level graphics objects in axes
    lineObjs_LTOE_Z=findobj(dataObjs_LTOE_Z, 'type', 'line');
    ydata_LTOE_Z = get(lineObjs_LTOE_Z, 'YData');
    Y_LTOE_Z=unique(ydata_LTOE_Z{2,1});
    YD_LTOE_Z_1=Y_LTOE_Z(1);
    YD_LTOE_Z_2=Y_LTOE_Z(2);
    xdata_LTOE_Z = get(lineObjs_LTOE_Z, 'XData');
    X_LTOE_Z=unique(xdata_LTOE_Z{2,1});
    XD_LTOE_Z_1=X_LTOE_Z(2);
    XD_LTOE_Z_2=X_LTOE_Z(3);
    
    figure
    for a=1:9
        if a==1 || a==2 || a==9
            xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1)];
            yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
            CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
            FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
            xa=[];
            ya=[];
            
            if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
            %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
            %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
            %end
            
            if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
                xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                BA=convhull(xa,ya);
                xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
                YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
                [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                MOS=[MOS;dA];
                MOSG=[MOSG;dA];
                TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
                if a==9
                    MOSML_Rd=abs(yqq_RANK_Y(aa+1,xpp(aa,a)+1)-yc);
                    MOSAP_Rd=abs(yqq_RTOE_X(aa+1,xpp(aa,a)+1)-xc);
                    MOSML_R=[MOSML_R;MOSML_Rd];
                    MOSAP_R=[MOSAP_R;MOSAP_Rd];
                    
                    slr=yqq_RHEE_X(aa+1,xpp(aa,a)+1)-yqq_LHEE_X(aa+1,xpp(aa,a)+1);
                    SL_R=[SL_R;slr];
                    
                    swr=yqq_LHEE_Y(aa+1,xpp(aa,a)+1)-yqq_RHEE_Y(aa+1,xpp(aa,a)+1);
                    SW_R=[SW_R;swr];
                    
                    FFFR=[FFFR;xqq(aa+1,xpp(aa,a)+1)];  
                end
            end
        end

        if a==3 || a==4
            
            xa=[];
            ya=[];
            if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
            %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
            %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
            %end
            
            if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
                xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1)];
            yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
            CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
            FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
            if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                BA=convhull(xa,ya);
                xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
                YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
                [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                MOS=[MOS;dA];
                MOSG=[MOSG;dA];
                TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end

        if a==5 || a==6
            
            xa=[];
            ya=[];
            if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
            %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
            %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
            %end
            
            if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
                xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1)];
            yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
            CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
            FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
            if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                BA=convhull(xa,ya);
                xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
                YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
                [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                MOS=[MOS;dA];
                MOSG=[MOSG;dA];
                TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
                if a==5
                    MOSML_Ld=abs(yqq_LANK_Y(aa+1,xpp(aa,a)+1)-yc);
                    MOSAP_Ld=abs(yqq_LTOE_X(aa+1,xpp(aa,a)+1)-xc);
                    MOSML_L=[MOSML_L;MOSML_Ld];
                    MOSAP_L=[MOSAP_L;MOSAP_Ld];
                    
                    sll=yqq_LHEE_X(aa+1,xpp(aa,a)+1)-yqq_RHEE_X(aa+1,xpp(aa,a)+1);
                    SL_L=[SL_L;sll];
                    
                    swl=yqq_LHEE_Y(aa+1,xpp(aa,a)+1)-yqq_RHEE_Y(aa+1,xpp(aa,a)+1);
                    SW_L=[SW_L;swl];
                    
                    FFFL=[FFFL;xqq(aa+1,xpp(aa,a)+1)];
                end
            end
        end

        if a==7 || a==8
            
            xa=[];
            ya=[];
            if (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_1 && xpp(aa,a)<=XD_RHEE_Z_1) || (yqq_RHEE_Z(aa+1,xpp(aa,a)+1)<=YD_RHEE_Z_2 && xpp(aa,a)>=XD_RHEE_Z_2)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_1 && xpp(aa,a)<=XD_LHEE_Z_1) || (yqq_LHEE_Z(aa+1,xpp(aa,a)+1)<=YD_LHEE_Z_2 && xpp(aa,a)>=XD_LHEE_Z_2)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_1 && xpp(aa,a)<=XD_RANK_Z_1) || (yqq_RANK_Z(aa+1,xpp(aa,a)+1)<=YD_RANK_Z_2 && xpp(aa,a)>=XD_RANK_Z_2)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_1 && xpp(aa,a)<=XD_LANK_Z_1) || (yqq_LANK_Z(aa+1,xpp(aa,a)+1)<=YD_LANK_Z_2 && xpp(aa,a)>=XD_LANK_Z_2)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            %if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
            %   D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
            %   D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
            %end
            
            if yqq_RTOE_Z(aa+1,xpp(aa,a)+1)<=D_RTOE_Z
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_1 && xpp(aa,a)<=XD_LTOE_Z_1) || (yqq_LTOE_Z(aa+1,xpp(aa,a)+1)<=YD_LTOE_Z_2 && xpp(aa,a)>=XD_LTOE_Z_2)
                xa=[xa,yqq_LTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1)];
            yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
            CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
            FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
            if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
                BA=convhull(xa,ya);
                xc=yqq_XCOM_X(aa+1,xpp(aa,a)+1)+(yqq_COMV_X(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                yc=yqq_XCOM_Y(aa+1,xpp(aa,a)+1)+(yqq_COMV_Y(aa+1,xpp(aa,a)+1)*sqrt(l/g));
                XC=yqq_XCOM_X(aa+1,xpp(aa,a)+1);
                YC=yqq_XCOM_Y(aa+1,xpp(aa,a)+1);
                [dA,XA,YA]=p_poly_dist(xc,yc,xa,ya);
                [DDA,XXA,YYA]=p_poly_dist(XC,YC,xa,ya);
                MOS=[MOS;dA];
                MOSG=[MOSG;dA];
                TT=[TT;xqq(aa+1,xpp(aa,a)+1)];
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end
        plot(xaax+((a-1)*T),yaay,'D');
        if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
            plot(xa(BA)+((a-1)*T),ya(BA),'r-',xc+((a-1)*T),yc,'g*',xa+((a-1)*T),ya,'r*',XC+((a-1)*T),YC,'b*');
            text((yqq_RANK_X(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_Y(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
            hold on;
        else 
            plot(xa+((a-1)*T),ya,'r*');
            text((yqq_RANK_X(aa+1,xpp(aa,a)+1))+((a-1)*T),(yqq_RANK_Y(aa+1,xpp(aa,a)+1))-10,num2str(xpp(aa,a)));
            hold on;
        end
        
    end
    M3=getframe(gcf);
    writeVideo(Mov3,M3);
    hold off;
    figure('Name','MOS: Green; mos: Blue')
    plot(F,MOS,'g*',F,mos,'b*',F,MOS,'g-',F,mos,'b-');
    M1=getframe(gcf);
    writeVideo(Mov1,M1);
    figure('Name','CVX: Red; CVY: Blue')
    plot(FF,CVX,'r-',FF,CVY,'b-');
    M2=getframe(gcf);
    writeVideo(Mov2,M2);
end
close(Mov1);
close(Mov2);
close(Mov3);
ST_R=[];
ST_L=[];
O_L=[];
O_R=[];
SwT_R=[];
O_wL=[];
O_wR=[];
SwT_L=[];
%Stride Time
for gg=1:ooo-1
    st=(GC_Right_V(gg+1,1)-GC_Right_V(gg,1))/f;
    ST_R=[ST_R;st];
    O_R=[O_R;gg];
end
for gg=1:ooo-1
    st=(GC_Right_V(gg+1,3)-GC_Right_V(gg,3))/f;
    ST_L=[ST_L;st];
    O_L=[O_L;gg];
end

% Swing Time Right

for gg=1:ooo-1
    swt=(GC_Right_V(gg,5)-GC_Right_V(gg,4))/f;
    SwT_R=[SwT_R;swt];
    O_wR=[O_wR;gg];
end

% Swing Time Left

for gg=1:ooo-1
    swt=(GC_Right_V(gg,3)-GC_Right_V(gg,2))/f;
    SwT_L=[SwT_L;swt];
    O_wL=[O_wL;gg];
end

%C7 wrt SACR
C7_Xn=A_V.C7_X-SACR_X;
C7_Yn=A_V.C7_X-SACR_Y;
C7_Zn=A_V.C7_X-SACR_Z;

%Step Length

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
