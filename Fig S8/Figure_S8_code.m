%%
clc;clear;close all;
%% Panel C, D
clc;clear;close all;
load('Figure_S8_data_MBONs.mat')

figure;
bar([1 2 3 4 5],[nanmean(MB077C_GAL4(:,1)),nanmean(MB077C_GAL4_UAS_GtACR2(:,1)),...
    nanmean(MB080C_GAL4(:,1)),nanmean(MB080C_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_GtACR2(:,1),MB080C_GAL4(:,1),MB080C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB077C','GAL4 MB077C UAS GtACR2','GAL4 MB080C',...
    'GAL4 MB080C UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 5.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');title('Light during shocks');

[H, pValue, W] = swtest(MB077C_GAL4(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(MB080C_GAL4(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));


y=[padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(MB080C_GAL4(:,1),MB080C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3 4 5],[nanmean(MB077C_GAL4_test2(:,1)),nanmean(MB077C_GAL4_UAS_GtACR2_test2(:,1)),...
    nanmean(MB080C_GAL4_test2(:,1)),nanmean(MB080C_GAL4_UAS_GtACR2_test2(:,1)),nanmean(UAS_GtACR2_test2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(MB077C_GAL4_test2(:,1),MB077C_GAL4_UAS_GtACR2_test2(:,1),MB080C_GAL4_test2(:,1),MB080C_GAL4_UAS_GtACR2_test2(:,1),UAS_GtACR2_test2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 MB077C','GAL4 MB077C UAS GtACR2','GAL4 MB080C',...
    'GAL4 MB080C UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 5.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');title('Light during test2');

[H, pValue, W] = swtest(MB077C_GAL4_test2(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_GtACR2_test2(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_test2(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_GtACR2_test2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2_test2(:,1));


y=[padcat(MB077C_GAL4_test2(:,1),MB077C_GAL4_UAS_GtACR2_test2(:,1),UAS_GtACR2_test2(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(MB080C_GAL4_test2(:,1),MB080C_GAL4_UAS_GtACR2_test2(:,1),UAS_GtACR2_test2(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel E, G, I
clc;clear;close all;
load('Figure_S8_data_E_G_I.mat')

figure;
bar([1:length(all_lines_data)],nanmean(padcat(all_lines_data{:})));
hold on;
UnivarScatter([padcat(all_lines_data{:})],'Width',0.2,'Compression',5,'Label',{all_lines_names{:}},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'Learning index'});
set(gca,'TickDir','out');
ylim([-100 100]);


[H, pValue, W] = swtest(GAL4_OK107(:,1));
[H, pValue, W] = swtest(GAL4_OK107_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));
y=[padcat(GAL4_OK107(:,1),GAL4_OK107_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_c305a(:,1));
[H, pValue, W] = swtest(GAL4_c305a_UAS_GtACR2(:,1));
y=[padcat(GAL4_c305a(:,1),GAL4_c305a_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB247(:,1));
[H, pValue, W] = swtest(GAL4_MB247_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB247(:,1),GAL4_MB247_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB504(:,1));
[H, pValue, W] = swtest(GAL4_MB504_UAS_GtCAR2(:,1));
y=[padcat(GAL4_MB504(:,1),GAL4_MB504_UAS_GtCAR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB320C(:,1));
[H, pValue, W] = swtest(GAL4_MB320C_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB320C(:,1),GAL4_MB320C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB438B(:,1));
[H, pValue, W] = swtest(GAL4_MB438B_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB438B(:,1),GAL4_MB438B_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_R37F06(:,1));
[H, pValue, W] = swtest(GAL4_R37F06_UAS_GtACR2(:,1));
y=[padcat(GAL4_R37F06(:,1),GAL4_R37F06_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')



%% Panel F, H, J
clc;clear;close all;
load('Figure_S8_data_F_H_J.mat')

figure;
bar([1:length(all_lines_data)],nanmean(padcat(all_lines_data{:})));
hold on;
UnivarScatter([padcat(all_lines_data{:})],'Width',0.2,'Compression',5,'Label',{all_lines_names{:}},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'Learning index'});
set(gca,'TickDir','out');
ylim([-100 100]);


[H, pValue, W] = swtest(GAL4_OK107(:,1));
[H, pValue, W] = swtest(GAL4_OK107_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));
y=[padcat(GAL4_OK107(:,1),GAL4_OK107_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_c305a(:,1));
[H, pValue, W] = swtest(GAL4_c305a_UAS_GtACR2(:,1));
y=[padcat(GAL4_c305a(:,1),GAL4_c305a_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB247(:,1));
[H, pValue, W] = swtest(GAL4_MB247_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB247(:,1),GAL4_MB247_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB504(:,1));
[H, pValue, W] = swtest(GAL4_MB504_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB504(:,1),GAL4_MB504_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB438B(:,1));
[H, pValue, W] = swtest(GAL4_MB438B_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB438B(:,1),GAL4_MB438B_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB320C(:,1));
[H, pValue, W] = swtest(GAL4_MB320C_UAS_GtACR2(:,1));
y=[padcat(GAL4_MB320C(:,1),GAL4_MB320C_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')



[H, pValue, W] = swtest(GAL4_R37F06(:,1));
[H, pValue, W] = swtest(GAL4_R37F06_UAS_GtACR2(:,1));
y=[padcat(GAL4_R37F06(:,1),GAL4_R37F06_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel K, L
clc;clear;close all;
load('Figure_S8_data_K_L.mat')

figure;
bar([1 2 3],[nanmean(SS00096_GAL4(:,1)),nanmean(SS00096_GAL4_UAS_GtACR2(:,1)),nanmean(UAS_GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS00096_GAL4(:,1),SS00096_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 SS00096','GAL4 SS00096 UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');title('Light during shocks');

[H, pValue, W] = swtest(SS00096_GAL4(:,1));
[H, pValue, W] = swtest(SS00096_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));

y=[padcat(SS00096_GAL4(:,1),SS00096_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%
figure;
bar([1 2 3],[nanmean(SS00096_GAL4_test2(:,1)),nanmean(SS00096_GAL4_UAS_GtACR2_test2(:,1)),nanmean(UAS_GtACR2_test2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(SS00096_GAL4_test2(:,1),SS00096_GAL4_UAS_GtACR2_test2(:,1),UAS_GtACR2_test2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 SS00096','GAL4 SS00096 UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');title('Light during test2');

[H, pValue, W] = swtest(SS00096_GAL4_test2(:,1));
[H, pValue, W] = swtest(SS00096_GAL4_UAS_GtACR2_test2(:,1));
[H, pValue, W] = swtest(UAS_GtACR2_test2(:,1));

y=[padcat(SS00096_GAL4_test2(:,1),SS00096_GAL4_UAS_GtACR2_test2(:,1),UAS_GtACR2_test2(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
