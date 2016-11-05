#
class mcafee::agent (
                      $package_source        = undef,
                      $srcdir                = '/usr/local/src',
                      $manage_package        = true,
                      $package_ensure        = 'installed',
                      $manage_service        = true,
                      $manage_docker_service = true,
                      $service_ensure        = 'running',
                      $service_enable        = true,
                    ) inherits mcafee::params{

  class { 'mcafee::agent::install': } ->
  class { 'mcafee::agent::config': } ~>
  class { 'mcafee::agent::service': } ->
  Class['mcafee::agent']

}
