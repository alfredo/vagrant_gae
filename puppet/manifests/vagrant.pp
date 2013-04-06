import "classes/*.pp"

Exec {
  path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
  class {
    init: ;
    memcached: ;
    locales: ;
  }
  class { "versioning":
    require => [Class[init], Class[locales]];
  }
  class { "postsql":
    require => Class[versioning],
    username => $username,
    password => $password;
  }
  class { "python":
    require => Class[postsql];
  }
  class { "appengine_python":
    require => Class[python],
    appengine_version => "1.7.6";
  }
  class { "nginx":
    require => Class[python],
    server_name => $server_name,
    project_path => $project_path;
  }
  class { "custom":
    require => Class[nginx],
    project_path => $project_path;
  }
}

include dev
