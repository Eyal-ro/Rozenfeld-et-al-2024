%%
clc;clear;close all;
load('Figure_S13_data.mat');
%% Panel B

figure
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_control_3oct_left(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_control_3oct_left(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_control_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_3oct_left(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_3oct_left(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_3oct_left,2))]),'lineprops','r');
title('3 oct-left');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
% set(gca,'XTick',[0:200:1800],'XTickLabel',mat2cell([0:6.0606:54.5455],1,10));
box off;set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');
% ylim([-0.25 0.25]);
xlim([430 700]);


figure
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_control_3oct_right(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_control_3oct_right(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_control_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_3oct_right(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_3oct_right(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_3oct_right,2))]),'lineprops','r');
title('3 oct-right');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
% set(gca,'XTick',[0:200:1800],'XTickLabel',mat2cell([0:6.0606:54.5455],1,10));
box off;set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');
% ylim([-0.3 0.5]);
xlim([430 700]);


figure
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_control_MCH_left(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_control_MCH_left(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_control_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_MCH_left(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_MCH_left(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_MCH_left,2))]),'lineprops','r');
title('MCH-left');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
% set(gca,'XTick',[0:200:1800],'XTickLabel',mat2cell([0:6.0606:54.5455],1,10));
box off;set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');
% ylim([-0.3 0.5]);
xlim([430 700]);


figure
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_control_MCH_right(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_control_MCH_right(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_control_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([1:1800],smooth(mean(SS00096_MCH_Dark_MCH_right(1:1800,:),2)),smooth([std(SS00096_MCH_Dark_MCH_right(1:1800,:)')/sqrt(size(SS00096_MCH_Dark_MCH_right,2))]),'lineprops','r');
title('MCH-right');
xlabel({'Time (sec)'});
ylabel({'\DeltaF/F'});
% set(gca,'XTick',[0:200:1800],'XTickLabel',mat2cell([0:6.0606:54.5455],1,10));
box off;set(gca,'TickDir','out');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');
% ylim([-0.3 0.5]);
xlim([430 700]);

%


trapz_3oct_before_left=[];
for i=1:size(SS00096_MCH_Dark_control_3oct_left,2)
    trapz_3oct_before_left=[trapz_3oct_before_left,trapz(SS00096_MCH_Dark_control_3oct_left(400:700,i))];
end
    
trapz_3oct_after_left=[];
for i=1:size(SS00096_MCH_Dark_3oct_left,2)
    trapz_3oct_after_left=[trapz_3oct_after_left,trapz(SS00096_MCH_Dark_3oct_left(400:700,i))];
end


trapz_3oct_before_right=[];
for i=1:size(SS00096_MCH_Dark_control_3oct_right,2)
    trapz_3oct_before_right=[trapz_3oct_before_right,trapz(SS00096_MCH_Dark_control_3oct_right(400:700,i))];
end
    
trapz_3oct_after_right=[];
for i=1:size(SS00096_MCH_Dark_3oct_right,2)
    trapz_3oct_after_right=[trapz_3oct_after_right,trapz(SS00096_MCH_Dark_3oct_right(400:700,i))];
end




trapz_MCH_before_left=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_left,2)
    trapz_MCH_before_left=[trapz_MCH_before_left,trapz(SS00096_MCH_Dark_control_MCH_left(400:700,i))];
end
    
trapz_MCH_after_left=[];
for i=1:size(SS00096_MCH_Dark_MCH_left,2)
    trapz_MCH_after_left=[trapz_MCH_after_left,trapz(SS00096_MCH_Dark_MCH_left(400:700,i))];
end


trapz_MCH_before_right=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_right,2)
    trapz_MCH_before_right=[trapz_MCH_before_right,trapz(SS00096_MCH_Dark_control_MCH_right(400:700,i))];
end
    
trapz_MCH_after_right=[];
for i=1:size(SS00096_MCH_Dark_MCH_right,2)
    trapz_MCH_after_right=[trapz_MCH_after_right,trapz(SS00096_MCH_Dark_MCH_right(400:700,i))];
end


figure;bar(1,nanmean(trapz_3oct_before_left),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_after_left),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_3oct_before_right),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_3oct_after_right),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_3oct_before_left',trapz_3oct_after_left',trapz_3oct_before_right',trapz_3oct_after_right')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct before-left','3 oct after-left','3oct before-right','3oct after-right'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'AUC \DeltaF/F'});
set(gca,'TickDir','out');
title('Odor response-Bar');


[H, pValue, W] = swtest(trapz_3oct_before_left);
[H, pValue, W] = swtest(trapz_3oct_after_left);
[H, pValue, W] = swtest(trapz_3oct_before_right);
[H, pValue, W] = swtest(trapz_3oct_after_right);

[h,p] = ttest2(trapz_3oct_before_left, trapz_3oct_after_left);
stats=mes(trapz_3oct_before_left, trapz_3oct_after_left,'hedgesg');

[h,p] = ttest2(trapz_3oct_before_right, trapz_3oct_after_right);
stats=mes(trapz_3oct_before_right, trapz_3oct_after_right,'hedgesg');


trapz_MCH_before_left=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_left,2)
    trapz_MCH_before_left=[trapz_MCH_before_left,trapz(SS00096_MCH_Dark_control_MCH_left(400:700,i))];
end
    
trapz_MCH_after_left=[];
for i=1:size(SS00096_MCH_Dark_MCH_left,2)
    trapz_MCH_after_left=[trapz_MCH_after_left,trapz(SS00096_MCH_Dark_MCH_left(400:700,i))];
end


