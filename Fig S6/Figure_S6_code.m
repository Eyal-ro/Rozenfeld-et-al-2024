clc;clear;close all;
load('Figure_S6_data.mat');
%%
figure;
bar([1 2 3 4 5],[nanmean(MB077C_GAL4(:,1)),nanmean(MB077C_GAL4_UAS_Shits(:,1)),nanmean(MB080C_GAL4(:,1)),...
    nanmean(MB080C_GAL4_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_Shits(:,1),MB080C_GAL4(:,1),...
    MB080C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'MB077C GAL4','MB077C GAL4 UAS_Shits','MB080C GAL4',...
    'MB080C GAL4 UAS Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 5.5]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(MB077C_GAL4(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(MB080C_GAL4(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));


y=[padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(MB080C_GAL4(:,1),...
    MB080C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')