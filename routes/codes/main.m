  ## Copyright (C) 2017 Shreya
##
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} main (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shreya <Shreya@SARTHAK-LAPTOP>
## Created: 2017-10-28

function n = main(fileName,amount, locPin, time, merchPin)
%function n = main(g)
  %disp(amount)
  %disp(locPin)
  %disp(time)
  %disp(merchPin)
  amount=double(amount);
  locPin=double(locPin);
  time=double(time);
  merchPin=double(merchPin);
  X = csvread(fileName);
  %X = csvread('sarthak.txt');
  Y = zeros(15,4);

  for i=1:15
    for j =1:4
      Y(i,j) = X(i,j+2);
    endfor
  endfor
  [mu, sigma] = MeanVariance(Y);

  Z = [amount, locPin, time, merchPin];
  %Z=[60000,110017,12,110017];
  ans = predictNature(Z, mu, sigma);

  flag = 1;
  for i=1:4
    if (ans(i,1)==1)
    flag =0;
    endif
  endfor

    if (flag==1)
    fprintf("You can Proceed with your transaction.");
  else
    fprintf("Based on your history,this transaction doesn't confirm to your history,Please confirm your identity.");
  endif

  n=1;

endfunction
