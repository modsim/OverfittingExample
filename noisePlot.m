% Copyright (c) 2016 Axel Theorell info@13cflux.net
%
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


function [] = noisePlot( rows, row,x, pol,coeff1,coeff2,coeff3,measurements,measPoints,letter )

    helpX1 = sin(pi*x);
helpX2 = [sin(pi*x);sin(pi*2*x)];
helpX3 = [sin(pi*x);sin(pi*2*x);sin(pi*11*x)];
posX = 0.5;
posY = 45;
    subplot(rows,3,1+(row-1)*3)
    plot(x, pol);
    %message = {strcat(letter,'1'),'$a \cdot sin(\pi x)$'};
    %message = strcat(letter,'\textbf{1: }$\mathbf{a \cdot sin(\pi x)}$');
    message = strcat(letter,'1');
    t = text(posX,posY,message, 'Interpreter', 'Latex');
    t.FontSize = 15;
    hold on;
    
    plot(x,helpX1'*coeff1,'--');
    plot(measPoints, measurements,'.k');
    axis([0 1 -20 40])

    
    %xlabel(strcat('a=',num2str(coeff1(i),'%5.2f')));
        subplot(rows,3,2+(row-1)*3)
    plot(x, pol);
    %message = {strcat(letter,'2'),'$a \cdot sin(\pi x)+b \cdot sin(2 \pi x)$'};
    %message = strcat(letter,'\textbf{2: }$\mathbf{a \cdot sin(\pi x)+b \cdot sin(2 \pi x)}$');
    message = strcat(letter,'2');
    t = text(posX,posY,message, 'Interpreter', 'Latex');
    t.FontSize = 15;
    hold on;
    
    plot(x,helpX2'*coeff2,'--');
    plot(measPoints, measurements,'.k');
    axis([0 1 -20 40])
    
        subplot(rows,3,3+(row-1)*3)
    plot(x, pol);
    %message = {strcat(letter,'3'),'$a \cdot sin(\pi x)$'};
    %message = strcat(letter,'\textbf{3: }$\mathbf{a \cdot sin(\pi x)+b \cdot sin(2 \pi x)+c \cdot sin(11 \pi x)}$');
    message = strcat(letter,'3');
    t = text(posX,posY,message, 'Interpreter', 'Latex');
    t.FontSize = 15;
    hold on;
    
    plot(x,helpX3'*coeff3,'--');
    plot(measPoints, measurements,'.k');
    axis([0 1 -20 40])

end

