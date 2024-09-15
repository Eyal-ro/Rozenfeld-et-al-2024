clc;clear;close all;
load('Figure_S9_data.mat');
%% 

figure;
bar([1 2 3],[nanmean(SS00096_GAL4_speed(:,1)),nanmean(SS00096_GAL4_UAS_Shits_speed(:,1)),nanmean(UAS_Shits_speed(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS00096_GAL4_speed(:,1),SS00096_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'SS00096 GAL4','SS00096 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('Speed (mm/sec)');

[H, pValue, W] = swtest(SS00096_GAL4_speed(:,1));
[H, pValue, W] = swtest(SS00096_GAL4_UAS_Shits_speed(:,1));
[H, pValue, W] = swtest(UAS_Shits_speed(:,1));

y=[padcat(SS00096_GAL4_speed(:,1),SS00096_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

figure;
bar([1 2 3],[nanmean(SS00096_GAL4_dist(:,1)),nanmean(SS00096_GAL4_UAS_Shits_dist(:,1)),nanmean(UAS_Shits_dist(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS00096_GAL4_dist(:,1),SS00096_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'SS00096 GAL4','SS00096 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('dist (cm)');

[H, pValue, W] = swtest(SS00096_GAL4_dist(:,1));
[H, pValue, W] = swtest(SS00096_GAL4_UAS_Shits_dist(:,1));
[H, pValue, W] = swtest(UAS_Shits_dist(:,1));

y=[padcat(SS00096_GAL4_dist(:,1),SS00096_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))];


[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%%

figure;
bar([1 2 3],[nanmean(GMR37F06_GAL4_speed(:,1)),nanmean(GMR37F06_GAL4_UAS_Shits_speed(:,1)),nanmean(UAS_Shits_speed(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GMR37F06_GAL4_speed(:,1),GMR37F06_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GMR37F06 GAL4','GMR37F06 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('Speed (mm/sec)');

[H, pValue, W] = swtest(GMR37F06_GAL4_speed(:,1));
[H, pValue, W] = swtest(GMR37F06_GAL4_UAS_Shits_speed(:,1));
[H, pValue, W] = swtest(UAS_Shits_speed(:,1));

y=[padcat(GMR37F06_GAL4_speed(:,1),GMR37F06_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

figure;
bar([1 2 3],[nanmean(GMR37F06_GAL4_dist(:,1)),nanmean(GMR37F06_GAL4_UAS_Shits_dist(:,1)),nanmean(UAS_Shits_dist(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GMR37F06_GAL4_dist(:,1),GMR37F06_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GMR37F06 GAL4','GMR37F06 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('dist (cm)');

[H, pValue, W] = swtest(GMR37F06_GAL4_dist(:,1));
[H, pValue, W] = swtest(GMR37F06_GAL4_UAS_Shits_dist(:,1));
[H, pValue, W] = swtest(UAS_Shits_dist(:,1));

y=[padcat(GMR37F06_GAL4_dist(:,1),GMR37F06_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%%

figure;
bar([1 2 3],[nanmean(SS52628_GAL4_speed(:,1)),nanmean(SS52628_GAL4_UAS_Shits_speed(:,1)),nanmean(UAS_Shits_speed(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS52628_GAL4_speed(:,1),SS52628_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'SS52628 GAL4','SS52628 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('Speed (mm/sec)');

[H, pValue, W] = swtest(SS52628_GAL4_speed(:,1));
[H, pValue, W] = swtest(SS52628_GAL4_UAS_Shits_speed(:,1));
[H, pValue, W] = swtest(UAS_Shits_speed(:,1));

y=[padcat(SS52628_GAL4_speed(:,1),SS52628_GAL4_UAS_Shits_speed(:,1),UAS_Shits_speed(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

figure;
bar([1 2 3],[nanmean(SS52628_GAL4_dist(:,1)),nanmean(SS52628_GAL4_UAS_Shits_dist(:,1)),nanmean(UAS_Shits_dist(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS52628_GAL4_dist(:,1),SS52628_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'SS52628 GAL4','SS52628 GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);
box off;
set(gca,'TickDir','out');ylabel('dist (cm)');

[H, pValue, W] = swtest(SS52628_GAL4_dist(:,1));
[H, pValue, W] = swtest(SS52628_GAL4_UAS_Shits_dist(:,1));
[H, pValue, W] = swtest(UAS_Shits_dist(:,1));

y=[padcat(SS52628_GAL4_dist(:,1),SS52628_GAL4_UAS_Shits_dist(:,1),UAS_Shits_dist(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Classical learning

figure;
bar([1 2 3],[nanmean(SS00096_GAL4(:,1)),nanmean(SS00096_GAL4_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS00096_GAL4(:,1),SS00096_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 SS00096','GAL4 SS00096 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(SS00096_GAL4(:,1));
[H, pValue, W] = swtest(SS00096_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(SS00096_GAL4(:,1),SS00096_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')



figure;
bar([1 2 3],[nanmean(GMR37F06_GAL4(:,1)),nanmean(GMR37F06_GAL4_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GMR37F06_GAL4(:,1),GMR37F06_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 GMR37F06','GAL4 GMR37F06 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GMR37F06_GAL4(:,1));
[H, pValue, W] = swtest(GMR37F06_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GMR37F06_GAL4(:,1),GMR37F06_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


figure;
bar([1 2 3],[nanmean(SS52628_GAL4(:,1)),nanmean(SS52628_GAL4_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS52628_GAL4(:,1),SS52628_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 SS52628','GAL4 SS52628 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(SS52628_GAL4(:,1));
[H, pValue, W] = swtest(SS52628_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(SS52628_GAL4(:,1),SS52628_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
