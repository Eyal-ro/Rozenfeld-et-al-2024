clc;clear;close all;
load('Figure_1_data.mat');
%% Panel B,C
figure;
bar(1,nanmean(wt_operant(:,1)),0.4,'FaceColor','k')
hold on;
UnivarScatter([wt_operant(:,1)]...
    ,'Width',0.2,'Compression',15,'Label',{''},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 1.5]);
box off;
set(gca,'TickDir','out');title('');ylabel('Learning index');

figure;
scatter(wt_operant(:,2)/24,wt_operant(:,1),'filled','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
box off;set(gca,'TickDir','out');
xlabel('# of shocks');ylabel('Leaning index');
%% Panel D
all_shocks = padcat(wt_shock_2_classical,wt_shock_10_classical,wt_shock_20_classical,wt_shock_30_classical);

figure;
bar([1 2 3 4],[nanmean(all_shocks(:,1)),nanmean(all_shocks(:,2)),nanmean(all_shocks(:,3)),nanmean(all_shocks(:,4))],0.4,'FaceColor','k')
hold on;
UnivarScatter([all_shocks(:,1),all_shocks(:,2),all_shocks(:,3),all_shocks(:,4)]...
    ,'Width',0.2,'Compression',15,'Label',{'2 Shocks','10 Shocks','20 Shocks','30 Shocks'},'Whiskers','none','MarkerEdgeColor',[.7 .7 .7],'MarkerFaceColor',[.7 .7 .7])
xlim([0.5 4.5]);ylim([-100 100]);
box off;
set(gca,'TickDir','out');ylabel('Learning index');

[H, pValue, W] = swtest(wt_shock_2_classical);
[H, pValue, W] = swtest(wt_shock_10_classical);
[H, pValue, W] = swtest(wt_shock_20_classical);
[H, pValue, W] = swtest(wt_shock_30_classical);

y=all_shocks;

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)',y(:,4)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3';ones(size(y(:,4)))*4']',1000)

[p,tbl,stats] =anova1(y)
c=multcompare(stats)
mes1way(y,'eta2')
%% Panel E
wt_operant(:,2)=wt_operant(:,2)/24;
[B,index] = sortrows(wt_operant,2)

less_10_shocks=[];
more_10_less_20_shocks=[];
more_20_less_30_shocks=[];
more_30_shocks=[];

for i=1:length(B)
    if B(i,2)<10
        less_10_shocks = [less_10_shocks;B(i,1)];
    elseif B(i,2)>10 && B(i,2)<20
        more_10_less_20_shocks=[more_10_less_20_shocks;B(i,1)];
    elseif B(i,2)>20 && B(i,2)<30
        more_20_less_30_shocks=[more_20_less_30_shocks;B(i,1)];
    else
        more_30_shocks=[more_30_shocks;B(i,1)];
    end
end

figure;
bar([1 2 3 4],[mean(less_10_shocks),mean(more_10_less_20_shocks),mean(more_20_less_30_shocks),mean(more_30_shocks)],'FaceColor','k');
hold on;
UnivarScatter([padcat(less_10_shocks, more_10_less_20_shocks, more_20_less_30_shocks, more_30_shocks)],'Width',0.2,'Compression',5,'Label',{'less than 10','10-20','20-30','over 30'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.7 0.7 0.7],'MarkerFaceColor',[0.7 0.7 0.7],'PointSize',5);
xtickangle(45);box off;ylabel({'Learning index'});
set(gca,'TickDir','out');

[H, pValue, W] = swtest(less_10_shocks);
[H, pValue, W] = swtest(more_10_less_20_shocks);
[H, pValue, W] = swtest(more_20_less_30_shocks);
[H, pValue, W] = swtest(more_30_shocks);

y=[padcat(less_10_shocks, more_10_less_20_shocks, more_20_less_30_shocks, more_30_shocks)];

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)',y(:,4)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3';ones(size(y(:,4)))*4']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')
%% Panel F-H

figure;
bar([1:2],[mean(classical_speed), mean(operant_speed)]);
hold on;
UnivarScatter([padcat((classical_speed), (operant_speed))],'Width',0.2,'Compression',5,'Label',{'classical','operant',},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'speed (mm/sec)'});title(' speed');
set(gca,'TickDir','out');

[H, pValue, W] = swtest(classical_speed);
[H, pValue, W] = swtest(operant_speed);

[p, observeddifference, effectsize] = permutationTest(classical_speed, operant_speed, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(classical_speed,operant_speed,'hedgesg');
% -------------------------------------

classical_freeze = classical_freeze/30;
operant_freeze = operant_freeze/30;
figure;
bar([1:2],[mean(classical_freeze(:,2)-classical_freeze(:,1)), mean(operant_freeze(:,2)-operant_freeze(:,1))]);
hold on;
errorbar(1,mean(classical_freeze(:,2)-classical_freeze(:,1))...
    ,[(nanstd((classical_freeze(:,2)-classical_freeze(:,1))))/sqrt(size((classical_freeze(:,2)-classical_freeze(:,1)),1))])
hold on;
errorbar(2,mean(operant_freeze(:,2)-operant_freeze(:,1))...
    ,[(nanstd((operant_freeze(:,2)-operant_freeze(:,1))))/sqrt(size((operant_freeze(:,2)-operant_freeze(:,1)),1))])
xticklabels({'classical','operant'});
xtickangle(45);box off;ylabel({'Freeze time'});title(' Freeze');
set(gca,'TickDir','out');


[H, pValue, W] = swtest(classical_freeze(:,2)-classical_freeze(:,1));
[H, pValue, W] = swtest(operant_freeze(:,2)-operant_freeze(:,1));

[p, observeddifference, effectsize] = permutationTest(classical_freeze(:,2)-classical_freeze(:,1), operant_freeze(:,2)-operant_freeze(:,1), 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(classical_freeze(:,2)-classical_freeze(:,1), operant_freeze(:,2)-operant_freeze(:,1),'hedgesg');
%------------------------------------------------------------
%
figure;
ind = 1;
for i=1:60
    subplot(60,1,ind)
    plot(classical_test2Trace(:,i))
    box off;axis off;
    ind = ind+1;
end

figure;
ind = 1;
for i=1:80
    subplot(80,1,ind)
    plot(operant_test2Trace(:,i))
    box off;axis off;
    ind = ind+1;
end
