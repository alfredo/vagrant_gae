class appengine_python (
  $appengine_version = '1.7.4',
  $sdk_base_url = 'http://googleappengine.googlecode.com/files',
  $sdk_file = "google_appengine_${appengine_version}.zip",
  $install_dir_prefix = '/opt/google/appengine'
  ) {

  include wget

  include appengine_python::symlinks

  $sdk_url = "${sdk_base_url}/${sdk_file}"
  $sdk_zip_path = "/var/tmp/${sdk_file}"
  $install_dir = "${install_dir_prefix}/${appengine_version}"
  $actual_sdk_path = "${install_dir}/google_appengine"

  package {"unzip":
    ensure => present
  }

  file { "/opt/google":
    ensure => directory
  }

  file { "${install_dir_prefix}":
    ensure  => directory,
    require => File['/opt/google']
  }

  file { "${install_dir}":
    ensure  => directory,
    require => File["${install_dir_prefix}"]
  }

  file { "${install_dir_prefix}/current":
    ensure  => link,
    target  => "${install_dir}",
    require => File["${install_dir_prefix}"]
  }

  exec { 'download-sdk':
    command => "/usr/bin/wget --output-document ${sdk_zip_path} ${sdk_url}",
    unless  => "/usr/bin/test -f ${sdk_zip_path}"
  }

  exec { 'extract-sdk':
    command     => "/usr/bin/unzip ${sdk_zip_path} -d $install_dir",
    subscribe   => Exec['download-sdk'],
    refreshonly => true,
    require     => [ File[$install_dir], Package["unzip"] ]
  }

} # End appengine_python class definition
