t=[];
n=0;
t0=randi([1,5],1,1);
t=[t t0];
while n<=998
    if t(1,length(t))==1
        t=[t 2];
    elseif t(1,length(t))==5
        t=[t 4];
    else
        x=randi([-1,1],1,1);
        t=[t x+t(1,length(t))];
    end
    n=n+1;
    disp(n);
end
plot(1:1:1000,t);