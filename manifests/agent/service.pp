class mcafee::agent::service inherits mcafee::agent {

  #
  validate_bool($mcafee::agent::manage_docker_service)
  validate_bool($mcafee::agent::manage_service)
  validate_bool($mcafee::agent::service_enable)

  validate_re($mcafee::agent::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${mcafee::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $mcafee::agent::manage_docker_service)
  {
    if($mcafee::agent::manage_service)
    {
      service { 'ma':
        ensure => $mcafee::agent::service_ensure,
        enable => $mcafee::agent::service_enable,
      }
    }
  }
}
