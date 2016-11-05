#
class mcafee::agent::install inherits mcafee::agent {

  Exec {
    path => '/usr/sbin:/usr/bin:/sbin:/bin',
  }

  if($mcafee::agent::manage_package)
  {
    if($mcafee::agent::package_source==undef)
    {
      fail('undefined package source file (package_source), nothing to install')
    }
    else
    {
      exec { "mkdir p ${mcafee::agent::srcdir}":
        command => "mkdir -p ${mcafee::agent::srcdir}",
        creates => $mcafee::agent::srcdir,
      }

      if $mcafee::agent::package_source =~ /^http/
      {
        exec { 'which wget eyp-mcafee::agent':
          command => 'which wget',
          unless  => 'which wget',
          require => Exec["mkdir p ${mcafee::agent::srcdir}"],
        }

        exec { 'wget mcafee package':
          command => "wget --no-check-certificate ${mcafee::agent::package_source} -O ${mcafee::agent::srcdir}/mcafee-agent.sh",
          creates => "${mcafee::agent::srcdir}/mcafee-agent.sh",
          require => Exec['which wget eyp-mcafee::agent'],
        }
      }
      else
      {
        file { "${srcdir}/mcafee-agent.sh":
          ensure  => 'present',
          owner   => 'root',
          group   => 'root',
          mode    => '0400',
          source  => $mcafee::agent::package_source,
          require => Exec["mkdir p ${mcafee::agent::srcdir}"],
        }
      }

      #
      # Warning: Agent installation needs unzip utility. Please install unzip utility
      #

      exec { 'which unzip eyp-mcafee::agent':
        command => 'which unzip',
        unless  => 'which unzip',
      }

      # /var/tmp/rpm-tmp.aMnsJH: line 223: crontab: command not found
      # /var/tmp/rpm-tmp.aMnsJH: line 223: crontab: command not found

      exec { 'which crontab eyp-mcafee::agent':
        command => 'which crontab',
        unless  => 'which crontab',
      }

      exec { 'mcafee::agent install':
        command => "/bin/bash ${mcafee::agent::srcdir}/mcafee-agent.sh -i",
        cwd     => $mcafee::agent::srcdir,
        creates => '/var/McAfee/agent',
        require => Exec[ [
                          'which wget eyp-mcafee::agent',
                          'which unzip eyp-mcafee::agent',
                          'which crontab eyp-mcafee::agent'
                          ] ],
      }

    }
  }

}
