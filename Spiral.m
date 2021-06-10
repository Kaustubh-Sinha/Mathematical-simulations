%--------------------------------------------------------------------------
%----------This program will create an Ulam spiral for primes < N ---------
%--------------------------------------------------------------------------
clc
clear

%Enter the value of N upto which the primes would be calculated:
N = 100000; 
%Computations over 10e5 will take a long time (slow isprime function)
%NOTE: new prime functions will be updated for faster processing!

%Initializing coordinates
x = 0;
y = 0;

sd = 1;% defines which side of the square is being traced (odd = bottom, right; even = top, left)
var = 1;% defines which variable is increasing (1 = x, 0 = y)
steps = 0;%counts steps taken in one direction

for i = 2: 1000000
    
    %When to turn at the corners
    if sd == steps
        var = ~var;
        steps = 0;
        if x == y
            sd = sd+1;
        end
    end
    
    %Increments
    if mod(sd,2) ~= 0    
        if var == 1
            x = x + 1;
        elseif var == 0
            y = y + 1;
        end
    elseif mod(sd,2) == 0
        if var == 1
            x = x - 1;
        elseif var == 0
            y = y - 1;
        end
    end
    steps = steps + 1;
    
    %Make/ print a dot for prime
    if isprime(i) == 1   
        plot(x,y,'k.')
        hold on
    end
    grid on
end

%-------------------------------Le FIN-------------------------------------
%This was programmed by Kaustubh Sinha and is available under the Creative Commons License. 
%Please refer to the Author if used in print/ digital publication.
