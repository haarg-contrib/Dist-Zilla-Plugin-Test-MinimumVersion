use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::MinimumVersionTests;
# ABSTRACT: Release tests for minimum required versions

our $VERSION = '2.000009';

use Moose;
extends 'Dist::Zilla::Plugin::Test::MinimumVersion';

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::MinimumVersion]

=begin :prelude

=for test_synopsis BEGIN { die "SKIP: Synopsis isn't Perl code" }

=end :prelude

=cut

before register_component => sub {
    warn '!!! [MinimumVersionTests] is deprecated and will be removed in a future release; replace it with [Test::MinimumVersion]';
};

__PACKAGE__->meta->make_immutable;
no Moose;
1;
