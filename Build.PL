
use Module::Build;


my $build = Module::Build->new
  (
   module_name => 'Statistics::Contingency',
   dist_version_from => 'Contingency.pm',
   pm_files => {
		'Contingency.pm' => 'lib/Statistics/Contingency.pm',
	       },
   license => 'perl',
   requires => {
		Params::Validate => '0.23',
	       },
   build_requires => {
		      'Test' => 0,
		     },
   create_makefile_pl => 'traditional',
   create_readme => 1,
   sign => 1,
  );

$build->create_build_script;
