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
## @deftypefn {} {@var{retval} =} MeanVariance (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Shreya <Shreya@SARTHAK-LAPTOP>
## Created: 2017-10-28

%  X is a 15x4 matrix_type
%  It stores amount, location pincode, time and merchant pincode


function [mu, sigma] = MeanVariance (X)

mu = zeros(4,1);
sigma = zeros (4,1);

for i = 1:4
  for j = 1:15
    mu(i,1) = mu(i,1) + X(j,i);
  endfor
  mu(i,1)= mu(i,1)/15;
  %disp("Mean");
  %disp(mu(i,1));

endfor

for i = 1:4
  for j = 1:15
    sigma(i,1) = sigma(i,1) + (X(j,i) - mu(i,1))^2;
  endfor
  sigma(i,1)= sigma(i,1)/15;
  %disp("i");
  %disp(i);
  %disp(sigma);
endfor

endfunction
