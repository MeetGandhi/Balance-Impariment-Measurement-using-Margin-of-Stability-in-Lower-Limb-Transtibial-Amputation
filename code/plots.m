figure
plot(Timew,C7_Xnw,'g',Time,C7_Xn,'r');
title('Manan')
legend('with','without')
xlabel('Time(s)')
ylabel('C7_X wrt SACR_X')

figure
plot(Timew,C7_Ynw,'g',Time,C7_Yn,'r');
title('Manan')
legend('with','without')
xlabel('Time(s)')
ylabel('C7_Y wrt SACR_Y')

figure
plot(Timew,C7_Znw,'g',Time,C7_Zn,'r');
title('Manan')
legend('with','without')
xlabel('Time(s)')
ylabel('C7_Z wrt SACR_Z')

figure
plot(TTw,MOSGw,'g',TT,MOSG,'r');
title('Manan')
legend('with','without')
xlabel('Frames')
ylabel('MOS')

figure
plot(O_Rw,ST_Rw,'g',O_R,ST_R,'r');
title('Manan')
legend('with','without')
ylabel('Stride Time of Right Foot')
xlabel('Gait Cycle')

figure
plot(O_Lw,ST_Lw,'g',O_L,ST_L,'r');
title('Manan')
legend('with','without')
ylabel('Stride Time of Left Foot')
xlabel('Gait Cycle')

figure
plot(FFFRw,SW_Rw,'g',FFFR,SW_R,'r');
title('Manan')
legend('with','without')
ylabel('Step Width at RHS')
xlabel('Frames')

figure
plot(FFFLw,SW_Lw,'g',FFFL,SW_L,'r');
title('Manan')
legend('with','without')
ylabel('Step Width at LHS')
xlabel('Frames')

figure
plot(FFFRw,SL_Rw,'g',FFFR,SL_R,'r');
title('Manan')
legend('with','without')
ylabel('Step Length at RHS')
xlabel('Frames')

figure
plot(FFFLw,SL_Lw,'g',FFFL,SL_L,'r');
title('Manan')
legend('with','without')
ylabel('Step Length at LHS')
xlabel('Frames')

figure
plot(FFFRw,MOSML_Rw,'g',FFFR,MOSML_R,'r');
title('Manan')
legend('with','without')
ylabel('MOS ML at RHS')
xlabel('Frames')


figure
plot(FFFRw,MOSAP_Rw,'g',FFFR,MOSAP_R,'r');
title('Manan')
legend('with','without')
ylabel('MOS AP at RHS')
xlabel('Frames')

figure
plot(FFFLw,MOSAP_Lw,'g',FFFL,MOSAP_L,'r');
title('Manan')
legend('with','without')
ylabel('MOS AP at LHS')
xlabel('Frames')

figure
plot(FFFLw,MOSML_Lw,'g',FFFL,MOSML_L,'r');
title('Manan')
legend('with','without')
ylabel('MOS ML at LHS')
xlabel('Frames')

figure
plot(O_wLw,SwT_Lw,'g',O_wL,SwT_L,'r');
title('Manan')
legend('with','without')
ylabel('Swing Time of Left Foot')
xlabel('Gait Cycle')

figure
plot(O_wRw,SwT_Rw,'g',O_wR,SwT_R,'r');
title('Manan')
legend('with','without')
ylabel('Swing Time of Right Foot')
xlabel('Gait Cycle')