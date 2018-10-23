figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    slr_a=[];
    slr_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            slr_a=[slr_a,plts(A_A).ty(B_B).tn(D_D).sp.slr_avg];
            slr_s=[slr_s,plts(A_A).ty(B_B).tn(D_D).sp.slr_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(slr_a,slr_s,[],[],strcat('Step Length at RHS of S',int2str(A_A)),'Trials','Distance b/w LHEE and RHEE (Walking direction) in mms',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    sll_a=[];
    sll_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            sll_a=[sll_a,plts(A_A).ty(B_B).tn(D_D).sp.sll_avg];
            sll_s=[sll_s,plts(A_A).ty(B_B).tn(D_D).sp.sll_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(sll_a,sll_s,[],[],strcat('Step Length at LHS of S',int2str(A_A)),'Trials','Distance b/w LHEE and RHEE (Walking direction) in mms',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    swr_a=[];
    swr_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            swr_a=[swr_a,plts(A_A).ty(B_B).tn(D_D).sp.swr_avg];
            swr_s=[swr_s,plts(A_A).ty(B_B).tn(D_D).sp.swr_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(swr_a,swr_s,[],[],strcat('Step Width at RHS of S',int2str(A_A)),'Trials','Distance b/w LHEE and RHEE (Perpendicular to Walking direction) in mms',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    swl_a=[];
    swl_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            swl_a=[swl_a,plts(A_A).ty(B_B).tn(D_D).sp.swl_avg];
            swl_s=[swl_s,plts(A_A).ty(B_B).tn(D_D).sp.swl_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(swl_a,swl_s,[],[],strcat('Step Width at LHS of S',int2str(A_A)),'Trials','Distance b/w LHEE and RHEE (Perpendicular to Walking direction) in mms',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    st_r_a=[];
    st_r_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            st_r_a=[st_r_a,plts(A_A).ty(B_B).tn(D_D).temp.st_r_avg];
            st_r_s=[st_r_s,plts(A_A).ty(B_B).tn(D_D).temp.st_r_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(st_r_a,st_r_s,[],[],strcat('Stride Time for Right Foot of S',int2str(A_A)),'Trials','Time taken in secs b/w consecutive RHS',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    st_l_a=[];
    st_l_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            st_l_a=[st_l_a,plts(A_A).ty(B_B).tn(D_D).temp.st_l_avg];
            st_l_s=[st_l_s,plts(A_A).ty(B_B).tn(D_D).temp.st_l_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(st_l_a,st_l_s,[],[],strcat('Stride Time for Left Foot of S',int2str(A_A)),'Trials','Time taken in secs b/w consecutive LHS',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    ssr_a=[];
    ssr_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            ssr_a=[ssr_a,plts(A_A).ty(B_B).tn(D_D).temp.ssr_avg];
            ssr_s=[ssr_s,plts(A_A).ty(B_B).tn(D_D).temp.ssr_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(ssr_a,ssr_s,[],[],strcat('Right Single Support Time of S',int2str(A_A)),'Trials','Time taken in % Gait Cycle b/w LTO and LHS',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    ssl_a=[];
    ssl_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            ssl_a=[ssl_a,plts(A_A).ty(B_B).tn(D_D).temp.ssl_avg];
            ssl_s=[ssl_s,plts(A_A).ty(B_B).tn(D_D).temp.ssl_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(ssl_a,ssl_s,[],[],strcat('Left Single Support Time of S',int2str(A_A)),'Trials','Time taken in % Gait Cycle b/w RTO and RHS',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    ds1_a=[];
    ds1_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            ds1_a=[ds1_a,plts(A_A).ty(B_B).tn(D_D).temp.ds1_avg];
            ds1_s=[ds1_s,plts(A_A).ty(B_B).tn(D_D).temp.ds1_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(ds1_a,ds1_s,[],[],strcat('Double Support (1) Time of S',int2str(A_A)),'Trials','Time taken in % Gait Cycle b/w RHS and LTO',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    ds2_a=[];
    ds2_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            ds2_a=[ds2_a,plts(A_A).ty(B_B).tn(D_D).temp.ds2_avg];
            ds2_s=[ds2_s,plts(A_A).ty(B_B).tn(D_D).temp.ds2_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(ds2_a,ds2_s,[],[],strcat('Double Support (2) Time of S',int2str(A_A)),'Trials','Time taken in % Gait Cycle b/w LHS and RTO',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mosmll_a=[];
    mosmll_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mosmll_a=[mosmll_a,plts(A_A).ty(B_B).tn(D_D).stab.mosmll_avg];
            mosmll_s=[mosmll_s,plts(A_A).ty(B_B).tn(D_D).stab.mosmll_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(mosmll_a,mosmll_s,[],[],strcat('Medial Lateral Margin of Stability at LHS of S',int2str(A_A)),'Trials','Distance b/w Extrapolated CoM and LMT in direction perpendicular to Walking',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mosmlr_a=[];
    mosmlr_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mosmlr_a=[mosmlr_a,plts(A_A).ty(B_B).tn(D_D).stab.mosmlr_avg];
            mosmlr_s=[mosmlr_s,plts(A_A).ty(B_B).tn(D_D).stab.mosmlr_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(mosmlr_a,mosmlr_s,[],[],strcat('Medial Lateral Margin of Stability at RHS of S',int2str(A_A)),'Trials','Distance b/w Extrapolated CoM and RMT in direction perpendicular to Walking',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mosapl_a=[];
    mosapl_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mosapl_a=[mosapl_a,plts(A_A).ty(B_B).tn(D_D).stab.mosapl_avg];
            mosapl_s=[mosapl_s,plts(A_A).ty(B_B).tn(D_D).stab.mosapl_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(mosapl_a,mosapl_s,[],[],strcat('Anterior Posterior Margin of Stability at LHS of S',int2str(A_A)),'Trials','Distance b/w Extrapolated CoM and LTOE in direction of Walking',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mosapr_a=[];
    mosapr_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mosapr_a=[mosapr_a,plts(A_A).ty(B_B).tn(D_D).stab.mosapr_avg];
            mosapr_s=[mosapr_s,plts(A_A).ty(B_B).tn(D_D).stab.mosapr_std];
        end
    end
    subplot(1,3,A_A-2);
    barweb(mosapr_a,mosapr_s,[],[],strcat('Anterior Posterior Margin of Stability at RHS of S',int2str(A_A)),'Trials','Distance b/w Extrapolated CoM and RTOE in direction of Walking',[],[],[],[],[])
    if A_A==5
        legend('BL1','BL2','BL3','BL4','T1','T2')
    else
        legend('BL1','BL2','BL3','T1','T2','T3')
    end
    hold on
end
hold off

figure
mos1_ag=[];
mos1_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos1_a=[];
    mos1_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos1_a=[mos1_a,plts(A_A).ty(B_B).tn(D_D).stab.mos1_avg];
            mos1_s=[mos1_s,plts(A_A).ty(B_B).tn(D_D).stab.mos1_std];
        end
    end
    mos1_ag=[mos1_ag;mos1_a];
    mos1_sg=[mos1_sg;mos1_s];
end
h=barwitherr(mos1_sg,mos1_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at initiating RHS'));
hold off

figure
mos2_ag=[];
mos2_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos2_a=[];
    mos2_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos2_a=[mos2_a,plts(A_A).ty(B_B).tn(D_D).stab.mos2_avg];
            mos2_s=[mos2_s,plts(A_A).ty(B_B).tn(D_D).stab.mos2_std];
        end
    end
    mos2_ag=[mos2_ag;mos2_a];
    mos2_sg=[mos2_sg;mos2_s];
end
h=barwitherr(mos2_sg,mos2_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at midpoint of initiating RHS and LTO'));
hold off

figure
mos3_ag=[];
mos3_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos3_a=[];
    mos3_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos3_a=[mos3_a,plts(A_A).ty(B_B).tn(D_D).stab.mos3_avg];
            mos3_s=[mos3_s,plts(A_A).ty(B_B).tn(D_D).stab.mos3_std];
        end
    end
    mos3_ag=[mos3_ag;mos3_a];
    mos3_sg=[mos3_sg;mos3_s];
end
h=barwitherr(mos3_sg,mos3_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at LTO'));
hold off

figure
mos4_ag=[];
mos4_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos4_a=[];
    mos4_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos4_a=[mos4_a,plts(A_A).ty(B_B).tn(D_D).stab.mos4_avg];
            mos4_s=[mos4_s,plts(A_A).ty(B_B).tn(D_D).stab.mos4_std];
        end
    end
    mos4_ag=[mos4_ag;mos4_a];
    mos4_sg=[mos4_sg;mos4_s];
end
h=barwitherr(mos4_sg,mos4_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at midpoint of LTO and LHS'));
hold off

figure
mos5_ag=[];
mos5_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos5_a=[];
    mos5_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos5_a=[mos5_a,plts(A_A).ty(B_B).tn(D_D).stab.mos5_avg];
            mos5_s=[mos5_s,plts(A_A).ty(B_B).tn(D_D).stab.mos5_std];
        end
    end
    mos5_ag=[mos5_ag;mos5_a];
    mos5_sg=[mos5_sg;mos5_s];
end
h=barwitherr(mos5_sg,mos5_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at LHS'));
hold off

figure
mos6_ag=[];
mos6_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos6_a=[];
    mos6_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos6_a=[mos6_a,plts(A_A).ty(B_B).tn(D_D).stab.mos6_avg];
            mos6_s=[mos6_s,plts(A_A).ty(B_B).tn(D_D).stab.mos6_std];
        end
    end
    mos6_ag=[mos6_ag;mos6_a];
    mos6_sg=[mos6_sg;mos6_s];
end
h=barwitherr(mos6_sg,mos6_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at midpoint of LHS and RTO'));
hold off


figure
mos7_ag=[];
mos7_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos7_a=[];
    mos7_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos7_a=[mos7_a,plts(A_A).ty(B_B).tn(D_D).stab.mos7_avg];
            mos7_s=[mos7_s,plts(A_A).ty(B_B).tn(D_D).stab.mos7_std];
        end
    end
    mos7_ag=[mos7_ag;mos7_a];
    mos7_sg=[mos7_sg;mos7_s];
end
h=barwitherr(mos7_sg,mos7_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at RTO'));
hold off


figure
mos8_ag=[];
mos8_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos8_a=[];
    mos8_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos8_a=[mos8_a,plts(A_A).ty(B_B).tn(D_D).stab.mos8_avg];
            mos8_s=[mos8_s,plts(A_A).ty(B_B).tn(D_D).stab.mos8_std];
        end
    end
    mos8_ag=[mos8_ag;mos8_a];
    mos8_sg=[mos8_sg;mos8_s];
end
h=barwitherr(mos8_sg,mos8_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at midpoint of RTO and terminating RHS'));
hold off

figure
mos9_ag=[];
mos9_sg=[];
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    mos9_a=[];
    mos9_s=[];
    for B_B = 1:length(plts(A_A).ty)
        for D_D = 1:length(plts(A_A).ty(B_B).tn)
            mos9_a=[mos9_a,plts(A_A).ty(B_B).tn(D_D).stab.mos9_avg];
            mos9_s=[mos9_s,plts(A_A).ty(B_B).tn(D_D).stab.mos9_std];
        end
    end
    mos9_ag=[mos9_ag;mos9_a];
    mos9_sg=[mos9_sg;mos9_s];
end
h=barwitherr(mos9_sg,mos9_ag);
set(gca,'XTickLabel',{'S3','S4','S5'})
legend('BL1','BL2','BL3','T1','T2','T3')
% if A_A==5
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','BL4','T1','T2')
% else
%     set(gca,'XTickLabel',{'S3','S4','S5'})
%     legend('BL1','BL2','BL3','T1','T2','T3')
% end
ylabel('Shortest distance b/x Extrapolated CoM and Base of Support')
set(h(1),'FaceColor','k');
title(strcat('General Margin of Stability at terminating RHS'));
hold off


keySet =   {1,2,3,4,5,6};
valueSet = {'r','g','b','c','y','m'};
mapObj = containers.Map(keySet,valueSet);
alpha=0.1;
for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.lfea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.lfea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Left Foot (Ankle) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.lsea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.lsea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Left Shank (Knee) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.ltea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.ltea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Left Thigh (Hip) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.rfea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.rfea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Right Foot (Ankle) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.rsea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.rsea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Right Shank (Knee) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.rtea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.rtea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Right Thigh (Hip) Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end

for A_A = 3:length(plts) % as we do not processed data of S1 and S2 yet
    figure
    t_t=0;
    for B_B = 1:length(plts(A_A).ty)
         for D_D = 1:length(plts(A_A).ty(B_B).tn)
             t_t=t_t+1;
             stdshade(plts(A_A).ty(B_B).tn(D_D).ja.pea_avg(:,1),plts(A_A).ty(B_B).tn(D_D).ja.pea_std(:,1),alpha,mapObj(t_t));
             hold on
         end
    end
    legend('BL1','','BL2','','BL3','','T1','','T2','','T3');
    title(strcat('Pelvic Euler Angle in Sagittal Plane of S',int2str(A_A)))
    xlabel('% of Gait Cycle')
    hold off
end


