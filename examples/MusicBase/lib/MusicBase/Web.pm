package MusicBase::Web;

use Moose;
use Catalyst;
extends 'Catalyst';

our $VERSION = '0.01';

__PACKAGE__->config(
  'Plugin::ConfigLoader' => {
    file => __PACKAGE__->path_to('share', 'etc'),
  },
);

__PACKAGE__->setup(qw/ConfigLoader/);
__PACKAGE__->meta->make_immutable;