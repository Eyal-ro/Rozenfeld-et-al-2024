clc;clear;close all;
load('Figure_7_data.mat');
%% GMR37F06 -PEN

figure
shadedErrorBar([430:700],smooth(mean(naive_49962_3oct(430:700,:),2)),smooth([std(naive_49962_3oct(430:700,:)')/sqrt(size(naive_49962_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_49962_3oct(430:700,:),2)),smooth([std(after_operant_49962_3oct(430:700,:)')/sqrt(size(after_operant_49962_3oct,2))]),'lineprops','r');
title('PEN - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_49962_MCH(430:700,:),2)),smooth([std(naive_49962_MCH(430:700,:)')/sqrt(size(naive_49962_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_49962_MCH(430:700,:),2)),smooth([std(after_operant_49962_MCH(430:700,:)')/sqrt(size(after_operant_49962_MCH,2))]),'lineprops','r');
title('PEN - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_49962_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_49962_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_49962_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_49962_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_49962_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_49962_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_49962_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_49962_MCH(400:600,i))];
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
title('PEN - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[h,p] = ttest2(max_3oct_before,max_3oct_after);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');
 
%% 76008 - PFNv

figure
shadedErrorBar([430:700],smooth(mean(naive_76008_3oct(430:700,:),2)),smooth([std(naive_76008_3oct(430:700,:)')/sqrt(size(naive_76008_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_76008_3oct(430:700,:),2)),smooth([std(after_operant_76008_3oct(430:700,:)')/sqrt(size(after_operant_76008_3oct,2))]),'lineprops','r');
title('PFNv - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_76008_MCH(430:700,:),2)),smooth([std(naive_76008_MCH(430:700,:)')/sqrt(size(naive_76008_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_76008_MCH(430:700,:),2)),smooth([std(after_operant_76008_MCH(430:700,:)')/sqrt(size(after_operant_76008_MCH,2))]),'lineprops','r');
title('PFNv - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_76008_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_76008_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_76008_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_76008_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_76008_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_76008_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_76008_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_76008_MCH(400:600,i))];
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
title('PFNv - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');

%% EPG - Ellipsoid body -operant


figure
shadedErrorBar([430:700],smooth(mean(naive_EPG_3oct(430:700,:),2)),smooth([std(naive_EPG_3oct(430:700,:)')/sqrt(size(naive_EPG_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_EPG_3oct(430:700,:),2)),smooth([std(after_operant_EPG_3oct(430:700,:)')/sqrt(size(after_operant_EPG_3oct,2))]),'lineprops','r');
title('EPG - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_EPG_MCH(430:700,:),2)),smooth([std(naive_EPG_MCH(430:700,:)')/sqrt(size(naive_EPG_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_operant_EPG_MCH(430:700,:),2)),smooth([std(after_operant_EPG_MCH(430:700,:)')/sqrt(size(after_operant_EPG_MCH,2))]),'lineprops','r');
title('EPG - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_EPG_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_EPG_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_operant_EPG_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_operant_EPG_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_EPG_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_EPG_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_operant_EPG_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_operant_EPG_MCH(400:600,i))];
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
title('EPG - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[h,p] = ttest2(max_MCH_before,max_MCH_after);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');
%% EPG - Ellipsoid body -classical

figure
shadedErrorBar([430:700],smooth(mean(naive_EPG_3oct(430:700,:),2)),smooth([std(naive_EPG_3oct(430:700,:)')/sqrt(size(naive_EPG_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_EPG_3oct(430:700,:),2)),smooth([std(after_classical_EPG_3oct(430:700,:)')/sqrt(size(after_classical_EPG_3oct,2))]),'lineprops','r');
title('EPG - 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(naive_EPG_MCH(430:700,:),2)),smooth([std(naive_EPG_MCH(430:700,:)')/sqrt(size(naive_EPG_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(after_classical_EPG_MCH(430:700,:),2)),smooth([std(after_classical_EPG_MCH(430:700,:)')/sqrt(size(after_classical_EPG_MCH,2))]),'lineprops','r');
title('EPG - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

max_3oct_before=[];
for i=1:size(naive_EPG_3oct,2)
    max_3oct_before=[max_3oct_before,max(naive_EPG_3oct(400:600,i))];
end
max_3oct_after=[];
for i=1:size(after_classical_EPG_3oct,2)
    max_3oct_after=[max_3oct_after,max(after_classical_EPG_3oct(400:600,i))];
end
max_MCH_before=[];
for i=1:size(naive_EPG_MCH,2)
    max_MCH_before=[max_MCH_before,max(naive_EPG_MCH(400:600,i))];
end
max_MCH_after=[];
for i=1:size(after_classical_EPG_MCH,2)
    max_MCH_after=[max_MCH_after,max(after_classical_EPG_MCH(400:600,i))];
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
title('EPG - Odor response-Bar');

[H, pValue, W] = swtest(max_3oct_before);
[H, pValue, W] = swtest(max_3oct_after);
[H, pValue, W] = swtest(max_MCH_before);
[H, pValue, W] = swtest(max_MCH_after);

[p, observeddifference, effectsize] = permutationTest(max_MCH_before, max_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_MCH_before,max_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(max_3oct_before, max_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(max_3oct_before,max_3oct_after,'hedgesg');
%% EPG - bridge -MCH trained left


figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_left(430:700,:),2)),smooth([std(SS00096_naive_3oct_left(430:700,:)')/sqrt(size(SS00096_naive_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_3oct_left(430:700,:),2)),smooth([std(SS00096_operant_3oct_left(430:700,:)')/sqrt(size(SS00096_operant_3oct_left,2))]),'lineprops','r');
title('EPG - left PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_left(430:700,:),2)),smooth([std(SS00096_naive_MCH_left(430:700,:)')/sqrt(size(SS00096_naive_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_MCH_left(430:700,:),2)),smooth([std(SS00096_operant_MCH_left(430:700,:)')/sqrt(size(SS00096_operant_MCH_left,2))]),'lineprops','r');
title('EPG -left PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_left,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_left(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_operant_3oct_left,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_operant_3oct_left(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_left,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_left(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_operant_MCH_left,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_operant_MCH_left(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -left PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[h,p] = ttest2(trapz_3oct_before,trapz_3oct_after);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

% Right PB

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_right(430:700,:),2)),smooth([std(SS00096_naive_3oct_right(430:700,:)')/sqrt(size(SS00096_naive_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_3oct_right(430:700,:),2)),smooth([std(SS00096_operant_3oct_right(430:700,:)')/sqrt(size(SS00096_operant_3oct_right,2))]),'lineprops','r');
title('EPG - right PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_right(430:700,:),2)),smooth([std(SS00096_naive_MCH_right(430:700,:)')/sqrt(size(SS00096_naive_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_MCH_right(430:700,:),2)),smooth([std(SS00096_operant_MCH_right(430:700,:)')/sqrt(size(SS00096_operant_MCH_right,2))]),'lineprops','r');
title('EPG -right PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_right,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_right(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_operant_3oct_right,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_operant_3oct_right(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_right,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_right(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_operant_MCH_right,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_operant_MCH_right(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -right PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[h,p] = ttest2(trapz_3oct_before,trapz_3oct_after);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

%% EPG - bridge -MCH trained right

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_left(430:700,:),2)),smooth([std(SS00096_naive_3oct_left(430:700,:)')/sqrt(size(SS00096_naive_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_right_3oct_left(430:700,:),2)),smooth([std(SS00096_MCH_right_3oct_left(430:700,:)')/sqrt(size(SS00096_MCH_right_3oct_left,2))]),'lineprops','r');
title('EPG - left PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_left(430:700,:),2)),smooth([std(SS00096_naive_MCH_left(430:700,:)')/sqrt(size(SS00096_naive_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_right_MCH_left(430:700,:),2)),smooth([std(SS00096_MCH_right_MCH_left(430:700,:)')/sqrt(size(SS00096_MCH_right_MCH_left,2))]),'lineprops','r');
title('EPG -left PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_left,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_left(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_MCH_right_3oct_left,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_MCH_right_3oct_left(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_left,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_left(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_MCH_right_MCH_left,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_MCH_right_MCH_left(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -left PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[h,p] = ttest2(trapz_3oct_before,trapz_3oct_after);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

% Right PB

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_right(430:700,:),2)),smooth([std(SS00096_naive_3oct_right(430:700,:)')/sqrt(size(SS00096_naive_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_right_3oct_right(430:700,:),2)),smooth([std(SS00096_MCH_right_3oct_right(430:700,:)')/sqrt(size(SS00096_MCH_right_3oct_right,2))]),'lineprops','r');
title('EPG - right PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_right(430:700,:),2)),smooth([std(SS00096_naive_MCH_right(430:700,:)')/sqrt(size(SS00096_naive_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_right_MCH_right(430:700,:),2)),smooth([std(SS00096_MCH_right_MCH_right(430:700,:)')/sqrt(size(SS00096_MCH_right_MCH_right,2))]),'lineprops','r');
title('EPG -right PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_right,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_right(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_MCH_right_3oct_right,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_MCH_right_3oct_right(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_right,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_right(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_MCH_right_MCH_right,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_MCH_right_MCH_right(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -right PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(trapz_3oct_before, trapz_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

%% EPG - bridge -MCH trained left then right

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_left(430:700,:),2)),smooth([std(SS00096_naive_3oct_left(430:700,:)')/sqrt(size(SS00096_naive_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_LeftThenRight_3oct_left(430:700,:),2)),smooth([std(SS00096_MCH_LeftThenRight_3oct_left(430:700,:)')/sqrt(size(SS00096_MCH_LeftThenRight_3oct_left,2))]),'lineprops','r');
title('EPG - left PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_left(430:700,:),2)),smooth([std(SS00096_naive_MCH_left(430:700,:)')/sqrt(size(SS00096_naive_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_LeftThenRight_MCH_left(430:700,:),2)),smooth([std(SS00096_MCH_LeftThenRight_MCH_left(430:700,:)')/sqrt(size(SS00096_MCH_LeftThenRight_MCH_left,2))]),'lineprops','r');
title('EPG -left PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_left,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_left(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_MCH_LeftThenRight_3oct_left,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_MCH_LeftThenRight_3oct_left(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_left,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_left(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_MCH_LeftThenRight_MCH_left,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_MCH_LeftThenRight_MCH_left(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -left PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(trapz_3oct_before, trapz_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

% Right PB

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_right(430:700,:),2)),smooth([std(SS00096_naive_3oct_right(430:700,:)')/sqrt(size(SS00096_naive_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_LeftThenRight_3oct_right(430:700,:),2)),smooth([std(SS00096_MCH_LeftThenRight_3oct_right(430:700,:)')/sqrt(size(SS00096_MCH_LeftThenRight_3oct_right,2))]),'lineprops','r');
title('EPG - right PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_right(430:700,:),2)),smooth([std(SS00096_naive_MCH_right(430:700,:)')/sqrt(size(SS00096_naive_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_MCH_LeftThenRight_MCH_right(430:700,:),2)),smooth([std(SS00096_MCH_LeftThenRight_MCH_right(430:700,:)')/sqrt(size(SS00096_MCH_LeftThenRight_MCH_right,2))]),'lineprops','r');
title('EPG -right PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_right,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_right(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_MCH_LeftThenRight_3oct_right,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_MCH_LeftThenRight_3oct_right(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_right,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_right(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_MCH_LeftThenRight_MCH_right,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_MCH_LeftThenRight_MCH_right(400:700,i))];
end
    
figure;bar(1,nanmean(trapz_3oct_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before',trapz_3oct_after',trapz_MCH_before',trapz_MCH_after')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before','3 oct after','MCH before','MCH after'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -right PB- Odor response-Bar');

[H, pValue, W] = swtest(trapz_3oct_before);
[H, pValue, W] = swtest(trapz_3oct_after);
[H, pValue, W] = swtest(trapz_MCH_before);
[H, pValue, W] = swtest(trapz_MCH_after);

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(trapz_3oct_before, trapz_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

    