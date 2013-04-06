# Install python and compiled modules for project
class python {
  $packages = [
               "python2.7-dev",
               "python2.7",
               "python-setuptools",
               "python2.7-imaging",
               "python2.7-wsgi-intercept",
               "python2.7-lxml",
               'python2.7-psycopg2',
               'libmemcached-dev',
               'zlib1g-dev',
               'libssl-dev',
               'libevent-dev',
               ]
  package { $packages:
    ensure => installed,
  }

  exec { "pip":
    command => "easy_install pip",
    require => Package[$packages],
  }

  exec { "virtualenvwrapper":
    command => "pip install virtualenv virtualenvwrapper",
    require => Exec["pip"];
  }

}
