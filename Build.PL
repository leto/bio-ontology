use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Bio::Ontology',
    license             => 'perl',
    dist_author         => 'Jonathan Leto <jonathan@leto.net>',
    dist_version_from   => 'lib/Bio/Ontology.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Bio::AnnotatableI' => 0,
        'Bio::Annotation::DBLink' => 0,
        'Bio::Annotation::Reference' => 0,
        'Bio::DescribableI' => 0,
        'Bio::Factory::ObjectFactory' => 0,
        'Bio::IdentifiableI' => 0,
        'Bio::Root::Root' => 0,
        'Bio::Root::RootI' => 0,
        'Graph::Directed' => 0,
    },
    add_to_cleanup      => [ 'Bio::Ontology-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
