clc;clear;close all;
load('Figure_S4_data.mat'); 
%% Panel B
figure;
bar([1 2 3],[nanmean(GAL4_71G10(:,1)),nanmean(GAL4_71G10_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_71G10(:,1),GAL4_71G10_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 71G10','GAL4 71G10 UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_71G10(:,1));
[H, pValue, W] = swtest(GAL4_71G10_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_71G10(:,1),GAL4_71G10_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
c=multcompare(stats)
mes1way(y,'eta2')

figure; 
bar([1 2 3],[nanmean(GAL4_R28H05(:,1)),nanmean(GAL4_R28H05_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_R28H05(:,1),GAL4_R28H05_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 R28H05','GAL4 R28H05 UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_R28H05(:,1));
[H, pValue, W] = swtest(GAL4_R28H05_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_R28H05(:,1),GAL4_R28H05_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel C
figure;
bar([1 2 3],[nanmean(GAL4_MB296B(:,1)),nanmean(GAL4_MB296B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB296B(:,1),GAL4_MB296B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB296B','GAL4 MB296B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB296B(:,1));
[H, pValue, W] = swtest(GAL4_MB296B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB296B(:,1),GAL4_MB296B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%

figure;
bar([1 2 3],[nanmean(GAL4_MB304B(:,1)),nanmean(GAL4_MB304B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB304B(:,1),GAL4_MB304B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB304B','GAL4 MB304B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB304B(:,1));
[H, pValue, W] = swtest(GAL4_MB304B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB304B(:,1),GAL4_MB304B_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB058B(:,1)),nanmean(GAL4_MB058B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB058B(:,1),GAL4_MB058B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB058B','GAL4 MB058B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB058B(:,1));
[H, pValue, W] = swtest(GAL4_MB058B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB058B(:,1),GAL4_MB058B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB099C(:,1)),nanmean(GAL4_MB099C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB099C(:,1),GAL4_MB099C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB099C','GAL4 MB099C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB099C(:,1));
[H, pValue, W] = swtest(GAL4_MB099C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB099C(:,1),GAL4_MB099C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB308B(:,1)),nanmean(GAL4_MB308B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB308B(:,1),GAL4_MB308B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB308B','GAL4 MB308B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB308B(:,1));
[H, pValue, W] = swtest(GAL4_MB308B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB308B(:,1),GAL4_MB308B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB630B(:,1)),nanmean(GAL4_MB630B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB630B(:,1),GAL4_MB630B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB630B','GAL4 MB630B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB630B(:,1));
[H, pValue, W] = swtest(GAL4_MB630B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB630B(:,1),GAL4_MB630B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
c=multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB065B(:,1)),nanmean(GAL4_MB065B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB065B(:,1),GAL4_MB065B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB065B','GAL4 MB065B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB065B(:,1));
[H, pValue, W] = swtest(GAL4_MB065B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB065B(:,1),GAL4_MB065B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel D
figure;
bar([1 2 3 4 5 6],[nanmean(FRT_stop_Shits(:,1)),nanmean(GMR30B10_GAL4(:,1)),nanmean(GMR46F02_GAL4(:,1)),...
    nanmean(THC_Shits_49522(:,1)),nanmean(THC_Shits_50273(:,1)),nanmean(TH_C(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(FRT_stop_Shits(:,1),GMR30B10_GAL4(:,1),GMR46F02_GAL4(:,1),...
   THC_Shits_49522(:,1),THC_Shits_50273(:,1),TH_C(:,1) )]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'FRT stop Shits','GMR30B10 GAL4','GMR46F02 GAL4',...
    'THC Shits 49522','THC Shits 50273','TH C'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 6.5]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(FRT_stop_Shits(:,1));
[H, pValue, W] = swtest(GMR30B10_GAL4(:,1));
[H, pValue, W] = swtest(GMR46F02_GAL4(:,1));
[H, pValue, W] = swtest(THC_Shits_49522(:,1));
[H, pValue, W] = swtest(THC_Shits_50273(:,1));
[H, pValue, W] = swtest(TH_C(:,1));


y=[padcat(FRT_stop_Shits(:,1),GMR30B10_GAL4(:,1),...
   THC_Shits_49522(:,1),TH_C(:,1) )];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(FRT_stop_Shits(:,1),GMR46F02_GAL4(:,1),...
   THC_Shits_50273(:,1),TH_C(:,1) )];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


%% Panel E
figure;
bar([1 2 3],[nanmean(GAL4_MB018B(:,1)),nanmean(GAL4_MB018B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB018B(:,1),GAL4_MB018B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB018B','GAL4 MB018B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB018B(:,1));
[H, pValue, W] = swtest(GAL4_MB018B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB018B(:,1),GAL4_MB018B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB027B(:,1)),nanmean(GAL4_MB027B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB027B(:,1),GAL4_MB027B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB027B','GAL4 MB027B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB027B(:,1));
[H, pValue, W] = swtest(GAL4_MB027B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB027B(:,1),GAL4_MB027B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


%
figure;
bar([1 2 3],[nanmean(GAL4_MB074C(:,1)),nanmean(GAL4_MB074C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB074C(:,1),GAL4_MB074C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB074C','GAL4 MB074C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB074C(:,1));
[H, pValue, W] = swtest(GAL4_MB074C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB074C(:,1),GAL4_MB074C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB433B(:,1)),nanmean(GAL4_MB433B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB433B(:,1),GAL4_MB433B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB433B','GAL4 MB433B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB433B(:,1));
[H, pValue, W] = swtest(GAL4_MB433B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB433B(:,1),GAL4_MB433B_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB399B(:,1)),nanmean(GAL4_MB399B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB399B(:,1),GAL4_MB399B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB399B','GAL4 MB399B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB399B(:,1));
[H, pValue, W] = swtest(GAL4_MB399B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB399B(:,1),GAL4_MB399B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB298B(:,1)),nanmean(GAL4_MB298B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB298B(:,1),GAL4_MB298B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB298B','GAL4 MB298B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB298B(:,1));
[H, pValue, W] = swtest(GAL4_MB298B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB298B(:,1),GAL4_MB298B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB085C(:,1)),nanmean(GAL4_MB085C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB085C','GAL4 MB085C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB085C(:,1));
[H, pValue, W] = swtest(GAL4_MB085C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB085C(:,1),GAL4_MB085C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB310C(:,1)),nanmean(GAL4_MB310C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB310C(:,1),GAL4_MB310C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB310C','GAL4 MB310C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB310C(:,1));
[H, pValue, W] = swtest(GAL4_MB310C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB310C(:,1),GAL4_MB310C_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB112C(:,1)),nanmean(GAL4_MB112C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB112C(:,1),GAL4_MB112C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB112C','GAL4 MB112C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB112C(:,1));
[H, pValue, W] = swtest(GAL4_MB112C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB112C(:,1),GAL4_MB112C_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB002B(:,1)),nanmean(GAL4_MB002B_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB002B(:,1),GAL4_MB002B_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB002B','GAL4 MB002B UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB002B(:,1));
[H, pValue, W] = swtest(GAL4_MB002B_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB002B(:,1),GAL4_MB002B_UAS_Shits(:,1),UAS_Shits(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(GAL4_MB549C(:,1)),nanmean(GAL4_MB549C_UAS_Shits(:,1)),nanmean(UAS_Shits(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(GAL4_MB549C(:,1),GAL4_MB549C_UAS_Shits(:,1),UAS_Shits(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB549C','GAL4 MB549C UAS_Shits','UAS Shits'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(GAL4_MB549C(:,1));
[H, pValue, W] = swtest(GAL4_MB549C_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));

y=[padcat(GAL4_MB549C(:,1),GAL4_MB549C_UAS_Shits(:,1),UAS_Shits(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
