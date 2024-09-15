
%% Panel A
clc;clear;close all;
load('Figure_S11_data_A.mat');

figure;
bar([1 2 3 4 5],[nanmean(MB085C_GAL4(:,1)),nanmean(MB085C_GAL4_UAS_GtACR2(:,1)),nanmean(MB112C_GAL4(:,1)),...
    nanmean(MB112C_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB085C_GAL4(:,1),MB085C_GAL4_UAS_GtACR2(:,1),MB112C_GAL4(:,1),MB112C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'MB085C GAL4','MB085C_GAL4_UAS_GtACR2','MB112C_GAL4','MB112C_GAL4_UAS_GtACR2','UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(MB085C_GAL4(:,1));
[H, pValue, W] = swtest(MB085C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(MB112C_GAL4(:,1));
[H, pValue, W] = swtest(MB112C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(MB085C_GAL4(:,1),MB085C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(MB112C_GAL4(:,1),MB112C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel B
clc;clear;close all;
load('Figure_S11_data_B.mat');

figure;
bar([1 2 3 4 5],[nanmean(MB080C_GAL4(:,1)),nanmean(MB080C_GAL4_UAS_GtACR2(:,1)),nanmean(MB077C_GAL4(:,1)),...
    nanmean(MB077C_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB080C_GAL4(:,1),MB080C_GAL4_UAS_GtACR2(:,1),MB077C_GAL4(:,1),MB077C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'MB080C GAL4','MB080C_GAL4_UAS_GtACR2','MB077C_GAL4','MB077C_GAL4_UAS_GtACR2','UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(MB080C_GAL4(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(MB077C_GAL4(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(MB080C_GAL4(:,1),MB080C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel C, D
clc;clear;close all;
load('Figure_S11_data_C_D.mat');


figure;
bar([1 2 3 4 5 6 7],[nanmean(UAS_Chrimson(:,1)),nanmean(GAL4_MB077C(:,1)),nanmean(GAL4_MB077C_UAS_Chrimson(:,1)),...
    nanmean(GAL4_MB080C(:,1)),nanmean(GAL4_MB080C_UAS_Chrimson(:,1)),nanmean(GAL4_MB085C(:,1)),nanmean(GAL4_MB085C_UAS_Chrimson(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(UAS_Chrimson(:,1),GAL4_MB077C(:,1),GAL4_MB077C_UAS_Chrimson(:,1),GAL4_MB080C(:,1),...
    GAL4_MB080C_UAS_Chrimson(:,1),GAL4_MB085C(:,1),GAL4_MB085C_UAS_Chrimson(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'UAS_Chrimson','GAL4_MB077C','GAL4_MB077C_UAS_Chrimson','GAL4_MB080C','GAL4_MB080C_UAS_Chrimson','GAL4_MB085C','GAL4_MB085C_UAS_Chrimson'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([0 1]);
box off;
set(gca,'TickDir','out');ylabel('Preference');

[H, pValue, W] = swtest(UAS_Chrimson(:,1));
[H, pValue, W] = swtest(GAL4_MB077C(:,1));
[H, pValue, W] = swtest(GAL4_MB077C_UAS_Chrimson(:,1));
[H, pValue, W] = swtest(GAL4_MB080C(:,1));
[H, pValue, W] = swtest(GAL4_MB080C_UAS_Chrimson(:,1));
[H, pValue, W] = swtest(GAL4_MB085C(:,1));
[H, pValue, W] = swtest(GAL4_MB085C_UAS_Chrimson(:,1));


y=[padcat(GAL4_MB077C(:,1),GAL4_MB077C_UAS_Chrimson(:,1),UAS_Chrimson(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(GAL4_MB080C(:,1),GAL4_MB080C_UAS_Chrimson(:,1),UAS_Chrimson(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_Chrimson(:,1),UAS_Chrimson(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%
figure;
bar([1 2 3 4 5 6 7],[nanmean(UAS_GtACR2(:,1)),nanmean(GAL4_MB077C(:,1)),nanmean(GAL4_MB077C_UAS_GtACR2(:,1)),...
    nanmean(GAL4_MB080C(:,1)),nanmean(GAL4_MB080C_UAS_GtACR2(:,1)),nanmean(GAL4_MB085C(:,1)),nanmean(GAL4_MB085C_UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(UAS_GtACR2(:,1),GAL4_MB077C(:,1),GAL4_MB077C_UAS_GtACR2(:,1),GAL4_MB080C(:,1),...
    GAL4_MB080C_UAS_GtACR2(:,1),GAL4_MB085C(:,1),GAL4_MB085C_UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'UAS_GtACR2','GAL4_MB077C','GAL4_MB077C_UAS_GtACR2','GAL4_MB080C','GAL4_MB080C_UAS_GtACR2','GAL4_MB085C','GAL4_MB085C_UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([0 1]);
box off;
set(gca,'TickDir','out');ylabel('Preference');

[H, pValue, W] = swtest(UAS_GtACR2(:,1));
[H, pValue, W] = swtest(GAL4_MB077C(:,1));
[H, pValue, W] = swtest(GAL4_MB077C_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(GAL4_MB080C(:,1));
[H, pValue, W] = swtest(GAL4_MB080C_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(GAL4_MB085C(:,1));
[H, pValue, W] = swtest(GAL4_MB085C_UAS_GtACR2(:,1));


y=[padcat(GAL4_MB077C(:,1),GAL4_MB077C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(GAL4_MB080C(:,1),GAL4_MB080C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel E
clc;clear;close all;
load('Figure_S11_data_E.mat');

figure;
bar([1 2 3],[nanmean(GAL4_MB085C(:,1)),nanmean(GAL4_MB085C_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'MB085C GAL4','MB085C_GAL4_UAS_GtACR2','UAS_GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');


[H, pValue, W] = swtest(GAL4_MB085C(:,1));
[H, pValue, W] = swtest(GAL4_MB085C_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(GAL4_MB085C(:, 1),GAL4_MB085C_UAS_GtACR2(:, 1),UAS_GtACR2(:, 1))]

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


