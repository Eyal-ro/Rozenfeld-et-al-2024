clc;clear;close all;
load('Figure_S14_data.mat');

%%


figure
shadedErrorBar([430:700],smooth(mean(SS00096_operant_control_3oct_left(430:700,:),2)),smooth([std(SS00096_operant_control_3oct_left(430:700,:)')/sqrt(size(SS00096_operant_control_3oct_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_odors_3oct_left(430:700,:),2)),smooth([std(SS00096_operant_no_odors_3oct_left(430:700,:)')/sqrt(size(SS00096_operant_no_odors_3oct_left,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_shocks_3oct_left(430:700,:),2)),smooth([std(SS00096_operant_no_shocks_3oct_left(430:700,:)')/sqrt(size(SS00096_operant_no_shocks_3oct_left,2))]),'lineprops','b');
title('EPG - left PB- 3oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.15 0.2]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, '3oct control','3oct no odors','3oct no shocks');


figure
shadedErrorBar([430:700],smooth(mean(SS00096_operant_control_3oct_right(430:700,:),2)),smooth([std(SS00096_operant_control_3oct_right(430:700,:)')/sqrt(size(SS00096_operant_control_3oct_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_odors_3oct_right(430:700,:),2)),smooth([std(SS00096_operant_no_odors_3oct_right(430:700,:)')/sqrt(size(SS00096_operant_no_odors_3oct_right,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_shocks_3oct_right(430:700,:),2)),smooth([std(SS00096_operant_no_shocks_3oct_right(430:700,:)')/sqrt(size(SS00096_operant_no_shocks_3oct_right,2))]),'lineprops','b');
title('EPG - right PB- 3oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.15 0.2]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, '3oct control','3oct no odors','3oct no shocks');


figure
shadedErrorBar([430:700],smooth(mean(SS00096_operant_control_MCH_left(430:700,:),2)),smooth([std(SS00096_operant_control_MCH_left(430:700,:)')/sqrt(size(SS00096_operant_control_MCH_left,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_odors_MCH_left(430:700,:),2)),smooth([std(SS00096_operant_no_odors_MCH_left(430:700,:)')/sqrt(size(SS00096_operant_no_odors_MCH_left,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_shocks_MCH_left(430:700,:),2)),smooth([std(SS00096_operant_no_shocks_MCH_left(430:700,:)')/sqrt(size(SS00096_operant_no_shocks_MCH_left,2))]),'lineprops','b');
title('EPG - left PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.15 0.2]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, 'MCH control','MCH no odors','MCH no shocks');


figure
shadedErrorBar([430:700],smooth(mean(SS00096_operant_control_MCH_right(430:700,:),2)),smooth([std(SS00096_operant_control_MCH_right(430:700,:)')/sqrt(size(SS00096_operant_control_MCH_right,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_odors_MCH_right(430:700,:),2)),smooth([std(SS00096_operant_no_odors_MCH_right(430:700,:)')/sqrt(size(SS00096_operant_no_odors_MCH_right,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(SS00096_operant_no_shocks_MCH_right(430:700,:),2)),smooth([std(SS00096_operant_no_shocks_MCH_right(430:700,:)')/sqrt(size(SS00096_operant_no_shocks_MCH_right,2))]),'lineprops','b');
title('EPG - right PB- MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.15 0.2]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, 'MCH control','MCH no odors','MCH no shocks');


%% 3oct

trapz_3oct_control=[];
for i=1:size(SS00096_operant_control_3oct_left,2)
    trapz_3oct_control=[trapz_3oct_control,trapz(SS00096_operant_control_3oct_left(400:700,i))];
end
trapz_3oct_no_odors=[];
for i=1:size(SS00096_operant_no_odors_3oct_left,2)
    trapz_3oct_no_odors=[trapz_3oct_no_odors,trapz(SS00096_operant_no_odors_3oct_left(400:700,i))];
end
trapz_3oct_no_shocks=[];
for i=1:size(SS00096_operant_no_shocks_3oct_left,2)
    trapz_3oct_no_shocks=[trapz_3oct_no_shocks,trapz(SS00096_operant_no_shocks_3oct_left(400:700,i))];
end


    
figure;bar(1,nanmean(trapz_3oct_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_3oct_no_shocks),0.4,'FaceAlpha',0.1);


UnivarScatter([padcat(trapz_3oct_control',trapz_3oct_no_odors',trapz_3oct_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct control','3oct no odors','3oct no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -left PB- Odor response-Bar');ylim([-200 200]);

[H, pValue, W] = swtest(trapz_3oct_control);
[H, pValue, W] = swtest(trapz_3oct_no_odors);
[H, pValue, W] = swtest(trapz_3oct_no_shocks);

y=[padcat(trapz_3oct_control',trapz_3oct_no_odors',trapz_3oct_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%-------------------------------------
trapz_3oct_control=[];
for i=1:size(SS00096_operant_control_3oct_right,2)
    trapz_3oct_control=[trapz_3oct_control,trapz(SS00096_operant_control_3oct_right(400:700,i))];
end
trapz_3oct_no_odors=[];
for i=1:size(SS00096_operant_no_odors_3oct_right,2)
    trapz_3oct_no_odors=[trapz_3oct_no_odors,trapz(SS00096_operant_no_odors_3oct_right(400:700,i))];
end
trapz_3oct_no_shocks=[];
for i=1:size(SS00096_operant_no_shocks_3oct_right,2)
    trapz_3oct_no_shocks=[trapz_3oct_no_shocks,trapz(SS00096_operant_no_shocks_3oct_right(400:700,i))];
end


    
figure;bar(1,nanmean(trapz_3oct_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_3oct_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_3oct_no_shocks),0.4,'FaceAlpha',0.1);


UnivarScatter([padcat(trapz_3oct_control',trapz_3oct_no_odors',trapz_3oct_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct control','3oct no odors','3oct no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -right PB- Odor response-Bar');ylim([-200 200]);

[H, pValue, W] = swtest(trapz_3oct_control);
[H, pValue, W] = swtest(trapz_3oct_no_odors);
[H, pValue, W] = swtest(trapz_3oct_no_shocks);

y=[padcat(trapz_3oct_control',trapz_3oct_no_odors',trapz_3oct_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%% MCH

trapz_MCH_control=[];
for i=1:size(SS00096_operant_control_MCH_left,2)
    trapz_MCH_control=[trapz_MCH_control,trapz(SS00096_operant_control_MCH_left(400:700,i))];
end
trapz_MCH_no_odors=[];
for i=1:size(SS00096_operant_no_odors_MCH_left,2)
    trapz_MCH_no_odors=[trapz_MCH_no_odors,trapz(SS00096_operant_no_odors_MCH_left(400:700,i))];
end
trapz_MCH_no_shocks=[];
for i=1:size(SS00096_operant_no_shocks_MCH_left,2)
    trapz_MCH_no_shocks=[trapz_MCH_no_shocks,trapz(SS00096_operant_no_shocks_MCH_left(400:700,i))];
end


    
figure;bar(1,nanmean(trapz_MCH_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_MCH_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_no_shocks),0.4,'FaceAlpha',0.1);


UnivarScatter([padcat(trapz_MCH_control',trapz_MCH_no_odors',trapz_MCH_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH control','MCH no odors','MCH no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -left PB- Odor response-Bar');ylim([-200 200]);

[H, pValue, W] = swtest(trapz_MCH_control);
[H, pValue, W] = swtest(trapz_MCH_no_odors);
[H, pValue, W] = swtest(trapz_MCH_no_shocks);

y=[padcat(trapz_MCH_control',trapz_MCH_no_odors',trapz_MCH_no_shocks')];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%-------------------------------------
trapz_MCH_control=[];
for i=1:size(SS00096_operant_control_MCH_right,2)
    trapz_MCH_control=[trapz_MCH_control,trapz(SS00096_operant_control_MCH_right(400:700,i))];
end
trapz_MCH_no_odors=[];
for i=1:size(SS00096_operant_no_odors_MCH_right,2)
    trapz_MCH_no_odors=[trapz_MCH_no_odors,trapz(SS00096_operant_no_odors_MCH_right(400:700,i))];
end
trapz_MCH_no_shocks=[];
for i=1:size(SS00096_operant_no_shocks_MCH_right,2)
    trapz_MCH_no_shocks=[trapz_MCH_no_shocks,trapz(SS00096_operant_no_shocks_MCH_right(400:700,i))];
end


    
figure;bar(1,nanmean(trapz_MCH_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(trapz_MCH_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(trapz_MCH_no_shocks),0.4,'FaceAlpha',0.1);


UnivarScatter([padcat(trapz_MCH_control',trapz_MCH_no_odors',trapz_MCH_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH control','MCH no odors','MCH no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('EPG -right PB- Odor response-Bar');ylim([-200 200]);

[H, pValue, W] = swtest(trapz_MCH_control);
[H, pValue, W] = swtest(trapz_MCH_no_odors);
[H, pValue, W] = swtest(trapz_MCH_no_shocks);

y=[padcat(trapz_MCH_control',trapz_MCH_no_odors',trapz_MCH_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
