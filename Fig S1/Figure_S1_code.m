clc;clear;close all;
load('Figure_S1_data.mat'); 

%% Panel A
figure;
bar(1,nanmean(MCH_vs_oct_shock_oct_noOdorOtherSide(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([MCH_vs_oct_shock_oct_noOdorOtherSide(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');

%% Panel B
figure;
bar(1,nanmean(MCH_left_then_right(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([MCH_left_then_right(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');
%% Panel C
figure;
bar([1 2],[nanmean(operant_MCH_test_octVsIAA(:,1)),nanmean(oct_vs_IAA_valance)],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(operant_MCH_test_octVsIAA(:,1),oct_vs_IAA_valance)]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'3 oct VS IAA-after training for MCH','naive'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 2.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(operant_MCH_test_octVsIAA(:,1));
[H, pValue, W] = swtest(oct_vs_IAA_valance);

[h,p] = ttest2(operant_MCH_test_octVsIAA(:,1),oct_vs_IAA_valance)
stats=mes(operant_MCH_test_octVsIAA(:,1),oct_vs_IAA_valance,'hedgesg');

%% Panel D
figure;
bar(1,nanmean(place_learning_dark(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([place_learning_dark(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');

figure;
bar(1,nanmean(place_learning_in_light(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([place_learning_in_light(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');

%% Panel E
figure;
bar(1,nanmean(MCH_vs_oct_shock_no_odor(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([MCH_vs_oct_shock_no_odor(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');
%% Panel F

figure;
bar(1,nanmean(operant_no_shock(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([operant_no_shock(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');
%% Panel G

figure;
bar([1 2 3],[nanmean(GAL4_R58E02(:,1)),nanmean(GAL4_R58E02_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_R58E02(:,1),GAL4_R58E02_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'R58E02 GAL4','R58E02 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_R58E02(:,1));
[H, pValue, W] = swtest(GAL4_R58E02_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_R58E02(:,1),GAL4_R58E02_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
[c,m,h,gnames] =multcompare(stats)
mes1way(y,'eta2')
%% Panel H
figure;
bar(1,nanmean(max_2_shocks(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([max_2_shocks(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');

figure;
bar(1,nanmean(max_10_shocks(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([max_10_shocks(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');
