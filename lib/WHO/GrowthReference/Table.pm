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
our %SPEC:

# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_height_boy_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_0_5y varname=meta_height_boy_0_5y
# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_0_5y varname=data_height_boy_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_0_5y varname=data_height_boy_0_5y

# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_boy_0_5y varname=meta_weight_boy_0_5y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_boy_0_5y varname=meta_weight_boy_0_5y
# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_boy_0_5y varname=data_weight_boy_0_5y
# END FRAGMENT   id=data-growth_ref_who_weight_age_boy_0_5y varname=data_weight_boy_0_5y

# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_boy_5_19y varname=meta_height_boy_5_19y
# END FRAGMENT   id=meta-growth_ref_who_height_age_boy_5_19y varname=meta_height_boy_5_19y
# BEGIN FRAGMENT id=data-growth_ref_who_height_age_boy_5_19y varname=data_height_boy_5_19y
# END FRAGMENT   id=data-growth_ref_who_height_age_boy_5_19y varname=data_height_boy_5_19y

# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_boy_5_19y varname=meta_weight_boy_5_19y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_boy_5_19y varname=meta_weight_boy_5_19y
# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_boy_5_19y varname=data_weight_boy_5_19y
# END FRAGMENT   id=data-growth_ref_who_weight_age_boy_5_19y varname=data_weight_boy_5_19y


# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_girl_0_5y varname=meta_height_girl_0_5y
# END FRAGMENT   id=meta-growth_ref_who_height_age_girl_0_5y varname=meta_height_girl_0_5y
# BEGIN FRAGMENT id=data-growth_ref_who_height_age_girl_0_5y varname=data_height_girl_0_5y
# END FRAGMENT   id=data-growth_ref_who_height_age_girl_0_5y varname=data_height_girl_0_5y

# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_girl_0_5y varname=meta_weight_girl_0_5y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_girl_0_5y varname=meta_weight_girl_0_5y
# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_girl_0_5y varname=data_weight_girl_0_5y
# END FRAGMENT   id=data-growth_ref_who_weight_age_girl_0_5y varname=data_weight_girl_0_5y

# BEGIN FRAGMENT id=meta-growth_ref_who_height_age_girl_5_19y varname=meta_height_girl_5_19y
# END FRAGMENT   id=meta-growth_ref_who_height_age_girl_5_19y varname=meta_height_girl_5_19y
# BEGIN FRAGMENT id=data-growth_ref_who_height_age_girl_5_19y varname=data_height_girl_5_19y
# END FRAGMENT   id=data-growth_ref_who_height_age_girl_5_19y varname=data_height_girl_5_19y

# BEGIN FRAGMENT id=meta-growth_ref_who_weight_age_girl_5_19y varname=meta_weight_girl_5_19y
# END FRAGMENT   id=meta-growth_ref_who_weight_age_girl_5_19y varname=meta_weight_girl_5_19y
# BEGIN FRAGMENT id=data-growth_ref_who_weight_age_girl_5_19y varname=data_weight_girl_5_19y
# END FRAGMENT   id=data-growth_ref_who_weight_age_girl_5_19y varname=data_weight_girl_5_19y


$SPEC{get_who_growth_reference} = {
    v => 1.1,
    summary => 'Lookup height/weight in the WHO growth chart (a.k.a. growth reference, growth standards)',
    args => {
    },
};
sub get_who_growth_reference {
    my %args = @_;
}

1;
# ABSTRACT:

=head1 SEE ALSO

L<http://www.who.int/childgrowth/standards/en/>

=cut
