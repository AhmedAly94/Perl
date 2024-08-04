#!/usr/bin/env perl 

use strict;
use warnings;
use Data::Dumper;
use lib '.';
use Person;
use Mojo::UserAgent;
use feature qw/ say /;

#1.Data types
my $test = 'random'; #declare variable
my $string = ' hello';
my $decimal = 29;
my $ahmed = " ahmed";
my $age = 30;
my $splitter= "****************************\n";

print $decimal . $ahmed . $string . "\n";
print $test . " Hello world\n";
print $age + $decimal . "\n";

print $splitter;
#2.Debugging with Data::Dumper
print Dumper($age,$test);
print $splitter;

#3.Array
my @array = (1, 2, 3, 4, 5);
print Dumper(\@array);
my @test = qw/one two three four/;
$test[10] = 'ahmed';
print Dumper(@test);
print Dumper($test[2]);
print $splitter;

#4.Hashes are not ordered when printed
my %data = (a => 45, b => 30, c => 40);
my @key = keys %data;

print Dumper(%data);
print Dumper($data{b});
print Dumper(@key);#print the keys
print $splitter;

#5. Hashreference to nest the array structure
my $hash_ref ={
 a => 45, 
 b => 30, 
 c => {
    new => 1,
    new2 => 2,
    array => [1,2,3]
 },
};

print Dumper($hash_ref);
print Dumper($hash_ref->{c}->{new2}); #dereferencing
print $splitter;

#6.SubRoutine 

my @newarray = qw /a b c /;
sub test{
    my $name = shift @_; #parameters
    print "Hello,$name\n";
}
sub array{
    my $arg = shift @_;
    push $arg->@*,'gamed';
}
test('AHMED');
print $splitter;
array(\@newarray);
print Dumper(@newarray);
print $splitter;


#7.Conditional statements
if($decimal>$age){
    print "great";
}
else{
    print "not great";
}
print $splitter;

#8.LOOP
while($test <5){
    print "hello\n";
    $test++;
}
for(my $test=0;$test <5;$test++){
    print "great\n";
}
print $splitter;

#9.OOP
my $Person = Person->new('Ahmed',30,180);
my $Person2 = Person->new('Aly',60,190);
$Person->age(60);
$Person->height(200);

print($Person->age);
print("\n");
print($Person->name);
print("\n");
print($Person->height);
print("\n");
print $splitter;

$Person2->age(80);
$Person2->height(300);
print($Person2->age);
print("\n");
print($Person2->name);
print("\n");
print($Person2->height);
print("\n");
print $splitter;

#10.WebRequests
my $post = "https://jsonplaceholder.typicode.com/posts/1";
my $UA = Mojo::UserAgent->new;
print Dumper($UA->get($post)->result->json);
print $splitter;
my $Result=$UA->get($post)->result;
say $Result->is_success;

say $Result->code;

print $splitter;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
$UA->get($post)->result;
1;