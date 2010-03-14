#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Bio::Ontology' );
}

diag( "Testing Bio::Ontology $Bio::Ontology::VERSION, Perl $], $^X" );
