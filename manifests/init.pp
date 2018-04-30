# Class: puppet_munki
# ===========================
#
# A puppet module that allows multiple munki installations via an array input.
# It is designed to be used with foreman and other modules. It also limits the
# use to Darwin / OSX as munki is specialized to that OS.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'puppet_munki':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class puppet_munki (
    $munki_repo_url = 'http://munki/munki_repo/',
    $munki_clientidentifier = '',
    $munki_additionalheaders = '') {

      # Check for OSX and run only if OSX
      if $facts['os']['family'] == 'Darwin' {
          class { 'mac_admin::munki':
            repourl          => $munki_repo_url,
            suppress_stop    => true,
            bootstrap        => true,
            clientidentifier => $munki_clientidentifier,
        }
      }
    }


#        # checks to see if an internal server source is set.
#        if(!$chocolatey_internal_server.empty)
#        {
#          # Sets if required internal sources only.
#          if($chocolatey_internal_only == true)
#          {
#            $chocolateysource = disabled
#          }
#          else
#          {
#            $chocolateysource = present
#          }
#
#          # Sets internal server settings and makes it the primary source
#          chocolateysource {'internal':
#            ensure   => present,
#            location => $chocolatey_internal_server,
##          }
  #        chocolateysource {'chocolatey':
  #          ensure   => $chocolateysource,
  #          location => 'https://chocolatey.org/api/v2',
  #          priority => 0,
  #        }
  #      }
#
#        # Installs the application(s) listed if missing only
#        if(!$package_install.empty)
##          $package_install.each
  #        |Integer $p_install_index, String $p_install_value| {
  ##            ensure   => installed,
    #          provider => chocolatey,
    #        }
    #      }
    #    }
#
#
#        # Installs the latest known version of application(s) listed
#        if(!$package_latest.empty)
#        {
#          $package_latest.each
#          |Integer $p_latest_index, String $p_latest_value| {
#            package { $p_latest_value:
#              ensure   => latest,
#              provider => chocolatey,
#            }
#          }
#        }

#        # Uninstalls all application(s) listed
#        if(!$package_absent.empty)
#        {
#          $package_absent.each
#          |Integer $p_absent_index, String $p_absent_value| {
#            package { $p_absent_value:
#              ensure   => absent,
#              provider => chocolatey,
#            }
#          }
#        }
#      }
#    }
