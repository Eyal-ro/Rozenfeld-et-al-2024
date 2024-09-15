clc;clear;close all;
load('Figure_4_data.mat');

%% MB080C- after 3h- panel B


figure
shadedErrorBar([430:700],smooth(mean(naive_MB080C_3oct(430:700,:),2)),smooth([std(naive_MB080C_3oct(430:700,:)')/sqrt(size(naive_MB080C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB080C_3oct(430:700,:),2)),smooth([std(after_operant_MB080C_3oct(430:700,:)')/sqrt(size(after_operant_MB080C_3oct,2))]),'lineprops','r');
title('MB080C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_MB080C_MCH(430:700,:),2)),smooth([std(naive_MB080C_MCH(430:700,:)')/sqrt(size(naive_MB080C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB080C_MCH(430:700,:),2)),smooth([std(after_operant_MB080C_MCH(430:700,:)')/sqrt(size(after_operant_MB080C_MCH,2))]),'lineprops','r');
title('MB080C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_MB080C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_MB080C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_MB080C_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_MB080C_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_MB080C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_MB080C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_MB080C_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_MB080C_MCH(400:600,i))];
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

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

%% MB080C - immediate- panel B
figure
shadedErrorBar([430:700],smooth(mean(naive_new_MB080C_3oct(430:700,:),2)),smooth([std(naive_new_MB080C_3oct(430:700,:)')/sqrt(size(naive_new_MB080C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB080C_immediate_3oct(430:700,:),2)),smooth([std(after_operant_MB080C_immediate_3oct(430:700,:)')/sqrt(size(after_operant_MB080C_immediate_3oct,2))]),'lineprops','r');
title('MB080C immediate - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_new_MB080C_MCH(430:700,:),2)),smooth([std(naive_new_MB080C_MCH(430:700,:)')/sqrt(size(naive_new_MB080C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB080C_immediate_MCH(430:700,:),2)),smooth([std(after_operant_MB080C_immediate_MCH(430:700,:)')/sqrt(size(after_operant_MB080C_immediate_MCH,2))]),'lineprops','r');
title('MB080C immediate- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_new_MB080C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_new_MB080C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_MB080C_immediate_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_MB080C_immediate_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_new_MB080C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_new_MB080C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_MB080C_immediate_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_MB080C_immediate_MCH(400:600,i))];
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
title('MB080C immediate- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');
%% MB080C - classical- panel C

figure;
shadedErrorBar([430:700],smooth(mean(naive_MB080C_3oct(430:700,:),2)),smooth([std(naive_MB080C_3oct(430:700,:)')/sqrt(size(naive_MB080C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_MB080C_3oct(430:700,:),2)),smooth([std(after_classical_MB080C_3oct(430:700,:)')/sqrt(size(after_classical_MB080C_3oct,2))]),'lineprops','r');
title('MB080C classical - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_MB080C_MCH(430:700,:),2)),smooth([std(naive_MB080C_MCH(430:700,:)')/sqrt(size(naive_MB080C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_MB080C_MCH(430:700,:),2)),smooth([std(after_classical_MB080C_MCH(430:700,:)')/sqrt(size(after_classical_MB080C_MCH,2))]),'lineprops','r');
title('MB080C classical- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_MB080C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_MB080C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_classical_MB080C_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_classical_MB080C_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_MB080C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_MB080C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_classical_MB080C_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_classical_MB080C_MCH(400:600,i))];
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
title('MB080C classical- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');
%% MB077C- after 3h- panel D


figure
shadedErrorBar([430:700],smooth(mean(naive_MB077C_3oct(430:700,:),2)),smooth([std(naive_MB077C_3oct(430:700,:)')/sqrt(size(naive_MB077C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB077C_3oct(430:700,:),2)),smooth([std(after_operant_MB077C_3oct(430:700,:)')/sqrt(size(after_operant_MB077C_3oct,2))]),'lineprops','r');
title('MB077C - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_MB077C_MCH(430:700,:),2)),smooth([std(naive_MB077C_MCH(430:700,:)')/sqrt(size(naive_MB077C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_MB077C_MCH(430:700,:),2)),smooth([std(after_operant_MB077C_MCH(430:700,:)')/sqrt(size(after_operant_MB077C_MCH,2))]),'lineprops','r');
title('MB077C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_MB077C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_MB077C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_MB077C_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_MB077C_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_MB077C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_MB077C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_MB077C_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_MB077C_MCH(400:600,i))];
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

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

%% MB077C - immediate- panel D
figure
shadedErrorBar([430:700],smooth(mean(naive_new_MB077C_3oct(430:700,:),2)),smooth([std(naive_new_MB077C_3oct(430:700,:)')/sqrt(size(naive_new_MB077C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_immediate_MB077C_3oct(430:700,:),2)),smooth([std(after_operant_immediate_MB077C_3oct(430:700,:)')/sqrt(size(after_operant_immediate_MB077C_3oct,2))]),'lineprops','r');
title('MB077C immediate - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_new_MB077C_MCH(430:700,:),2)),smooth([std(naive_new_MB077C_MCH(430:700,:)')/sqrt(size(naive_new_MB077C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_immediate_MB077C_MCH(430:700,:),2)),smooth([std(after_operant_immediate_MB077C_MCH(430:700,:)')/sqrt(size(after_operant_immediate_MB077C_MCH,2))]),'lineprops','r');
title('MB077C immediate- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_new_MB077C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_new_MB077C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_immediate_MB077C_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_immediate_MB077C_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_new_MB077C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_new_MB077C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_immediate_MB077C_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_immediate_MB077C_MCH(400:600,i))];
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
title('MB077C immediate- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');


%% MB077C - classical- panel E
figure;
shadedErrorBar([430:700],smooth(mean(naive_MB077C_3oct(430:700,:),2)),smooth([std(naive_MB077C_3oct(430:700,:)')/sqrt(size(naive_MB077C_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_MB077C_3oct(430:700,:),2)),smooth([std(after_classical_MB077C_3oct(430:700,:)')/sqrt(size(after_classical_MB077C_3oct,2))]),'lineprops','r');
title('MB077C classical - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_MB077C_MCH(430:700,:),2)),smooth([std(naive_MB077C_MCH(430:700,:)')/sqrt(size(naive_MB077C_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_MB077C_MCH(430:700,:),2)),smooth([std(after_classical_MB077C_MCH(430:700,:)')/sqrt(size(after_classical_MB077C_MCH,2))]),'lineprops','r');
title('MB077C classical- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_MB077C_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_MB077C_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_classical_MB077C_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_classical_MB077C_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_MB077C_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_MB077C_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_classical_MB077C_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_classical_MB077C_MCH(400:600,i))];
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
title('MB077C classical- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');
%% MB085C- max shocks operant - panel F

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_3oct(430:700,:),2)),smooth([std(MB085C_naive_3oct(430:700,:)')/sqrt(size(MB085C_naive_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_maxOperant_3oct(430:700,:),2)),smooth([std(MB085C_maxOperant_3oct(430:700,:)')/sqrt(size(MB085C_maxOperant_3oct,2))]),'lineprops','r');
title('MB085C max operant- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_MCH(430:700,:),2)),smooth([std(MB085C_naive_MCH(430:700,:)')/sqrt(size(MB085C_naive_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_maxOperant_MCH(430:700,:),2)),smooth([std(MB085C_maxOperant_MCH(430:700,:)')/sqrt(size(MB085C_maxOperant_MCH,2))]),'lineprops','r');
title('MB085C max operant- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB085C_naive_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB085C_naive_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB085C_maxOperant_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB085C_maxOperant_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB085C_naive_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB085C_naive_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB085C_maxOperant_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB085C_maxOperant_MCH(400:600,i))];
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
title('MB085C max operant- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');


%% MB085C- 2 shocks classical- panel G

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_3oct(430:700,:),2)),smooth([std(MB085C_naive_3oct(430:700,:)')/sqrt(size(MB085C_naive_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_2classical_3oct(430:700,:),2)),smooth([std(MB085C_2classical_3oct(430:700,:)')/sqrt(size(MB085C_2classical_3oct,2))]),'lineprops','r');
title('MB085C 2 classical- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_MCH(430:700,:),2)),smooth([std(MB085C_naive_MCH(430:700,:)')/sqrt(size(MB085C_naive_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_2classical_MCH(430:700,:),2)),smooth([std(MB085C_2classical_MCH(430:700,:)')/sqrt(size(MB085C_2classical_MCH,2))]),'lineprops','r');
title('MB085C 2 classical- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB085C_naive_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB085C_naive_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB085C_2classical_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB085C_2classical_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB085C_naive_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB085C_naive_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB085C_2classical_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB085C_2classical_MCH(400:600,i))];
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
title('MB085C 2 classical- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');


%% MB085C- 40 shocks classical- panel G

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_3oct(430:700,:),2)),smooth([std(MB085C_naive_3oct(430:700,:)')/sqrt(size(MB085C_naive_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_40classical_3oct(430:700,:),2)),smooth([std(MB085C_40classical_3oct(430:700,:)')/sqrt(size(MB085C_40classical_3oct,2))]),'lineprops','r');
title('MB085C 40 classical- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(MB085C_naive_MCH(430:700,:),2)),smooth([std(MB085C_naive_MCH(430:700,:)')/sqrt(size(MB085C_naive_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_40classical_MCH(430:700,:),2)),smooth([std(MB085C_40classical_MCH(430:700,:)')/sqrt(size(MB085C_40classical_MCH,2))]),'lineprops','r');
title('MB085C 40 classical- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(MB085C_naive_3oct,2)
    max_3oct_before=[max_3oct_before,max(MB085C_naive_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(MB085C_40classical_3oct,2)
    max_3oct_after=[max_3oct_after,max(MB085C_40classical_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(MB085C_naive_MCH,2)
    max_MCH_before=[max_MCH_before,max(MB085C_naive_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(MB085C_40classical_MCH,2)
    max_MCH_after=[max_MCH_after,max(MB085C_40classical_MCH(400:600,i))];
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
title('MB085C 40 classical- Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');
