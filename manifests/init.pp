class mcafee(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits mcafee::params{

  class { '::mcafee::install': } ->
  class { '::mcafee::config': } ~>
  class { '::mcafee::service': } ->
  Class['::mcafee']

}
