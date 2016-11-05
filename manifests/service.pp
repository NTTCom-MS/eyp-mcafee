class mcafee::service inherits mcafee {

  #
  validate_bool($mcafee::manage_docker_service)
  validate_bool($mcafee::manage_service)
  validate_bool($mcafee::service_enable)

  validate_re($mcafee::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${mcafee::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $mcafee::manage_docker_service)
  {
    if($mcafee::manage_service)
    {
      #service or exec here
    }
  }
}
