class mcafee::service inherits mcafee {
  # $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  # $is_docker_container=str2bool($is_docker_container_var)
  #
  # if( $is_docker_container==false or
  #     $mcafee::manage_docker_service)
  # {
  #   if($mcafee::manage_service)
  #   {
  #     #service or exec here
  #   }
  # }
}
