package Math::Radicals;

use 5.006;
use strict;
use warnings;

require Exporter;
my @ISA     = qw(Exporter);
my @EXPORT  = qw();
my $VERSION = 0.01;
my $DEBUG   = 0;
sub root {
shift;
my $root_number = shift;
my $to = shift || 2;
return $root_number ** (1 / $to);
}
sub cube_root {
shift;
my $cube_number = shift;
my $to = shift || 3;
return $cube_number ** (1 / $to);
}

sub factors {
shift;
my $fact_number = shift;
my $until = $fact_number;
my $num = 0;
my @array;
while ($until > 0) {
unless ($fact_number % $until) {
     $array[$num] = $until;
     $num++;
     }
$until--;
}
return @array;
}
sub simp {
shift;
my ($here, $something, $other, @new);
my $number = shift;
my $until = $number;
my $num = 0;
while ($until > 0) {
unless ($number % $until) {
     $new[$num] = $until;
     $num++;
     }
$until--;
}



$other = shift || 2;
foreach (@new) {
if ($_** (1 / $other) =~ m"\.") {
$here = $_;
} else {

$here = $_** (1 / $other);
last;
}
}
$something = $number / ($here ** $other);
$other = "" if $other == 2;
return "$here rad$other($something)";
}


1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

Math::Radicals - Perl extension for blah blah blah

=head1 SYNOPSIS

use Math::Radicals;

$radical = Math::Radicals;

$newVar = $radical->cube_root(54);

$newVar2 = $radical->simp(54,3);

print "$newVar is the cube root of 54. $newVar2 is it simplified";

The output is:
3.77976314968462 is the cube root of 54. 3 rad3(2) is it simplified

=head1 DESCRIPTION

Simplifies Radical, finds any roots of any radical, and has a factor feature too
(added so I could simify the radicals, but then I said, "Why not
Add it?")
=head1 FUNCTIONS

As this is version 0.01. not many functions. But I'll humor you.

=head2 simp()

This is the simplification function. It requires the number attribute,
but it will also take the root you want it to simplify to. Example,

$number = $radical->simp(48);

will simpliify 48 it's square root.

$number = $radical->simp(48,3);

will simplify 48 to it's cube root. Pick any number, but really
square is the one most useful, and more of the time cube root + doesn't
even yield true results.

Please keep in mind that when you use simp() function the return looks
like:

numbertimes rad[root number, if square no root number is there](number_with_no_perfect_square_factors)

ie:

5 rad3(3);

is 5 times the cube root of 3. Keep in might the simp function will always return a string.

=head2 root() and cube_root()

One of the more...useless parts of this module. Find the root of the number.
Now, your saying, "Well what about Perl's sqrt built-in function." Yes. I know.
Use that :). But, if you want to find cube roots, use this or exponents. Both work.
Both root and cube_root are same, except cube_root defaults to 3. Two attributes may be defines,
well 1 is manditory. 

$radical->root(32,4);

this will find the 4 root of 32. This returns a scalar number.

=head2 factor()

Has nothing to do with Radicals. Absolutly nothing. Only reason I included it
was because I needed to factor for my Radical simplifcations, so I thought I'd
enlighten you that you can use it for factoring. It returns an array of numbers, always starts
with 1 and ends with the number factoring. So, 32 is...let me do it without the module...um..
1, 2, 4, 8, 16, 32?



=head1 AUTHOR

Will Gunther W/WI/WILL, E<lt>will@mediocore.net<gt>

=head1 SEE ALSO

L<perl>.

=cut