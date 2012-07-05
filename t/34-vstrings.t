use strict;
use warnings;

BEGIN {
    $ENV{ANSI_COLORS_DISABLED} = 1;
    delete $ENV{DATAPRINTERRC};
    use File::HomeDir::Test;  # avoid user's .dataprinter

    use Test::More;
    use Data::Printer;

}

my $scalar = v1.2.3;
eval {
    like( p($scalar), qr/^VSTRING/, "VSTRINGs" );
};
if ($@) {
    fail( "VSTRINGs" );
    diag( $@ );
}

done_testing();
