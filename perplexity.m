clear all;
close all;
clc

Yflagtrain = Xtrain>0;
Yflagtest = Xtest>0;

ave.PhiTheta = 0;
ave.Count = 0;
ave.loglike_test=[];
ave.loglike_train=[];

for iter =30:1000
    iter
    if mod(iter,1)==0
        
        load (['Phi' num2str(iter) '.mat']);
        load (['Theta' num2str(iter) '.mat']);
        
        X1 = Phi{1}*Theta;
        ave.PhiTheta =  ave.PhiTheta+X1;
        ave.Count = ave.Count+1;
        temp = ave.PhiTheta/ave.Count;
        temp= bsxfun(@rdivide, temp,sum(temp,1));
        ave.loglike_test(end+1) = sum(Xtest(Yflagtest).*log(temp(Yflagtest)))/sum(Xtest(:));
        ave.loglike_train(end+1) = sum(Xtrain(Yflagtrain).*log(temp(Yflagtrain)))/sum(Xtrain(:));
        
        %         X1 = bsxfun(@rdivide, X1,sum(X1,1));
        %         %loglike(end+1)=sum(X(Yflag).*log(X1(Yflag)));
        %         %loglike(end)
        %         %loglike(end+1)=exp(-sum(Xtest(Yflagtest).*log(X1(Yflagtest)))/sum(Xtest(:)));
        %         loglike(end+1)=sum(Xtest(Yflagtest).*log(X1(Yflagtest)))/sum(Xtest(:));
        %         loglikeTrain(end+1)=sum(Xtrain(Yflagtrain).*log(X1(Yflagtrain)))/sum(Xtrain(:));
    end
end

figure(1);
plot(exp(-ave.loglike_test),'b--');hold on
plot(exp(-ave.loglike_train),'g--');hold on
legend('Test','Train')
axis on
min(exp(-ave.loglike_test))
grid on

