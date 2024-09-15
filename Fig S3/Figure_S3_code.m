clc;clear;close all;
load('Figure_S3_data.mat');
%%
figure;
bar([1 2 3],[nanmean(GAL4_71G10(:,1)),nanmean(GAL4_71G10_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_71G10(:,1),GAL4_71G10_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'71G10 GAL4','71G10 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 3.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_71G10(:,1));
[H, pValue, W] = swtest(GAL4_71G10_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_71G10(:,1),GAL4_71G10_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')



figure;
bar([1 2 3],[nanmean(GAL4_MB085C(:,1)),nanmean(GAL4_MB085C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'MB085C GAL4','MB085C GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 3.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB085C(:,1));
[H, pValue, W] = swtest(GAL4_MB085C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

