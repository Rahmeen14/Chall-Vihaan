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
## @deftypefn {} {@var{retval} =} predictNature (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shreya <Shreya@SARTHAK-LAPTOP>
## Created: 2017-10-28

% X is a new single data input (horizontal) from node.js that i am gng to calculate 
% the probability for


function prediction = predictNature (X, mu, sigma)
  
  prediction = ones(4,1);
  
  for i =1:4
    prediction(i,1) = prediction(i,1) * probability(X(1,i),mu(i,1), sigma(i,1));
  endfor
  
  for i = 1:4
  if(i!=3)
    if (prediction(i,1)<0.0000001)
      prediction(i,1) =1;
    else prediction(i,1) = 0;
    endif
  else
    if (prediction(i,1)<0.02)
      prediction(i,1) =1;
    else prediction(i,1) = 0;
    endif
   endif
  endfor
endfunction
