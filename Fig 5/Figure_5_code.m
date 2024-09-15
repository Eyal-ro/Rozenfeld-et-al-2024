
%% Panel B
clc;clear;close all;
load('train_operant_light_CS_plus.mat');

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

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

y=[padcat(MB112C_GAL4(:,1),MB112C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];
[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel C
clc;clear;close all;
load('train_classical_light_CS_plus.mat');

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

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


y=[padcat(MB080C_GAL4(:,1),MB080C_GAL4_UAS_GtACR2(:,1),UAS_GtACR2(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% Panel D
clc;clear;close all;
load('combining_operant_and_classical.mat');

figure;
bar([1 2 3 4 5 6],[nanmean(Classical_then_operant(:,1)),nanmean(Operant_then_classical(:,1)),nanmean(wt_operant(:,1)),nanmean(wt_shock_30_classical(:,1)),nanmean(classical_1_session(:,1)),nanmean(Operant_1_session(:,1))],0.4,'FaceColor','k')
hold on;
UnivarScatter([padcat(Classical_then_operant(:,1),...
    Operant_then_classical(:,1),wt_operant(:,1),wt_shock_30_classical(:,1),classical_1_session(:,1),Operant_1_session(:,1))]...
    ,'Width',0.2,'PointSize',5,'Compression',15,'Label',{'Classical_then_operant','Operant_then_classical','wt_operant','wt_shock_30_classical','1 classical session','1 operant session'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
;ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(Classical_then_operant(:,1));
[H, pValue, W] = swtest(Operant_then_classical(:,1));
[H, pValue, W] = swtest(wt_operant(:,1));
[H, pValue, W] = swtest(wt_shock_30_classical(:,1));
[H, pValue, W] = swtest(classical_1_session(:,1));
[H, pValue, W] = swtest(Operant_1_session(:,1));


y=[padcat(Operant_then_classical(:,1),Classical_then_operant(:,1),wt_operant(:,1),wt_shock_30_classical(:,1),Operant_1_session(:,1),classical_1_session(:,1))];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)',y(:,4)',y(:,5)',y(:,6)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3';ones(size(y(:,4)))*4';ones(size(y(:,5)))*5';ones(size(y(:,6)))*6']',1000)

[p,tbl,stats] =anova1(y)
c=multcompare(stats)
mes1way(y,'eta2')

%% MBONs imaging
clc;clear;close all;
load('MBON_imaging.mat');

%% MB077C
figure
shadedErrorBar([430:700],smooth(mean(MB077C_operant_then_classical_control_3oct(430:700,:),2)),smooth([std(MB077C_operant_then_classical_control_3oct(430:700,:)')/sqrt(size(MB077C_operant_then_classical_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_operant_then_classical_3oct(430:700,:),2)),smooth([std(MB077C_operant_then_classical_3oct(430:700,:)')/sqrt(size(MB077C_operant_then_classical_3oct,2))]),'lineprops','r');
title('MB080C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB077C_operant_then_classical_control_MCH(430:700,:),2)),smooth([std(MB077C_operant_then_classical_control_MCH(430:700,:)')/sqrt(size(MB077C_operant_then_classical_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_operant_then_classical_MCH(430:700,:),2)),smooth([std(MB077C_operant_then_classical_MCH(430:700,:)')/sqrt(size(MB077C_operant_then_classical_MCH,2))]),'lineprops','r');
title('MB080C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB077C_operant_then_classical_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB077C_operant_then_classical_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB077C_operant_then_classical_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB077C_operant_then_classical_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB077C_operant_then_classical_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB077C_operant_then_classical_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB077C_operant_then_classical_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB077C_operant_then_classical_MCH(400:600,i))];
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

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');


%% MB080C
figure
shadedErrorBar([430:700],smooth(mean(MB080C_operant_then_classical_control_3oct(430:700,:),2)),smooth([std(MB080C_operant_then_classical_control_3oct(430:700,:)')/sqrt(size(MB080C_operant_then_classical_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_operant_then_classical_3oct(430:700,:),2)),smooth([std(MB080C_operant_then_classical_3oct(430:700,:)')/sqrt(size(MB080C_operant_then_classical_3oct,2))]),'lineprops','r');
title('MB080C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB080C_operant_then_classical_control_MCH(430:700,:),2)),smooth([std(MB080C_operant_then_classical_control_MCH(430:700,:)')/sqrt(size(MB080C_operant_then_classical_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_operant_then_classical_MCH(430:700,:),2)),smooth([std(MB080C_operant_then_classical_MCH(430:700,:)')/sqrt(size(MB080C_operant_then_classical_MCH,2))]),'lineprops','r');
title('MB080C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB080C_operant_then_classical_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB080C_operant_then_classical_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB080C_operant_then_classical_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB080C_operant_then_classical_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB080C_operant_then_classical_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB080C_operant_then_classical_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB080C_operant_then_classical_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB080C_operant_then_classical_MCH(400:600,i))];
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

%% MB085C
figure
shadedErrorBar([430:700],smooth(mean(MB085C_operant_then_classical_control_3oct(430:700,:),2)),smooth([std(MB085C_operant_then_classical_control_3oct(430:700,:)')/sqrt(size(MB085C_operant_then_classical_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_operant_then_classical_3oct(430:700,:),2)),smooth([std(MB085C_operant_then_classical_3oct(430:700,:)')/sqrt(size(MB085C_operant_then_classical_3oct,2))]),'lineprops','r');
title('MB085C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB085C_operant_then_classical_control_MCH(430:700,:),2)),smooth([std(MB085C_operant_then_classical_control_MCH(430:700,:)')/sqrt(size(MB085C_operant_then_classical_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_operant_then_classical_MCH(430:700,:),2)),smooth([std(MB085C_operant_then_classical_MCH(430:700,:)')/sqrt(size(MB085C_operant_then_classical_MCH,2))]),'lineprops','r');
title('MB085C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB085C_operant_then_classical_control_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB085C_operant_then_classical_control_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB085C_operant_then_classical_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB085C_operant_then_classical_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB085C_operant_then_classical_control_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB085C_operant_then_classical_control_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB085C_operant_then_classical_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB085C_operant_then_classical_MCH(400:600,i))];
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

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');