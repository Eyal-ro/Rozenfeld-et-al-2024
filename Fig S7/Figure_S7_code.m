%%
clc;clear;close all;
load("Figure_S7_data.mat")
%%
figure;
bar([1:length(all_lines_data)],nanmean(padcat(all_lines_data{:})));
hold on;
UnivarScatter([padcat(all_lines_data{:})],'Width',0.2,'Compression',5,'Label',{all_lines_names{:}},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'Learning index'});
set(gca,'TickDir','out');
ylim([-100 100]);

[H, pValue, W] = swtest(GAL4_MB296B(:,1));
[H, pValue, W] = swtest(GAL4_MB099C_GAL4_MB296B_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(GAL4_MB099C(:,1));
[H, pValue, W] = swtest(UAS_GtACR2(:,1));


y=[padcat(GAL4_MB296B(:, 1),GAL4_MB099C_GAL4_MB296B_UAS_GtACR2(:, 1),GAL4_MB099C(:, 1),UAS_GtACR2(:, 1))]
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')