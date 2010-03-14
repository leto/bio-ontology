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
        'Bio::Ontology::DocumentRegistry' => 0,
        'Bio::Ontology::OBOEngine' => 0,
        'Bio::Ontology::Ontology' => 0,
        'Bio::Ontology::OntologyEngineI' => 0,
        'Bio::Ontology::OntologyI' => 0,
        'Bio::Ontology::OntologyStore' => 0,
        'Bio::Ontology::PathI' => 0,
        'Bio::Ontology::Relationship' => 0,
        'Bio::Ontology::RelationshipFactory' => 0,
        'Bio::Ontology::RelationshipI' => 0,
        'Bio::Ontology::RelationshipType' => 0,
        'Bio::Ontology::SimpleGOEngine::GraphAdaptor' => 0,
        'Bio::Ontology::SimpleGOEngine::GraphAdaptor02' => 0,
        'Bio::Ontology::SimpleOntologyEngine' => 0,
        'Bio::Ontology::Term' => 0,
        'Bio::Ontology::TermFactory' => 0,
        'Bio::Ontology::TermI' => 0,
        'Bio::OntologyIO' => 0,
        'Bio::Root::Root' => 0,
        'Bio::Root::RootI' => 0,
        'Graph::Directed' => 0,
    },
    add_to_cleanup      => [ 'Bio::Ontology-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
