class mcafee::ensltp::service inherits mcafee::ensltp {

  #
  validate_bool($mcafee::ensltp::manage_docker_service)
  validate_bool($mcafee::ensltp::manage_service)
  validate_bool($mcafee::ensltp::service_enable)

  validate_re($mcafee::ensltp::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${mcafee::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $mcafee::ensltp::manage_docker_service)
  {
    if($mcafee::ensltp::manage_service)
    {
      service { 'ma':
        ensure => $mcafee::ensltp::service_ensure,
        enable => $mcafee::ensltp::service_enable,
      }
    }
  }
}
