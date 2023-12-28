package Math::Random::LogUniform;

use strict;
use warnings;

use Exporter qw(import);
use POSIX qw(floor);

# AUTHORITY
# DATE
# DIST
# VERSION

our @EXPORT_OK = qw(logrand);

sub logrand {
    my ($min, $max) = @_;

    exp(log($min) + rand()*(log($max) - log($min)));
}

sub logirand {
    my ($min, $max) = @_;

    floor(exp(log($min) + rand()*(log($max) - log($min))));
}

1;
# ABSTRACT: Generate log-uniform random numbers

=head1 SYNOPSIS

 use Math::Random::LogUniform qw(logrand logirand);

 say logrand (1, 10); # generate floating number random numbers [1, 10)
 say logirand(1, 10); # generate integer         random numbers [1, 10) (1 to 9)


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 logrand

=head2 logirand

=cut
