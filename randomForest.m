load fisheriris;
rng(1);
Mdl = TreeBagger(50,meas,species,'OOBPrediction','On',...
    'Method','classification');
view(Mdl.Trees{1},'Mode','graph');
figure;
oobErrorBaggedEnsemble = oobError(Mdl);
plot(oobErrorBaggedEnsemble)
xlabel 'Number of grown trees';
ylabel 'Out-of-bag classification error';