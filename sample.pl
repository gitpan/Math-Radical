#!/usr/bin/perl
use lib 'C:/Windows/Desktop/Billy/Math/Radicals/lib';
use Math::Radicals;
$radical = Math::Radicals;
$newVar = $radical->cube_root(54);
$newVar2 = $radical->simp(54,3);
print "$newVar is the cube root of 54. $newVar2 is it simplified";
#3.77976314968462 is the cube root of 54. 3 rad3(2) is it simplified