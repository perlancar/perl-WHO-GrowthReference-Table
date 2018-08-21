package WHO::GrowthReference::Table;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::BinarySearch::XS qw(binsearch);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       get_who_growth_reference
               );

# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_height_boy_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_0_5y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_0_5y varname=data_height_boy_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_0_5y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_height_girl_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_0_5y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_0_5y varname=data_height_girl_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_0_5y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_weight_boy_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_0_5y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_0_5y varname=data_weight_boy_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_0_5y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_weight_girl_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_0_5y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_0_5y varname=data_weight_girl_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_0_5y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_5_19y varname=meta_height_boy_5_19y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_5_19y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_5_19y varname=data_height_boy_5_19y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_5_19y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_5_19y varname=meta_height_girl_5_19y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_5_19y

# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_5_19y varname=data_height_girl_5_19y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_5_19y


# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_boy_5_19y varname=meta_weight_boy_5_19y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_boy_5_19y

# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_boy_5_19y varname=data_weight_boy_5_19y
# END FRAGMENT   id=data-growth_ref_who_weight_age_boy_5_19y


# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_girl_5_19y varname=meta_weight_girl_5_19y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_girl_5_19y

# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_girl_5_19y varname=data_weight_girl_5_19y
# END FRAGMENT   id=data-growth_ref_who_weight_age_girl_5_19y


sub chinese_zodiac {
    my $date = shift;

    my $idx = binsearch {
        $a lt $b->[0] ? -1 :
            $a gt $b->[1] ? 1 : 0
        } $date, @$data;
    return undef unless defined $idx;

    $data->[$idx];
}

1;
# ABSTRACT: Look up Chinese zodiac for a given Gregorian date

=head1 SYNOPSIS

 use Chinese::Zodiac::Table qw(chinese_zodiac);
 my $res = chinese_zodiac("1980-02-17");

Sample result:

 [
   "1980-02-16",
   "1981-02-04",
   "yang",
   "metal",
   "庚",
   "申",
   "猴",
   "monkey",
 ]


=head1 DESCRIPTION

This module can look up Chinese zodiac for a given Gregorian date. Compared to
L<Zodiac::Chinese>, it uses a lookup table (currently available for years
1924-2043) so it is more accurate.

Data source is currently at: https://github.com/perlancar/gudangdata
(table/chinese_zodiac), which in turn is parsed from Wikipedia article.


=head1 FUNCTIONS

=head2 chinese_zodiac($date) => arrayref

Return Chinese zodiac information for a Gregorian date C<$date>. Currently date
must be a string in the format of C<YYYY-MM-DD>. Will return an arrayref
containing these elements:

 # index: 0         1           2           3              4               5               6            7
 ["start_date", "end_date", "yin_yang", "element", "heavenly_stem", "earthly_branch", "zh_animal", "en_animal"].

Will return undef if date range is unsupported.


=head1 SEE ALSO

L<Zodiac::Chinese>

=cut
