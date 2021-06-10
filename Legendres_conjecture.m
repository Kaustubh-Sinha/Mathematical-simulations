%Legendre's conjecture

x = linspace(1,1000,1000);
y = x.^2;
y1 = (x+1).^2;

for i = 1:length(x)
    plot([i,y(i)],[i,y1(i)])
    hold on
end


% plot(x,y)
% hold on
% plot(x,y1)