trapz_MCH_before_right=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_right,2)
    trapz_MCH_before_right=[trapz_MCH_before_right,trapz(SS00096_MCH_Dark_control_MCH_right(400:700,i))];
end
    
trapz_MCH_after_right=[];
for i=1:size(SS00096_MCH_Dark_MCH_right,2)
    trapz_MCH_after_right=[trapz_MCH_after_right,trapz(SS00096_MCH_Dark_MCH_right(400:700,i))];
end




trapz_MCH_before_left=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_left,2)
    trapz_MCH_before_left=[trapz_MCH_before_left,trapz(SS00096_MCH_Dark_control_MCH_left(400:700,i))];
end
    
trapz_MCH_after_left=[];
for i=1:size(SS00096_MCH_Dark_MCH_left,2)
    trapz_MCH_after_left=[trapz_MCH_after_left,trapz(SS00096_MCH_Dark_MCH_left(400:700,i))];
end


trapz_MCH_before_right=[];
for i=1:size(SS00096_MCH_Dark_control_MCH_right,2)
    trapz_MCH_before_right=[trapz_MCH_before_right,trapz(SS00096_MCH_Dark_control_MCH_right(400:700,i))];
end
    
trapz_MCH_after_right=[];
for i=1:size(SS00096_MCH_Dark_MCH_right,2)
    trapz_MCH_after_right=[trapz_MCH_after_right,trapz(SS00096_MCH_Dark_MCH_right(400:700,i))];
end


figure;bar(1,nanmean(trapz_MCH_before_left),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_MCH_after_left),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_before_right),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(trapz_MCH_after_right),0.4,'FaceAlpha',0.1);
hold on;

UnivarScatter([padcat(trapz_MCH_before_left',trapz_MCH_after_left',trapz_MCH_before_right',trapz_MCH_after_right')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH before-left','MCH after-left','MCH before-right','MCH after-right'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'AUC \DeltaF/F'});
set(gca,'TickDir','out');
title('Odor response-Bar');


[H, pValue, W] = swtest(trapz_MCH_before_left);
[H, pValue, W] = swtest(trapz_MCH_after_left);
[H, pValue, W] = swtest(trapz_MCH_before_right);
[H, pValue, W] = swtest(trapz_MCH_after_right);


[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before_right, trapz_MCH_after_right, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before_right, trapz_MCH_after_right,'hedgesg');


[h,p] = ttest2(trapz_MCH_before_left, trapz_MCH_after_left);
stats=mes(trapz_MCH_before_left, trapz_MCH_after_left,'hedgesg');
%% Panel D
figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_left(430:700,:),2)),smooth([std(SS00096_naive_3oct_left(430:700,:)')/sqrt(size(SS00096_naive_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_classical_3oct_left(430:700,:),2)),smooth([std(SS00096_classical_3oct_left(430:700,:)')/sqrt(size(SS00096_classical_3oct_left,2))]),'lineprops','r');
title('EPG - left PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_left(430:700,:),2)),smooth([std(SS00096_naive_MCH_left(430:700,:)')/sqrt(size(SS00096_naive_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_classical_MCH_left(430:700,:),2)),smooth([std(SS00096_classical_MCH_left(430:700,:)')/sqrt(size(SS00096_classical_MCH_left,2))]),'lineprops','r');
title('EPG -left PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_left,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_left(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_classical_3oct_left,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_classical_3oct_left(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_left,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_left(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_classical_MCH_left,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_classical_MCH_left(400:700,i))];
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

[p, observeddifference, effectsize] = permutationTest(trapz_3oct_before, trapz_3oct_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_3oct_before,trapz_3oct_after,'hedgesg');

[p, observeddifference, effectsize] = permutationTest(trapz_MCH_before, trapz_MCH_after, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(trapz_MCH_before,trapz_MCH_after,'hedgesg');


% Right PB

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_3oct_right(430:700,:),2)),smooth([std(SS00096_naive_3oct_right(430:700,:)')/sqrt(size(SS00096_naive_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_classical_3oct_right(430:700,:),2)),smooth([std(SS00096_classical_3oct_right(430:700,:)')/sqrt(size(SS00096_classical_3oct_right,2))]),'lineprops','r');
title('EPG - right PB- 3 oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '3oct before training','3oct after training');

figure
shadedErrorBar([430:700],smooth(mean(SS00096_naive_MCH_right(430:700,:),2)),smooth([std(SS00096_naive_MCH_right(430:700,:)')/sqrt(size(SS00096_naive_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_classical_MCH_right(430:700,:),2)),smooth([std(SS00096_classical_MCH_right(430:700,:)')/sqrt(size(SS00096_classical_MCH_right,2))]),'lineprops','r');
title('EPG -right PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);
h = zeros(2, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'MCH before training','MCH after training');

trapz_3oct_before=[];
for i=1:size(SS00096_naive_3oct_right,2)
    trapz_3oct_before=[trapz_3oct_before,trapz(SS00096_naive_3oct_right(400:700,i))];
end
trapz_3oct_after=[];
for i=1:size(SS00096_classical_3oct_right,2)
    trapz_3oct_after=[trapz_3oct_after,trapz(SS00096_classical_3oct_right(400:700,i))];
end
trapz_MCH_before=[];
for i=1:size(SS00096_naive_MCH_right,2)
    trapz_MCH_before=[trapz_MCH_before,trapz(SS00096_naive_MCH_right(400:700,i))];
end
trapz_MCH_after=[];
for i=1:size(SS00096_classical_MCH_right,2)
    trapz_MCH_after=[trapz_MCH_after,trapz(SS00096_classical_MCH_right(400:700,i))];
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
