% Copyright (c) 2016 Axel Theorell info@13cflux.net
%
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

close all;
clear all;
a=10;
b=20;
c=2;
measNum1 = 12;
measNum2 = 24;
rows = 2;

%load niceTrigCoeff
iters = 1;
measPoints = linspace(0,0.999,measNum1);
[coeff1, coeff2, coeff3, measPoints, measurements ] = trigFits( measNum1,iters,a,b,c,measPoints );
x = linspace(0,1,100);
pol = trig3(a,b,c,x);
noisePlot( rows, 1,x, pol,coeff1,coeff2,coeff3,measurements,measPoints,'\textbf{A}' )
iters = 1;

measPoints = linspace(0,1,measNum2);
[coeff1, coeff2, coeff3, measPoints, measurements ] = trigFits( measNum2,iters,a,b,c, measPoints );
noisePlot( rows, 2,x, pol,coeff1,coeff2,coeff3,measurements,measPoints, '\textbf{B}' )
