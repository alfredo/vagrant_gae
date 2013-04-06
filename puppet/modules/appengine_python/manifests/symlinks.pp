class appengine_python::symlinks {
  file { "/usr/local/bin/api_server.py": 
    ensure=>link,
    target=>"${appengine_python::install_dir_prefix}/current/google_appengine/api_server.py" 
  }
  file { "/usr/local/bin/appcfg.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/appcfg.py"
  }
  file { "/usr/local/bin/bulkload_client.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/bulkload_client.py" 
  }
  file { "/usr/local/bin/bulkloader.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/bulkloader.py"
  }
  file { "/usr/local/bin/dev_appserver.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/dev_appserver.py"
  }
  file { "/usr/local/bin/download_appstats.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/download_appstats.py"
  }
  file { "/usr/local/bin/endpointscfg.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/endpointscfg.py"
  }
  file { "/usr/local/bin/gen_protorpc.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/gen_protorpc.py"
  }
  file { "/usr/local/bin/google_sql.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/google_sql.py"
  }
  file { "/usr/local/bin/remote_api_shell.py": 
   ensure=>link,
   target=>"${appengine_python::install_dir_prefix}/current/google_appengine/remote_api_shell.py"
  }
}
