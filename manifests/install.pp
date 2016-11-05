# == Class: mcafee
#
# === mcafee::install documentation
#
class mcafee::install inherits mcafee {

  if($mcafee::manage_package)
  {
    # package here, for example: 
    #package { $mcafee::params::package_name:
    #  ensure => $mcafee::package_ensure,
    #}
  }

}
