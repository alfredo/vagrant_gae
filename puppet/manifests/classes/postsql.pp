class postsql ($username, $password) {
  class { 'postgresql':
    version => '9.1',
  }
  class { 'postgresql::server':
    version => '9.1',
    locale => 'en_US.UTF-8',
  }

}
