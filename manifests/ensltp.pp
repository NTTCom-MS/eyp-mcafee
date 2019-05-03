class mcafee::ensltp (
                      $package_source        = undef,
                      $srcdir                = '/usr/local/src',
                      $manage_package        = true,
                      $package_ensure        = 'installed',
                      $manage_service        = true,
                      $manage_docker_service = true,
                      $service_ensure        = 'running',
                      $service_enable        = true,
                    ) inherits mcafee::params{

  class { 'mcafee::ensltp::install': } ->
  class { 'mcafee::ensltp::config': } ~>
  class { 'mcafee::ensltp::service': } ->
  Class['mcafee::ensltp']

}
