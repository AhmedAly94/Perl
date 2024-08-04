package Person;

use strict;
use warnings;

sub new{
    my ($class,$name,$age,$height) = @_;

    my $self = {
        name => $name,
        age => $age,
        height => $height,
    };

    bless $self, $class;

    return $self;
}

# Getter and Setter for name
sub name {
    my ($self, $name) = @_;
    if (defined $name) {
        $self->{name} = $name;
    }
    return $self->{name};
}

# Getter and Setter for age
sub age {
    my ($self, $age) = @_;
    if (defined $age) {
        $self->{age} = $age;
    }
    return $self->{age};
}

# Getter and Setter for age
sub height {
    my ($self, $height) = @_;
    if (defined $height) {
        $self->{height} = $height;
    }
    return $self->{height};
}

1;


