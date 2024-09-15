%% Panel A
clc;clear;close all;
load('Figure_S12_data_A')

figure;
bar([1 2 3],[nanmean(GAL4_DPM(:,1)),nanmean(GAL4_DPM_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_DPM(:,1),GAL4_DPM_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4_DPM','GAL4_DPM_UAS_Shits','UAS_Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');


[H, pValue, W] = swtest(GAL4_DPM(:,1));
[H, pValue, W] = swtest(GAL4_DPM_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_DPM(:,1),GAL4_DPM_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel B
clc;clear;close all;
load('Figure_S12_data_B')

figure;
bar([1 2 3],[nanmean(GAL4_DPM(:,1)),nanmean(GAL4_DPM_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_DPM(:,1),GAL4_DPM_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4_DPM','GAL4_DPM_UAS_Shits','UAS_Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_DPM(:,1));
[H, pValue, W] = swtest(GAL4_DPM_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_DPM(:,1),GAL4_DPM_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel E
clc;clear;close all;
load('Figure_S12_data_E')

figure;
bar([1 2 3],[nanmean(DPM_GAL4(:,1)),nanmean(DPM_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(DPM_GAL4(:,1),DPM_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'DPM_GAL4','DPM_GAL4_UAS_GtACR2','UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(DPM_GAL4(:,1));
[H, pValue, W] = swtest(DPM_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(DPM_GAL4(:,1),DPM_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel F
clc;clear;close all;
load('Figure_S12_data_F')

figure;
bar([1 2 3],[nanmean(DPM_GAL4(:,1)),nanmean(DPM_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(DPM_GAL4(:,1),DPM_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'DPM_GAL4','DPM_GAL4_UAS_GtACR2','UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(DPM_GAL4(:,1));
[H, pValue, W] = swtest(DPM_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(DPM_GAL4(:,1),DPM_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

