class mcafee::agent::service inherits mcafee::agent {

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $mcafee::agent::manage_docker_service)
  {
    if($mcafee::agent::manage_service)
    {
      if($mcafee::params::systemdwrapper)
      {
        include systemd

        systemd::sysvwrapper { 'ma':
          initscript => '/etc/init.d/ma',
          notify     => Service['ma'],
          before     => Service['ma'],
        }
      }

      service { 'ma':
        ensure => $mcafee::agent::service_ensure,
        enable => $mcafee::agent::service_enable,
      }
    }
  }
}
