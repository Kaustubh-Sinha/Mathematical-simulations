%--------------------------------------------------------------------------
%This program prints the prime lines within Legendre's conjecture on which 
%primes can exist. It can be observed to see the trend that some lines
%extend to limited infinities which makes it possibly inclusive of primes
%hence giving an inconclusive result to the conjecture.

%Initialize the values of x:
x = linspace(1,1000,1000);

%Calculate y and y^2
y = x.^2;
y1 = (x+1).^2;

%Plots line between the y and y1 points, which would have  primes on them
for i = 1:length(x)
    plot([i,y(i)],[i,y1(i)])
    hold on
end

%----------------------------------Le FIN----------------------------------
%The author of the program makes this program available open-source under 
%Creative Commons License.

