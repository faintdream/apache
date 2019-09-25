class apache::service {

  notice("Setting up apache service ")
  case $facts['os']['family'] {
  'Redhat','Centos' : { include apache::centos }
  'Debian','Ubuntu' : { include apache::ubuntu }
  default           : { notify{'Service Error : Unknown OS': } }

  }
  
}
