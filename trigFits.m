% Copyright (c) 2016 Axel Theorell info@13cflux.net
%
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

function [coeff1, coeff2, coeff3, measPoints, measurements ] = trigFits( measNum, iters,a,b,c,measPoints )
coeff1 =[];
coeff2 =[];
coeff3 =[];
measurements = [];
%measPoints = linspace(0,1.5,measNum);

%make two rows
for i = 1:iters
    
    measurements =[measurements; trig3(a,b,c,measPoints)+ randn(1,measNum)];

    design1 = [sin(pi*measPoints)];
    coeff1 = [coeff1, design1'\measurements(i,:)'];
    design2 = [sin(pi*measPoints); sin(pi*2*measPoints)];
    coeff2 = [coeff2, design2'\measurements(i,:)'];
    design3 = [sin(pi*measPoints); sin(pi*2*measPoints); sin(pi*11*measPoints)];
    coeff3 = [coeff3, design3'\measurements(i,:)'];

end

