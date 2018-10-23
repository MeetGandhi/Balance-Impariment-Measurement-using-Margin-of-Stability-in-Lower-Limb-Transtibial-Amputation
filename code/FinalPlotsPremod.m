for S_S = 1:length(sub)
    for Y_Y = 1:length(sub(S_S).ty)
        for N_N = 1:length(sub(S_S).ty(Y_Y).tn)
            sll_a=[];
            slr_a=[];
            swl_a=[];
            swr_a=[];
            
            st_r_a=[];
            st_l_a=[];
            ssr_a=[];
            ssl_a=[];
            ds1_a=[];
            ds2_a=[];
            
            mosmll_a=[];
            mosmlr_a=[];
            mosapl_a=[];
            mosapr_a=[];
            mos1_a=[];
            mos2_a=[];
            mos3_a=[];
            mos4_a=[];
            mos5_a=[];
            mos6_a=[];
            mos7_a=[];
            mos8_a=[];
            mos9_a=[];
            mos10_a=[];
            
            
            
            for C_C = 1:length(sub(S_S).ty(Y_Y).tn(N_N).gp)-1
                st_r_a=[st_r_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.st_r];
                st_l_a=[st_l_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.st_l];
            end
           
            for C_C = 1:length(sub(S_S).ty(Y_Y).tn(N_N).gp)
                
                sll_a=[sll_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).sp.sll];
                slr_a=[slr_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).sp.slr];
                swl_a=[swl_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).sp.swl];
                swr_a=[swr_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).sp.swr];
                
                ssr_a=[ssr_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.ssr];
                ssl_a=[ssl_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.ssl];
                ds1_a=[ds1_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.ds1];
                ds2_a=[ds2_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).temp.ds2];
                
                mosmll_a=[mosmll_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mosmll];
                mosmlr_a=[mosmlr_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mosmlr];
                mosapl_a=[mosapl_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mosapl];
                mosapr_a=[mosapr_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mosapr];
                
                mos1_a=[mos1_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(1)];
                mos2_a=[mos2_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(2)];
                mos3_a=[mos3_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(3)];
                mos4_a=[mos4_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(4)];
                mos5_a=[mos5_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(5)];
                mos6_a=[mos6_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(6)];
                mos7_a=[mos7_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(7)];
                mos8_a=[mos8_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(8)];
                mos9_a=[mos9_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(9)];
                mos10_a=[mos10_a,sub(S_S).ty(Y_Y).tn(N_N).gp(C_C).stab.mos(10)];
                             
                
            end
            
            for V_V = 1:101
                sacr_x_a=[];
                sacr_y_a=[];
                sacr_z_a=[];
                
                rilia_x_a=[];
                rilia_y_a=[];
                rilia_z_a=[];
                
                lilia_x_a=[];
                lilia_y_a=[];
                lilia_z_a=[];
                
                rasi_x_a=[];
                rasi_y_a=[];
                rasi_z_a=[];
                
                lasi_x_a=[];
                lasi_y_a=[];
                lasi_z_a=[];
                
                rknee_x_a=[];
                rknee_y_a=[];
                rknee_z_a=[];
                
                rkneem_x_a=[];
                rkneem_y_a=[];
                rkneem_z_a=[];
                
                lknee_x_a=[];
                lknee_y_a=[];
                lknee_z_a=[];
                
                lkneem_x_a=[];
                lkneem_y_a=[];
                lkneem_z_a=[];
                
                rthm_x_a=[];
                rthm_y_a=[];
                rthm_z_a=[];
                
                rthl_x_a=[];
                rthl_y_a=[];
                rthl_z_a=[];
                
                lthm_x_a=[];
                lthm_y_a=[];
                lthm_z_a=[];
                
                lthl_x_a=[];
                lthl_y_a=[];
                lthl_z_a=[];
                
                rcon_x_a=[];
                rcon_y_a=[];
                rcon_z_a=[];
                
                rfib_x_a=[];
                rfib_y_a=[];
                rfib_z_a=[];
                
                lcon_x_a=[];
                lcon_y_a=[];
                lcon_z_a=[];
                
                lfib_x_a=[];
                lfib_y_a=[];
                lfib_z_a=[];
                
                rank_x_a=[];
                rank_y_a=[];
                rank_z_a=[];
                
                rankm_x_a=[];
                rankm_y_a=[];
                rankm_z_a=[];
                
                lank_x_a=[];
                lank_y_a=[];
                lank_z_a=[];
                
                lankm_x_a=[];
                lankm_y_a=[];
                lankm_z_a=[];
                
                rhee_x_a=[];
                rhee_y_a=[];
                rhee_z_a=[];
                
                rtoe_x_a=[];
                rtoe_y_a=[];
                rtoe_z_a=[];
                
                rmt_x_a=[];
                rmt_y_a=[];
                rmt_z_a=[];
                
                lhee_x_a=[];
                lhee_y_a=[];
                lhee_z_a=[];
                
                ltoe_x_a=[];
                ltoe_y_a=[];
                ltoe_z_a=[];
                
                lmt_x_a=[];
                lmt_y_a=[];
                lmt_z_a=[];
                
                lfea_x_a=[];
                lfea_y_a=[];
                lfea_z_a=[];
                
                lsea_x_a=[];
                lsea_y_a=[];
                lsea_z_a=[];
                
                ltea_x_a=[];
                ltea_y_a=[];
                ltea_z_a=[];
                
                rfea_x_a=[];
                rfea_y_a=[];
                rfea_z_a=[];
                
                rsea_x_a=[];
                rsea_y_a=[];
                rsea_z_a=[];
                
                rtea_x_a=[];
                rtea_y_a=[];
                rtea_z_a=[];
                
                pea_x_a=[];
                pea_y_a=[];
                pea_z_a=[];
                
                for M_M = 1:length(sub(S_S).ty(Y_Y).tn(N_N).markers)
                    sacr_x_a=[sacr_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).sacr(V_V,1)];
                    sacr_y_a=[sacr_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).sacr(V_V,2)];
                    sacr_z_a=[sacr_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).sacr(V_V,3)];
                    
                    rilia_x_a=[rilia_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rilia(V_V,1)];
                    rilia_y_a=[rilia_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rilia(V_V,2)];
                    rilia_z_a=[rilia_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rilia(V_V,3)];
                    
                    lilia_x_a=[lilia_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lilia(V_V,1)];
                    lilia_y_a=[lilia_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lilia(V_V,2)];
                    lilia_z_a=[lilia_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lilia(V_V,3)];
                    
                    rasi_x_a=[rasi_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rasi(V_V,1)];
                    rasi_y_a=[rasi_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rasi(V_V,2)];
                    rasi_z_a=[rasi_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rasi(V_V,3)];
                    
                    lasi_x_a=[lasi_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lasi(V_V,1)];
                    lasi_y_a=[lasi_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lasi(V_V,2)];
                    lasi_z_a=[lasi_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lasi(V_V,3)];
                    
                    rknee_x_a=[rknee_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee(V_V,1)];
                    rknee_y_a=[rknee_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee(V_V,2)];
                    rknee_z_a=[rknee_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee(V_V,3)];
                    
                    rkneem_x_a=[rkneem_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee_m(V_V,1)];
                    rkneem_y_a=[rkneem_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee_m(V_V,2)];
                    rkneem_z_a=[rkneem_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rknee_m(V_V,3)];
                    
                    lknee_x_a=[lknee_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee(V_V,1)];
                    lknee_y_a=[lknee_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee(V_V,2)];
                    lknee_z_a=[lknee_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee(V_V,3)];
                    
                    lkneem_x_a=[lkneem_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee_m(V_V,1)];
                    lkneem_y_a=[lkneem_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee_m(V_V,2)];
                    lkneem_z_a=[lkneem_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lknee_m(V_V,3)];
                    
                    rthm_x_a=[rthm_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_m(V_V,1)];
                    rthm_y_a=[rthm_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_m(V_V,2)];
                    rthm_z_a=[rthm_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_m(V_V,3)];
                    
                    rthl_x_a=[rthl_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_l(V_V,1)];
                    rthl_y_a=[rthl_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_l(V_V,2)];
                    rthl_z_a=[rthl_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rth_l(V_V,3)];
                    
                    lthm_x_a=[lthm_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_m(V_V,1)];
                    lthm_y_a=[lthm_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_m(V_V,2)];
                    lthm_z_a=[lthm_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_m(V_V,3)];
                    
                    lthl_x_a=[lthl_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_l(V_V,1)];
                    lthl_y_a=[lthl_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_l(V_V,2)];
                    lthl_z_a=[lthl_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lth_l(V_V,3)];
                    
                    rcon_x_a=[rcon_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rcon(V_V,1)];
                    rcon_y_a=[rcon_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rcon(V_V,2)];
                    rcon_z_a=[rcon_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rcon(V_V,3)];
                    
                    rfib_x_a=[rfib_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rfib(V_V,1)];
                    rfib_y_a=[rfib_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rfib(V_V,2)];
                    rfib_z_a=[rfib_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rfib(V_V,3)];
                    
                    lcon_x_a=[lcon_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lcon(V_V,1)];
                    lcon_y_a=[lcon_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lcon(V_V,2)];
                    lcon_z_a=[lcon_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lcon(V_V,3)];
                    
                    lfib_x_a=[lfib_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lfib(V_V,1)];
                    lfib_y_a=[lfib_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lfib(V_V,2)];
                    lfib_z_a=[lfib_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lfib(V_V,3)];
                    
                    rank_x_a=[rank_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank(V_V,1)];
                    rank_y_a=[rank_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank(V_V,2)];
                    rank_z_a=[rank_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank(V_V,3)];
                    
                    rankm_x_a=[rankm_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank_m(V_V,1)];
                    rankm_y_a=[rankm_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank_m(V_V,2)];
                    rankm_z_a=[rankm_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rank_m(V_V,3)];
                    
                    lank_x_a=[lank_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank(V_V,1)];
                    lank_y_a=[lank_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank(V_V,2)];
                    lank_z_a=[lank_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank(V_V,3)];
                    
                    lankm_x_a=[lankm_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank_m(V_V,1)];
                    lankm_y_a=[lankm_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank_m(V_V,2)];
                    lankm_z_a=[lankm_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lank_m(V_V,3)];
                    
                    rhee_x_a=[rhee_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rhee(V_V,1)];
                    rhee_y_a=[rhee_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rhee(V_V,2)];
                    rhee_z_a=[rhee_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rhee(V_V,3)];
                    
                    rtoe_x_a=[rtoe_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rtoe(V_V,1)];
                    rtoe_y_a=[rtoe_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rtoe(V_V,2)];
                    rtoe_z_a=[rtoe_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rtoe(V_V,3)];
                    
                    rmt_x_a=[rmt_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rmt(V_V,1)];
                    rmt_y_a=[rmt_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rmt(V_V,2)];
                    rmt_z_a=[rmt_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).rmt(V_V,3)];
                    
                    lhee_x_a=[lhee_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lhee(V_V,1)];
                    lhee_y_a=[lhee_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lhee(V_V,2)];
                    lhee_z_a=[lhee_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lhee(V_V,3)];
                    
                    ltoe_x_a=[ltoe_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).ltoe(V_V,1)];
                    ltoe_y_a=[ltoe_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).ltoe(V_V,2)];
                    ltoe_z_a=[ltoe_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).ltoe(V_V,3)];
                    
                    lmt_x_a=[lmt_x_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lmt(V_V,1)];
                    lmt_y_a=[lmt_y_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lmt(V_V,2)];
                    lmt_z_a=[lmt_z_a;sub(S_S).ty(Y_Y).tn(N_N).markers(M_M).lmt(V_V,3)];
                    
                end
                
                for M_M = 1:length(sub(S_S).ty(Y_Y).tn(N_N).ja)
                    
                    lfea_x_a=[lfea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lfea(V_V,1)];
                    lfea_y_a=[lfea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lfea(V_V,2)];
                    lfea_z_a=[lfea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lfea(V_V,3)];
                    
                    lsea_x_a=[lsea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lsea(V_V,1)];
                    lsea_y_a=[lsea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lsea(V_V,2)];
                    lsea_z_a=[lsea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).lsea(V_V,3)];
                    
                    ltea_x_a=[ltea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).ltea(V_V,1)];
                    ltea_y_a=[ltea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).ltea(V_V,2)];
                    ltea_z_a=[ltea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).ltea(V_V,3)];
                    
                    rfea_x_a=[rfea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rfea(V_V,1)];
                    rfea_y_a=[rfea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rfea(V_V,2)];
                    rfea_z_a=[rfea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rfea(V_V,3)];
                    
                    rsea_x_a=[rsea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rsea(V_V,1)];
                    rsea_y_a=[rsea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rsea(V_V,2)];
                    rsea_z_a=[rsea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rsea(V_V,3)];
                    
                    rtea_x_a=[rtea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rtea(V_V,1)];
                    rtea_y_a=[rtea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rtea(V_V,2)];
                    rtea_z_a=[rtea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).rtea(V_V,3)];
                    
                    pea_x_a=[pea_x_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).pea(V_V,1)];
                    pea_y_a=[pea_y_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).pea(V_V,2)];
                    pea_z_a=[pea_z_a;sub(S_S).ty(Y_Y).tn(N_N).ja(M_M).pea(V_V,3)];
                    
                end
                          
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_avg(V_V,1)=mean(sacr_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_avg(V_V,2)=mean(sacr_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_avg(V_V,3)=mean(sacr_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_std(V_V,1)=std(sacr_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_std(V_V,2)=std(sacr_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.sacr_std(V_V,3)=std(sacr_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_avg(V_V,1)=mean(rilia_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_avg(V_V,2)=mean(rilia_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_avg(V_V,3)=mean(rilia_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_std(V_V,1)=std(rilia_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_std(V_V,2)=std(rilia_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rilia_std(V_V,3)=std(rilia_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_avg(V_V,1)=mean(lilia_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_avg(V_V,2)=mean(lilia_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_avg(V_V,3)=mean(lilia_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_std(V_V,1)=std(lilia_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_std(V_V,2)=std(lilia_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lilia_std(V_V,3)=std(lilia_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_avg(V_V,1)=mean(rasi_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_avg(V_V,2)=mean(rasi_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_avg(V_V,3)=mean(rasi_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_std(V_V,1)=std(rasi_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_std(V_V,2)=std(rasi_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rasi_std(V_V,3)=std(rasi_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_avg(V_V,1)=mean(lasi_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_avg(V_V,2)=mean(lasi_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_avg(V_V,3)=mean(lasi_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_std(V_V,1)=std(lasi_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_std(V_V,2)=std(lasi_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lasi_std(V_V,3)=std(lasi_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_avg(V_V,1)=mean(rknee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_avg(V_V,2)=mean(rknee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_avg(V_V,3)=mean(rknee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_std(V_V,1)=std(rknee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_std(V_V,2)=std(rknee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_std(V_V,3)=std(rknee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_avg(V_V,1)=mean(rkneem_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_avg(V_V,2)=mean(rkneem_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_avg(V_V,3)=mean(rkneem_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_std(V_V,1)=std(rkneem_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_std(V_V,2)=std(rkneem_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rknee_m_std(V_V,3)=std(rkneem_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_avg(V_V,1)=mean(lknee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_avg(V_V,2)=mean(lknee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_avg(V_V,3)=mean(lknee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_std(V_V,1)=std(lknee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_std(V_V,2)=std(lknee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_std(V_V,3)=std(lknee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_avg(V_V,1)=mean(lkneem_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_avg(V_V,2)=mean(lkneem_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_avg(V_V,3)=mean(lkneem_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_std(V_V,1)=std(lkneem_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_std(V_V,2)=std(lkneem_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lknee_m_std(V_V,3)=std(lkneem_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_avg(V_V,1)=mean(rthm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_avg(V_V,2)=mean(rthm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_avg(V_V,3)=mean(rthm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_std(V_V,1)=std(rthm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_std(V_V,2)=std(rthm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_m_std(V_V,3)=std(rthm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_avg(V_V,1)=mean(rthl_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_avg(V_V,2)=mean(rthl_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_avg(V_V,3)=mean(rthl_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_std(V_V,1)=std(rthl_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_std(V_V,2)=std(rthl_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rth_l_std(V_V,3)=std(rthl_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_avg(V_V,1)=mean(lthm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_avg(V_V,2)=mean(lthm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_avg(V_V,3)=mean(lthm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_std(V_V,1)=std(lthm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_std(V_V,2)=std(lthm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_m_std(V_V,3)=std(lthm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_avg(V_V,1)=mean(lthl_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_avg(V_V,2)=mean(lthl_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_avg(V_V,3)=mean(lthl_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_std(V_V,1)=std(lthl_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_std(V_V,2)=std(lthl_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lth_l_std(V_V,3)=std(lthl_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_avg(V_V,1)=mean(rcon_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_avg(V_V,2)=mean(rcon_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_avg(V_V,3)=mean(rcon_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_std(V_V,1)=std(rcon_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_std(V_V,2)=std(rcon_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rcon_std(V_V,3)=std(rcon_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_avg(V_V,1)=mean(rfib_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_avg(V_V,2)=mean(rfib_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_avg(V_V,3)=mean(rfib_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_std(V_V,1)=std(rfib_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_std(V_V,2)=std(rfib_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rfib_std(V_V,3)=std(rfib_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_avg(V_V,1)=mean(lcon_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_avg(V_V,2)=mean(lcon_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_avg(V_V,3)=mean(lcon_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_std(V_V,1)=std(lcon_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_std(V_V,2)=std(lcon_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lcon_std(V_V,3)=std(lcon_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_avg(V_V,1)=mean(lfib_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_avg(V_V,2)=mean(lfib_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_avg(V_V,3)=mean(lfib_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_std(V_V,1)=std(lfib_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_std(V_V,2)=std(lfib_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lfib_std(V_V,3)=std(lfib_z_a);
                
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_avg(V_V,1)=mean(rank_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_avg(V_V,2)=mean(rank_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_avg(V_V,3)=mean(rank_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_std(V_V,1)=std(rank_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_std(V_V,2)=std(rank_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_std(V_V,3)=std(rank_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_avg(V_V,1)=mean(rankm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_avg(V_V,2)=mean(rankm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_avg(V_V,3)=mean(rankm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_std(V_V,1)=std(rankm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_std(V_V,2)=std(rankm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rank_m_std(V_V,3)=std(rankm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_avg(V_V,1)=mean(lank_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_avg(V_V,2)=mean(lank_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_avg(V_V,3)=mean(lank_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_std(V_V,1)=std(lank_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_std(V_V,2)=std(lank_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_std(V_V,3)=std(lank_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_avg(V_V,1)=mean(lankm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_avg(V_V,2)=mean(lankm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_avg(V_V,3)=mean(lankm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_std(V_V,1)=std(lankm_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_std(V_V,2)=std(lankm_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lank_m_std(V_V,3)=std(lankm_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_avg(V_V,1)=mean(rhee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_avg(V_V,2)=mean(rhee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_avg(V_V,3)=mean(rhee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_std(V_V,1)=std(rhee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_std(V_V,2)=std(rhee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rhee_std(V_V,3)=std(rhee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_avg(V_V,1)=mean(rtoe_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_avg(V_V,2)=mean(rtoe_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_avg(V_V,3)=mean(rtoe_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_std(V_V,1)=std(rtoe_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_std(V_V,2)=std(rtoe_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rtoe_std(V_V,3)=std(rtoe_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_avg(V_V,1)=mean(rmt_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_avg(V_V,2)=mean(rmt_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_avg(V_V,3)=mean(rmt_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_std(V_V,1)=std(rmt_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_std(V_V,2)=std(rmt_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.rmt_std(V_V,3)=std(rmt_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_avg(V_V,1)=mean(lhee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_avg(V_V,2)=mean(lhee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_avg(V_V,3)=mean(lhee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_std(V_V,1)=std(lhee_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_std(V_V,2)=std(lhee_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lhee_std(V_V,3)=std(lhee_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_avg(V_V,1)=mean(ltoe_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_avg(V_V,2)=mean(ltoe_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_avg(V_V,3)=mean(ltoe_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_std(V_V,1)=std(ltoe_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_std(V_V,2)=std(ltoe_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.ltoe_std(V_V,3)=std(ltoe_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_avg(V_V,1)=mean(lmt_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_avg(V_V,2)=mean(lmt_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_avg(V_V,3)=mean(lmt_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_std(V_V,1)=std(lmt_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_std(V_V,2)=std(lmt_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).markers.lmt_std(V_V,3)=std(lmt_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_avg(V_V,1)=mean(lfea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_avg(V_V,2)=mean(lfea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_avg(V_V,3)=mean(lfea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_std(V_V,1)=std(lfea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_std(V_V,2)=std(lfea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lfea_std(V_V,3)=std(lfea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_avg(V_V,1)=mean(lsea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_avg(V_V,2)=mean(lsea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_avg(V_V,3)=mean(lsea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_std(V_V,1)=std(lsea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_std(V_V,2)=std(lsea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.lsea_std(V_V,3)=std(lsea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_avg(V_V,1)=mean(ltea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_avg(V_V,2)=mean(ltea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_avg(V_V,3)=mean(ltea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_std(V_V,1)=std(ltea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_std(V_V,2)=std(ltea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.ltea_std(V_V,3)=std(ltea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_avg(V_V,1)=mean(rfea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_avg(V_V,2)=mean(rfea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_avg(V_V,3)=mean(rfea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_std(V_V,1)=std(rfea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_std(V_V,2)=std(rfea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rfea_std(V_V,3)=std(rfea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_avg(V_V,1)=mean(rsea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_avg(V_V,2)=mean(rsea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_avg(V_V,3)=mean(rsea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_std(V_V,1)=std(rsea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_std(V_V,2)=std(rsea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rsea_std(V_V,3)=std(rsea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_avg(V_V,1)=mean(rtea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_avg(V_V,2)=mean(rtea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_avg(V_V,3)=mean(rtea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_std(V_V,1)=std(rtea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_std(V_V,2)=std(rtea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.rtea_std(V_V,3)=std(rtea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_avg(V_V,1)=mean(pea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_avg(V_V,2)=mean(pea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_avg(V_V,3)=mean(pea_z_a);
                
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_std(V_V,1)=std(pea_x_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_std(V_V,2)=std(pea_y_a);
                plts(S_S).ty(Y_Y).tn(N_N).ja.pea_std(V_V,3)=std(pea_z_a);
            end
            
            plts(S_S).ty(Y_Y).tn(N_N).sp.sll_avg=mean(sll_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.sll_std=std(sll_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.slr_avg=mean(slr_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.slr_std=std(slr_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.swl_avg=mean(swl_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.swl_std=std(swl_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.swr_avg=mean(swr_a);
            plts(S_S).ty(Y_Y).tn(N_N).sp.swr_std=std(swr_a);
            
            plts(S_S).ty(Y_Y).tn(N_N).temp.st_r_avg=mean(st_r_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.st_r_std=std(st_r_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.st_l_avg=mean(st_l_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.st_l_std=std(st_l_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ssr_avg=mean(ssr_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ssr_std=std(ssr_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ssl_avg=mean(ssl_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ssl_std=std(ssl_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ds1_avg=mean(ds1_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ds1_std=std(ds1_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ds2_avg=mean(ds2_a);
            plts(S_S).ty(Y_Y).tn(N_N).temp.ds2_std=std(ds2_a);
            
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosmll_avg=mean(mosmll_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosmll_std=std(mosmll_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosmlr_avg=mean(mosmlr_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosmlr_std=std(mosmlr_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosapl_avg=mean(mosapl_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosapl_std=std(mosapl_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosapr_avg=mean(mosapr_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mosapr_std=std(mosapr_a);
            
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos1_avg=mean(mos1_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos1_std=std(mos1_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos2_avg=mean(mos2_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos2_std=std(mos2_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos3_avg=mean(mos3_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos3_std=std(mos3_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos4_avg=mean(mos4_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos4_std=std(mos4_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos5_avg=mean(mos5_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos5_std=std(mos5_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos6_avg=mean(mos6_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos6_std=std(mos6_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos7_avg=mean(mos7_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos7_std=std(mos7_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos8_avg=mean(mos8_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos8_std=std(mos8_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos9_avg=mean(mos9_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos9_std=std(mos9_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos10_avg=mean(mos10_a);
            plts(S_S).ty(Y_Y).tn(N_N).stab.mos10_std=std(mos10_a);
            
        end
    end
end