clc;clear;close all;
load('Figure_S10_data.mat');
%% MB080C

figure
shadedErrorBar([430:700],smooth(mean(MB080C_control_3oct(430:700,:),2)),smooth([std(MB080C_control_3oct(430:700,:)')/sqrt(size(MB080C_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_no_odors_3oct(430:700,:),2)),smooth([std(MB080C_no_odors_3oct(430:700,:)')/sqrt(size(MB080C_no_odors_3oct,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_no_shocks_3oct(430:700,:),2)),smooth([std(MB080C_no_shocks_3oct(430:700,:)')/sqrt(size(MB080C_no_shocks_3oct,2))]),'lineprops','b');
title('MB080C - 3oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.2 1.6]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, '3oct control','3oct no odors','3oct no shocks');



max_3oct_control=[];
for i=1:size(MB080C_control_3oct,2)
    max_3oct_control=[max_3oct_control,max(MB080C_control_3oct(400:600,i))];
end
max_3oct_no_odors=[];
for i=1:size(MB080C_no_odors_3oct,2)
    max_3oct_no_odors=[max_3oct_no_odors,max(MB080C_no_odors_3oct(400:600,i))];
end
max_3oct_no_shocks=[];
for i=1:size(MB080C_no_shocks_3oct,2)
    max_3oct_no_shocks=[max_3oct_no_shocks,max(MB080C_no_shocks_3oct(400:600,i))];
end

    
figure;bar(1,nanmean(max_3oct_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_3oct_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct control','3oct no odors','3oct no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB080C - Odor response-Bar');ylim([0 3.5]);

[H, pValue, W] = swtest(max_3oct_control);
[H, pValue, W] = swtest(max_3oct_no_odors);
[H, pValue, W] = swtest(max_3oct_no_shocks);

y=[padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%-------------------------------------------------------------------------
figure
shadedErrorBar([430:700],smooth(mean(MB080C_control_MCH(430:700,:),2)),smooth([std(MB080C_control_MCH(430:700,:)')/sqrt(size(MB080C_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_no_odors_MCH(430:700,:),2)),smooth([std(MB080C_no_odors_MCH(430:700,:)')/sqrt(size(MB080C_no_odors_MCH,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB080C_no_shocks_MCH(430:700,:),2)),smooth([std(MB080C_no_shocks_MCH(430:700,:)')/sqrt(size(MB080C_no_shocks_MCH,2))]),'lineprops','b');
title('MB080C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.2 1.6]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, 'MCH control','MCH no odors','MCH no shocks');



max_MCH_control=[];
for i=1:size(MB080C_control_MCH,2)
    max_MCH_control=[max_MCH_control,max(MB080C_control_MCH(400:600,i))];
end
max_MCH_no_odors=[];
for i=1:size(MB080C_no_odors_MCH,2)
    max_MCH_no_odors=[max_MCH_no_odors,max(MB080C_no_odors_MCH(400:600,i))];
end
max_MCH_no_shocks=[];
for i=1:size(MB080C_no_shocks_MCH,2)
    max_MCH_no_shocks=[max_MCH_no_shocks,max(MB080C_no_shocks_MCH(400:600,i))];
end

    
figure;bar(1,nanmean(max_MCH_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_MCH_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH control','MCH no odors','MCH no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB080C - Odor response-Bar');ylim([0 3.5]);

[H, pValue, W] = swtest(max_MCH_control);
[H, pValue, W] = swtest(max_MCH_no_odors);
[H, pValue, W] = swtest(max_MCH_no_shocks);

y=[padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')];

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% MB077C

figure
shadedErrorBar([430:700],smooth(mean(MB077C_control_3oct(430:700,:),2)),smooth([std(MB077C_control_3oct(430:700,:)')/sqrt(size(MB077C_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_no_odors_3oct(430:700,:),2)),smooth([std(MB077C_no_odors_3oct(430:700,:)')/sqrt(size(MB077C_no_odors_3oct,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_no_shocks_3oct(430:700,:),2)),smooth([std(MB077C_no_shocks_3oct(430:700,:)')/sqrt(size(MB077C_no_shocks_3oct,2))]),'lineprops','b');
title('MB077C - 3oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.2 0.7]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, '3oct control','3oct no odors','3oct no shocks');



max_3oct_control=[];
for i=1:size(MB077C_control_3oct,2)
    max_3oct_control=[max_3oct_control,max(MB077C_control_3oct(400:600,i))];
end
max_3oct_no_odors=[];
for i=1:size(MB077C_no_odors_3oct,2)
    max_3oct_no_odors=[max_3oct_no_odors,max(MB077C_no_odors_3oct(400:600,i))];
end
max_3oct_no_shocks=[];
for i=1:size(MB077C_no_shocks_3oct,2)
    max_3oct_no_shocks=[max_3oct_no_shocks,max(MB077C_no_shocks_3oct(400:600,i))];
end

    
figure;bar(1,nanmean(max_3oct_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_3oct_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct control','3oct no odors','3oct no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB077C - Odor response-Bar');ylim([0 2.5]);

[H, pValue, W] = swtest(max_3oct_control);
[H, pValue, W] = swtest(max_3oct_no_odors);
[H, pValue, W] = swtest(max_3oct_no_shocks);

y=[padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%-------------------------------------------------------------------------
figure
shadedErrorBar([430:700],smooth(mean(MB077C_control_MCH(430:700,:),2)),smooth([std(MB077C_control_MCH(430:700,:)')/sqrt(size(MB077C_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_no_odors_MCH(430:700,:),2)),smooth([std(MB077C_no_odors_MCH(430:700,:)')/sqrt(size(MB077C_no_odors_MCH,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB077C_no_shocks_MCH(430:700,:),2)),smooth([std(MB077C_no_shocks_MCH(430:700,:)')/sqrt(size(MB077C_no_shocks_MCH,2))]),'lineprops','b');
title('MB077C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.2 0.7]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, 'MCH control','MCH no odors','MCH no shocks');



max_MCH_control=[];
for i=1:size(MB077C_control_MCH,2)
    max_MCH_control=[max_MCH_control,max(MB077C_control_MCH(400:600,i))];
end
max_MCH_no_odors=[];
for i=1:size(MB077C_no_odors_MCH,2)
    max_MCH_no_odors=[max_MCH_no_odors,max(MB077C_no_odors_MCH(400:600,i))];
end
max_MCH_no_shocks=[];
for i=1:size(MB077C_no_shocks_MCH,2)
    max_MCH_no_shocks=[max_MCH_no_shocks,max(MB077C_no_shocks_MCH(400:600,i))];
end

    
figure;bar(1,nanmean(max_MCH_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_MCH_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH control','MCH no odors','MCH no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB077C - Odor response-Bar');ylim([0 2.5]);

[H, pValue, W] = swtest(max_MCH_control);
[H, pValue, W] = swtest(max_MCH_no_odors);
[H, pValue, W] = swtest(max_MCH_no_shocks);

y=[padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')


%% MB085C

figure
shadedErrorBar([430:700],smooth(mean(MB085C_control_3oct(430:700,:),2)),smooth([std(MB085C_control_3oct(430:700,:)')/sqrt(size(MB085C_control_3oct,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_no_odors_3oct(430:700,:),2)),smooth([std(MB085C_no_odors_3oct(430:700,:)')/sqrt(size(MB085C_no_odors_3oct,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_no_shocks_3oct(430:700,:),2)),smooth([std(MB085C_no_shocks_3oct(430:700,:)')/sqrt(size(MB085C_no_shocks_3oct,2))]),'lineprops','b');
title('MB085C - 3oct');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.1 0.5]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, '3oct control','3oct no odors','3oct no shocks');



max_3oct_control=[];
for i=1:size(MB085C_control_3oct,2)
    max_3oct_control=[max_3oct_control,max(MB085C_control_3oct(400:600,i))];
end
max_3oct_no_odors=[];
for i=1:size(MB085C_no_odors_3oct,2)
    max_3oct_no_odors=[max_3oct_no_odors,max(MB085C_no_odors_3oct(400:600,i))];
end
max_3oct_no_shocks=[];
for i=1:size(MB085C_no_shocks_3oct,2)
    max_3oct_no_shocks=[max_3oct_no_shocks,max(MB085C_no_shocks_3oct(400:600,i))];
end

    
figure;bar(1,nanmean(max_3oct_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_3oct_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_3oct_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'3oct control','3oct no odors','3oct no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB085C - Odor response-Bar');%ylim([-0.1 0.5]);

[H, pValue, W] = swtest(max_3oct_control);
[H, pValue, W] = swtest(max_3oct_no_odors);
[H, pValue, W] = swtest(max_3oct_no_shocks);

y=[padcat(max_3oct_control',max_3oct_no_odors',max_3oct_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%-------------------------------------------------------------------------
figure
shadedErrorBar([430:700],smooth(mean(MB085C_control_MCH(430:700,:),2)),smooth([std(MB085C_control_MCH(430:700,:)')/sqrt(size(MB085C_control_MCH,2))]),'lineprops','k');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_no_odors_MCH(430:700,:),2)),smooth([std(MB085C_no_odors_MCH(430:700,:)')/sqrt(size(MB085C_no_odors_MCH,2))]),'lineprops','r');
hold on
shadedErrorBar([430:700],smooth(mean(MB085C_no_shocks_MCH(430:700,:),2)),smooth([std(MB085C_no_shocks_MCH(430:700,:)')/sqrt(size(MB085C_no_shocks_MCH,2))]),'lineprops','b');
title('MB085C - MCH');ylabel({'\DeltaF/F'});
box off;set(gca,'TickDir','out');xlim([430 700]);ylim([-0.1 0.5]);
h = zeros(3, 1);h(1) = plot(NaN,NaN,'k','LineWidth',2);h(2) = plot(NaN,NaN,'r','LineWidth',2);h(3) = plot(NaN,NaN,'b','LineWidth',2);
legend(h, 'MCH control','MCH no odors','MCH no shocks');



max_MCH_control=[];
for i=1:size(MB085C_control_MCH,2)
    max_MCH_control=[max_MCH_control,max(MB085C_control_MCH(400:600,i))];
end
max_MCH_no_odors=[];
for i=1:size(MB085C_no_odors_MCH,2)
    max_MCH_no_odors=[max_MCH_no_odors,max(MB085C_no_odors_MCH(400:600,i))];
end
max_MCH_no_shocks=[];
for i=1:size(MB085C_no_shocks_MCH,2)
    max_MCH_no_shocks=[max_MCH_no_shocks,max(MB085C_no_shocks_MCH(400:600,i))];
end

    
figure;bar(1,nanmean(max_MCH_control),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(max_MCH_no_odors),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(max_MCH_no_shocks),0.4,'FaceAlpha',0.1);
hold on;


UnivarScatter([padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')]...
    ,'Width',0.2,'Compression',15,'Label',{'MCH control','MCH no odors','MCH no shocks'},'Whiskers','none');
xtickangle(45);box off;ylabel({'peak \DeltaF/F'});set(gca,'TickDir','out');
title('MB085C - Odor response-Bar');%ylim([0 3.5]);

[H, pValue, W] = swtest(max_MCH_control);
[H, pValue, W] = swtest(max_MCH_no_odors);
[H, pValue, W] = swtest(max_MCH_no_shocks);

y=[padcat(max_MCH_control',max_MCH_no_odors',max_MCH_no_shocks')];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')