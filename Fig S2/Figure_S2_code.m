%%
clc;clear;close all;
load('Figure_S2_data.mat')
%% Panel A, B
figure;
bar([1:2],[mean(Oct_speed_operant), mean(Oct_speed_classical)]);
hold on;
UnivarScatter([padcat((Oct_speed_operant), (Oct_speed_classical))],'Width',0.2,'Compression',5,'Label',{'classical','operant',},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'speed (mm/sec)'});title(' speed');
set(gca,'TickDir','out');

[H, pValue, W] = swtest(Oct_speed_operant);
[H, pValue, W] = swtest(Oct_speed_classical);

[p, observeddifference, effectsize] = permutationTest(Oct_speed_operant, Oct_speed_classical, 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(Oct_speed_operant,Oct_speed_classical,'hedgesg');
% -------------------------------------


figure;
bar([1:2],[mean(Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1)), mean(Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1))]);
hold on;
errorbar(1,mean(Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1))...
    ,[(nanstd((Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1))))/sqrt(size((Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1)),1))])
hold on;
errorbar(2,mean(Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1))...
    ,[(nanstd((Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1))))/sqrt(size((Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1)),1))])
xticklabels({'classical','operant'});
xtickangle(45);box off;ylabel({'Freeze time'});title(' Freeze');
set(gca,'TickDir','out');


[H, pValue, W] = swtest(Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1));
[H, pValue, W] = swtest(Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1));

[p, observeddifference, effectsize] = permutationTest(Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1), Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1), 10000, 'plotresult', 1, 'showprogress', 250);
stats=mes(Oct_freeze_operant(:,2)-Oct_freeze_operant(:,1), Oct_freeze_classical(:,2)-Oct_freeze_classical(:,1),'hedgesg');

%% Panel C, D

figure;
bar([1:4],[mean(no_odor_speed), mean(no_shock_speed),mean(operant_speed),mean(classical_speed)]);
hold on;
UnivarScatter([padcat((no_odor_speed), (no_shock_speed),(operant_speed),(classical_speed))],'Width',0.2,'Compression',5,'Label',{'no_odor_speed','no_shock_speed','operant_speed','classical_speed'},'Whiskers','none'...
    ,'MarkerEdgeColor',[0.2 0.2 0.2],'MarkerFaceColor',[0.6 0.6 0.6],'PointSize',2);
xtickangle(45);box off;ylabel({'speed (mm/sec)'});title(' speed');
set(gca,'TickDir','out');


[H, pValue, W] = swtest(no_odor_speed);
[H, pValue, W] = swtest(no_shock_speed);
[H, pValue, W] = swtest(operant_speed);
[H, pValue, W] = swtest(classical_speed);

y=[padcat((no_odor_speed), (no_shock_speed),(operant_speed),(classical_speed))]

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)',y(:,4)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3';ones(size(y(:,4)))*4';]',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')

%--------------------------------------------------------------------------

classical_freeze = classical_freeze/30;
operant_freeze = operant_freeze/30;
no_odor_freeze = no_odor_freeze/30;
no_shock_freeze = no_shock_freeze/30;

figure;
bar([1:4],[mean(classical_freeze(:,2)-classical_freeze(:,1)), mean(operant_freeze(:,2)-operant_freeze(:,1)),...
    mean(no_odor_freeze(:,2)-no_odor_freeze(:,1)),mean(no_shock_freeze(:,2)-no_shock_freeze(:,1))]);
hold on;
errorbar(1,mean(classical_freeze(:,2)-classical_freeze(:,1))...
    ,[(nanstd((classical_freeze(:,2)-classical_freeze(:,1))))/sqrt(size((classical_freeze(:,2)-classical_freeze(:,1)),1))])
hold on;
errorbar(2,mean(operant_freeze(:,2)-operant_freeze(:,1))...
    ,[(nanstd((operant_freeze(:,2)-operant_freeze(:,1))))/sqrt(size((operant_freeze(:,2)-operant_freeze(:,1)),1))])
hold on;
errorbar(3,mean(no_odor_freeze(:,2)-no_odor_freeze(:,1))...
    ,[(nanstd((no_odor_freeze(:,2)-no_odor_freeze(:,1))))/sqrt(size((no_odor_freeze(:,2)-no_odor_freeze(:,1)),1))])
hold on;
errorbar(4,mean(no_shock_freeze(:,2)-no_shock_freeze(:,1))...
    ,[(nanstd((no_shock_freeze(:,2)-no_shock_freeze(:,1))))/sqrt(size((no_shock_freeze(:,2)-no_shock_freeze(:,1)),1))])

    
    
    xticklabels({'classical','operant','no odors','no shocks'});
xtickangle(45);box off;ylabel({'Freeze time'});title(' Freeze');
set(gca,'TickDir','out');


[H, pValue, W] = swtest(classical_freeze(:,2)-classical_freeze(:,1));
[H, pValue, W] = swtest(operant_freeze(:,2)-operant_freeze(:,1));
[H, pValue, W] = swtest(no_odor_freeze(:,2)-no_odor_freeze(:,1));
[H, pValue, W] = swtest(no_shock_freeze(:,2)-no_shock_freeze(:,1));


y=[padcat((classical_freeze(:,2)-classical_freeze(:,1)), (operant_freeze(:,2)-operant_freeze(:,1)),(no_odor_freeze(:,2)-no_odor_freeze(:,1)),(no_shock_freeze(:,2)-no_shock_freeze(:,1)))]

[pval,Factual,Fdist] = randanova1([y(:,1)',y(:,2)',y(:,3)',y(:,4)']...
    ,[ones(size(y(:,1)))*1';ones(size(y(:,2)))*2';ones(size(y(:,3)))*3';ones(size(y(:,4)))*4']',1000)

[p,tbl,stats] =anova1(y)
multcompare(stats)
mes1way(y,'eta2')



