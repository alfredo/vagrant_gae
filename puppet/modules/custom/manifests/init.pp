# custom helpers for the app
class custom ($project_path) {
  $packages = ['vim', 'curl', 'ack-grep', 'tree', 'wbritish']
  package { $packages:
    ensure => installed
  }
  file { "bashrc":
    path => "/home/vagrant/.bashrc",
    mode => 0644,
    owner => vagrant,
    group => vagrant,
    ensure => file,
    content => template("custom/bashrc.conf"),
  }
}
