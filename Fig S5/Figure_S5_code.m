%%
clc;clear;close all;
load('Figure_S5_data.mat');
%%
figure;
bar([1:length(all_lines_data)],nanmean(padcat(all_lines_data{:})));
hold on;
UnivarScatter([padcat(all_lines_data{:})],'Width',0.2,'Compression',5,'Label',{all_lines_names{:}},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'Learning index'});
set(gca,'TickDir','out');
ylim([-110 110]);


[H, pValue, W] = swtest(OK107_GAL4(:,1));
[H, pValue, W] = swtest(OK107_GAL4_UAS_Shits(:,1));
[H, pValue, W] = swtest(UAS_Shits(:,1));
y=[padcat(OK107_GAL4(:,1),OK107_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(c350a_GAL4(:,1));
[H, pValue, W] = swtest(GAL4_c305a_UAS_Shits(:,1));
y=[padcat(c350a_GAL4(:,1),GAL4_c305a_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(MB247_GAL4(:,1));
[H, pValue, W] = swtest(MB247_GAL4_UAS_Shits(:,1));
y=[padcat(MB247_GAL4(:,1),MB247_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_MB504B(:,1));
[H, pValue, W] = swtest(GAL4_MB504B_UAS_Shits(:,1));
y=[padcat(GAL4_MB504B(:,1),GAL4_MB504B_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(MB320C_GAL4(:,1));
[H, pValue, W] = swtest(MB320C_GAL4_UAS_Shits(:,1));
y=[padcat(MB320C_GAL4(:,1),MB320C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(MB438B_GAL4(:,1));
[H, pValue, W] = swtest(MB438B_GAL4_UAS_Shits(:,1));
y=[padcat(MB438B_GAL4(:,1),MB438B_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(MB077C_GAL4(:,1));
[H, pValue, W] = swtest(MB077C_GAL4_UAS_Shits(:,1));
y=[padcat(MB077C_GAL4(:,1),MB077C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(MB080C_GAL4(:,1));
[H, pValue, W] = swtest(MB080C_GAL4_UAS_Shits(:,1));
y=[padcat(MB080C_GAL4(:,1),MB080C_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GMR37F06_GAL4(:,1));
[H, pValue, W] = swtest(GMR37F06_GAL4_UAS_Shits(:,1));
y=[padcat(GMR37F06_GAL4(:,1),GMR37F06_GAL4_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(SS00090_GAL4(:,1));
[H, pValue, W] = swtest(GAL4_SS00090_UAS_Shits(:,1));
y=[padcat(SS00090_GAL4(:,1),GAL4_SS00090_UAS_Shits(:,1),UAS_Shits(:,1))];
[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


[H, pValue, W] = swtest(GAL4_SS00096(:,1));
[H, pValue, W] = swtest(GAL4_SS00096_UAS_Shits(:,1));
y=[padcat(GAL4_SS00096(:,1),GAL4_SS00096_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

[H, pValue, W] = swtest(GAL4_SS52628(:,1));
[H, pValue, W] = swtest(GAL4_SS52628_UAS_Shits(:,1));
y=[padcat(GAL4_SS52628(:,1),GAL4_SS52628_UAS_Shits(:,1),UAS_Shits(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')






