clc;clear;close all;
load('Figure_2_data.mat');
%% Panel B
figure;
bar([1 2 3],[nanmean(GAL4_OK107(:,1)),nanmean(GAL4_OK107_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_OK107(:,1),GAL4_OK107_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 OK107','GAL4 OK107 UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_OK107(:,1));
[H, pValue, W] = swtest(GAL4_OK107_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_OK107(:,1),GAL4_OK107_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_c305a(:,1)),nanmean(GAL4_c305a_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_c305a(:,1),GAL4_c305a_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 c305a','GAL4 c305a UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_c305a(:,1));
[H, pValue, W] = swtest(GAL4_c305a_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_c305a(:,1),GAL4_c305a_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB247(:,1)),nanmean(GAL4_MB247_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB247(:,1),GAL4_MB247_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB247','GAL4 MB247 UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB247(:,1));
[H, pValue, W] = swtest(GAL4_MB247_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB247(:,1),GAL4_MB247_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel C
figure;
bar([1 2 3],[nanmean(GAL4_MB504B(:,1)),nanmean(GAL4_MB504B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB504B(:,1),GAL4_MB504B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB504B','GAL4 MB504B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB504B(:,1));
[H, pValue, W] = swtest(GAL4_MB504B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB504B(:,1),GAL4_MB504B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB320C(:,1)),nanmean(GAL4_MB320C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB320C(:,1),GAL4_MB320C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB320C','GAL4 MB320C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB320C(:,1));
[H, pValue, W] = swtest(GAL4_MB320C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB320C(:,1),GAL4_MB320C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB438B(:,1)),nanmean(GAL4_MB438B_UAS_Shit(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB438B(:,1),GAL4_MB438B_UAS_Shit(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB438B','GAL4 MB438B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB438B(:,1));
[H, pValue, W] = swtest(GAL4_MB438B_UAS_Shit(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB438B(:,1),GAL4_MB438B_UAS_Shit(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel D
figure;
bar([1 2 3],[nanmean(GAL4_MB077C(:,1)),nanmean(GAL4_MB077C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB077C(:,1),GAL4_MB077C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB077C','GAL4 MB077C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB077C(:,1));
[H, pValue, W] = swtest(GAL4_MB077C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB077C(:,1),GAL4_MB077C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB080C(:,1)),nanmean(GAL4_MB080C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB080C(:,1),GAL4_MB080C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB080C','GAL4 MB080C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB080C(:,1));
[H, pValue, W] = swtest(GAL4_MB080C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB080C(:,1),GAL4_MB080C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel E

figure;
bar([1 2 3 4 5],[nanmean(MB077C_GAL4_classical(:,1)),nanmean(MB077C_GAL4_UAS_Shits_classical(:,1)),nanmean(MB080C_GAL4_classical(:,1)),...
    nanmean(MB080C_GAL4_UAS_Shits_classical(:,1)), nanmean(UAS_Shits_classical(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB077C_GAL4_classical(:,1),MB077C_GAL4_UAS_Shits_classical(:,1),MB080C_GAL4_classical(:,1),...
    MB080C_GAL4_UAS_Shits_classical(:,1),UAS_Shits_classical(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB077C','GAL4 MB077C UAS_Shits','GAL4 MB080C',...
    'GAL4 MB080C UAS_Shits','UAS_Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 5.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(MB077C_GAL4_classical(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_Shits_classical(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_classical(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_Shits_classical(:,1));
[H, pValue, W] = swtest(UAS_Shits_classical(:,1));


y=[padcat(MB077C_GAL4_classical(:,1),MB077C_GAL4_UAS_Shits_classical(:,1),UAS_Shits_classical(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(MB080C_GAL4_classical(:,1),MB080C_GAL4_UAS_Shits_classical(:,1),UAS_Shits_classical(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')