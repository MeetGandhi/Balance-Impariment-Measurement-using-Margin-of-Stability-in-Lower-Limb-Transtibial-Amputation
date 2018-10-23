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

for aa=1:qqq
    figure
    MOS=[];
    mos=[];
    F=[];
    CVX=[];
    CVY=[];
    FF=[];
    D_RHEE_Z=findchangepts(yqq_RHEE_Z(aa+1,:),'MaxNumChanges',2);
    D_RTOE_Z=findchangepts(yqq_RTOE_Z(aa+1,:),'MaxNumChanges',2); % Start-End % Neethan and Nidarshan(withanklebrace): 3 instead of 2 
    D_RANK_Z=findchangepts(yqq_RANK_Z(aa+1,:),'MaxNumChanges',2);
    
    D_LHEE_Z=findchangepts(yqq_LHEE_Z(aa+1,:),'MaxNumChanges',2);
    D_LTOE_Z=findchangepts(yqq_LTOE_Z(aa+1,:),'MaxNumChanges',2);
    D_LANK_Z=findchangepts(yqq_LANK_Z(aa+1,:),'MaxNumChanges',2);
    
    for a=1:9
        if a==1 || a==2 || a==9
            xaax=[yqq_RHEE_X(aa+1,xpp(aa,a)+1),yqq_RTOE_X(aa+1,xpp(aa,a)+1),yqq_RANK_X(aa+1,xpp(aa,a)+1),yqq_LHEE_X(aa+1,xpp(aa,a)+1),yqq_LTOE_X(aa+1,xpp(aa,a)+1),yqq_LANK_X(aa+1,xpp(aa,a)+1)];
            yaay=[yqq_RHEE_Y(aa+1,xpp(aa,a)+1),yqq_RTOE_Y(aa+1,xpp(aa,a)+1),yqq_RANK_Y(aa+1,xpp(aa,a)+1),yqq_LHEE_Y(aa+1,xpp(aa,a)+1),yqq_LTOE_Y(aa+1,xpp(aa,a)+1),yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            CVX=[CVX,yqq_COMV_X(aa+1,xpp(aa,a)+1)];
            CVY=[CVY,yqq_COMV_Y(aa+1,xpp(aa,a)+1)];
            FF=[FF,xqq(aa+1,xpp(aa,a)+1)];
            xa=[];
            ya=[];
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RHEE_Z(2)+1)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LHEE_Z(2)+1)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RANK_Z(2)+1)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LANK_Z(2)+1)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if D_RTOE_Z(2)-D_RTOE_Z(1)<=25  % See trajectories of RTOE_Z and abrupts change in them you will find 
               D_RTOE_Z(1)=D_RTOE_Z(2);  % error in 5 out of 136 gait events, to remove thatwe are using the adjacent code
               D_RTOE_Z(2)=D_RTOE_Z(3);  %  as this error occurs for RTOE only in every trial
            end
            
            if xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RTOE_Z(1)+1) && xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RTOE_Z(2)+1)
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LTOE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LTOE_Z(2)+1)
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
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end

        if a==3 || a==4
            
            xa=[];
            ya=[];
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RHEE_Z(2)+1)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LHEE_Z(2)+1)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RANK_Z(2)+1)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LANK_Z(2)+1)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if D_RTOE_Z(2)-D_RTOE_Z(1)<=25
                D_RTOE_Z(1)=D_RTOE_Z(2);
                D_RTOE_Z(2)=D_RTOE_Z(3);
            end
            
            if xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RTOE_Z(1)+1) && xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RTOE_Z(2)+1)
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LTOE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LTOE_Z(2)+1)
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
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end

        if a==5 || a==6
            
            xa=[];
            ya=[];
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RHEE_Z(2)+1)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LHEE_Z(2)+1)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RANK_Z(2)+1)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LANK_Z(2)+1)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if D_RTOE_Z(2)-D_RTOE_Z(1)<=25
                D_RTOE_Z(1)=D_RTOE_Z(2);
                D_RTOE_Z(2)=D_RTOE_Z(3);
            end
            
            if xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RTOE_Z(1)+1) && xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RTOE_Z(2)+1)
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LTOE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LTOE_Z(2)+1)
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
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end

        if a==7 || a==8
            
            xa=[];
            ya=[];
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RHEE_Z(2)+1)
                xa=[xa,yqq_RHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LHEE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LHEE_Z(2)+1)
                xa=[xa,yqq_LHEE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LHEE_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RANK_Z(2)+1)
                xa=[xa,yqq_RANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RANK_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LANK_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LANK_Z(2)+1)
                xa=[xa,yqq_LANK_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_LANK_Y(aa+1,xpp(aa,a)+1)];
            end
            
            if D_RTOE_Z(2)-D_RTOE_Z(1)<=25
                D_RTOE_Z(1)=D_RTOE_Z(2);
                D_RTOE_Z(2)=D_RTOE_Z(3);
            end
            
            if xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_RTOE_Z(1)+1) && xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_RTOE_Z(2)+1)
                xa=[xa,yqq_RTOE_X(aa+1,xpp(aa,a)+1)];
                ya=[ya,yqq_RTOE_Y(aa+1,xpp(aa,a)+1)];
            end
            if xqq(aa+1,xpp(aa,a)+1)<=xqq(aa+1,D_LTOE_Z(1)+1) || xqq(aa+1,xpp(aa,a)+1)>=xqq(aa+1,D_LTOE_Z(2)+1)
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
                mos=[mos;DDA];
                F=[F;xqq(aa+1,xpp(aa,a)+1)];
            end
        end
        plot(xaax+((a-1)*T),yaay,'D');
        if length(xa)==length(ya) && length(xa)>=3 && length(ya)>=3
            plot(xa(BA)+((a-1)*T),ya(BA),'r-',xc+((a-1)*T),yc,'g*',xa+((a-1)*T),ya,'r*',XC+((a-1)*T),YC,'b*');
            hold on;
        end
    end
    M3=getframe(gcf);
    writeVideo(Mov3,M3);
    hold off;
    figure
    plot(F,MOS,'g*',F,mos,'b*',F,MOS,'g-',F,mos,'b-');
    M1=getframe(gcf);
    writeVideo(Mov1,M1);
    figure
    plot(FF,CVX,'r-',FF,CVY,'b-');
    M2=getframe(gcf);
    writeVideo(Mov2,M2);
end
close(Mov1);
close(Mov2);
close(Mov3);