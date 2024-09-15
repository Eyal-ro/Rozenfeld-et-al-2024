clc;clear;close all;
load('Figure_6_data.mat');

%% Panel B

figure;
bar([1 2 3],[nanmean(DPM_GAL4_classical(:,1)),nanmean(DPM_GAL4_UAS_GtACR2_classical(:,1)),nanmean(GtACR2_UAS_classical(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(DPM_GAL4_classical(:,1),DPM_GAL4_UAS_GtACR2_classical(:,1),GtACR2_UAS_classical(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 DPM','GAL4 DPM UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(DPM_GAL4_classical(:,1));
[H, pValue, W] = swtest(DPM_GAL4_UAS_GtACR2_classical(:,1));
[H, pValue, W] = swtest(GtACR2_UAS_classical(:,1));

y=[padcat(DPM_GAL4_classical(:,1),DPM_GAL4_UAS_GtACR2_classical(:,1),GtACR2_UAS_classical(:,1))];


[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%%
figure;
bar([1 2 3],[nanmean(DPM_GAL4_operant(:,1)),nanmean(DPM_GAL4_UAS_GtACR2(:,1)),nanmean(GtACR2(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(DPM_GAL4_operant(:,1),DPM_GAL4_UAS_GtACR2(:,1),GtACR2(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'GAL4 DPM','GAL4 DPM UAS GtACR2','UAS GtACR2'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(DPM_GAL4_operant(:,1));
[H, pValue, W] = swtest(DPM_GAL4_UAS_GtACR2(:,1));
[H, pValue, W] = swtest(GtACR2(:,1));

y=[padcat(DPM_GAL4_operant(:,1),DPM_GAL4_UAS_GtACR2(:,1),GtACR2(:,1))];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% MB077 DPM shits

figure
shadedErrorBar([430:700],smooth(mean(MB077C_DPM_shits_after_operant_control_3oct(430:700,:),2)),smooth([std(MB077C_DPM_shits_after_operant_control_3oct(430:700,:)')/sqrt(size(MB077C_DPM_shits_after_operant_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_DPM_shits_after_operant_3oct(430:700,:),2)),smooth([std(MB077C_DPM_shits_after_operant_3oct(430:700,:)')/sqrt(size(MB077C_DPM_shits_after_operant_3oct,2))]),'lineprops','r');
title('MB077C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB077C_DPM_shits_after_operant_control_MCH(430:700,:),2)),smooth([std(MB077C_DPM_shits_after_operant_control_MCH(430:700,:)')/sqrt(size(MB077C_DPM_shits_after_operant_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_DPM_shits_after_operant_MCH(430:700,:),2)),smooth([std(MB077C_DPM_shits_after_operant_MCH(430:700,:)')/sqrt(size(MB077C_DPM_shits_after_operant_MCH,2))]),'lineprops','r');
title('MB077C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB077C_DPM_shits_after_operant_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB077C_DPM_shits_after_operant_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB077C_DPM_shits_after_operant_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB077C_DPM_shits_after_operant_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB077C_DPM_shits_after_operant_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB077C_DPM_shits_after_operant_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB077C_DPM_shits_after_operant_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB077C_DPM_shits_after_operant_MCH(400:600,i))];
end
    
figure;bar(1,nanmean(max_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(max_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(max_3oct_before',max_3oct_after',max_MCH_before',max_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB077C - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');


%% MB080C-DPM shits

figure
shadedErrorBar([430:700],smooth(mean(MB080C_DPM_shits_after_operant_control_3oct(430:700,:),2)),smooth([std(MB080C_DPM_shits_after_operant_control_3oct(430:700,:)')/sqrt(size(MB080C_DPM_shits_after_operant_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_DPM_shits_after_operant_3oct(430:700,:),2)),smooth([std(MB080C_DPM_shits_after_operant_3oct(430:700,:)')/sqrt(size(MB080C_DPM_shits_after_operant_3oct,2))]),'lineprops','r');
title('MB080C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB080C_DPM_shits_after_operant_control_MCH(430:700,:),2)),smooth([std(MB080C_DPM_shits_after_operant_control_MCH(430:700,:)')/sqrt(size(MB080C_DPM_shits_after_operant_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_DPM_shits_after_operant_MCH(430:700,:),2)),smooth([std(MB080C_DPM_shits_after_operant_MCH(430:700,:)')/sqrt(size(MB080C_DPM_shits_after_operant_MCH,2))]),'lineprops','r');
title('MB080C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB080C_DPM_shits_after_operant_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB080C_DPM_shits_after_operant_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB080C_DPM_shits_after_operant_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB080C_DPM_shits_after_operant_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB080C_DPM_shits_after_operant_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB080C_DPM_shits_after_operant_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB080C_DPM_shits_after_operant_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB080C_DPM_shits_after_operant_MCH(400:600,i))];
end
    
figure;bar(1,nanmean(max_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(max_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(max_3oct_before',max_3oct_after',max_MCH_before',max_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB080C - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');


%% MB085C-DPM shits

figure
shadedErrorBar([430:700],smooth(mean(MB085C_DPM_shits_after_operant_control_3oct(430:700,:),2)),smooth([std(MB085C_DPM_shits_after_operant_control_3oct(430:700,:)')/sqrt(size(MB085C_DPM_shits_after_operant_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_DPM_shits_after_operant_3oct(430:700,:),2)),smooth([std(MB085C_DPM_shits_after_operant_3oct(430:700,:)')/sqrt(size(MB085C_DPM_shits_after_operant_3oct,2))]),'lineprops','r');
title('MB085C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB085C_DPM_shits_after_operant_control_MCH(430:700,:),2)),smooth([std(MB085C_DPM_shits_after_operant_control_MCH(430:700,:)')/sqrt(size(MB085C_DPM_shits_after_operant_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_DPM_shits_after_operant_MCH(430:700,:),2)),smooth([std(MB085C_DPM_shits_after_operant_MCH(430:700,:)')/sqrt(size(MB085C_DPM_shits_after_operant_MCH,2))]),'lineprops','r');
title('MB085C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB085C_DPM_shits_after_operant_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB085C_DPM_shits_after_operant_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB085C_DPM_shits_after_operant_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB085C_DPM_shits_after_operant_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB085C_DPM_shits_after_operant_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB085C_DPM_shits_after_operant_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB085C_DPM_shits_after_operant_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB085C_DPM_shits_after_operant_MCH(400:600,i))];
end
    
figure;bar(1,nanmean(max_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(max_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(max_3oct_before',max_3oct_after',max_MCH_before',max_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB085C - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

