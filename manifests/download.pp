class apache::download {
  exec { 'Download httpd from apache foundation':
    cwd      => '/home/vagrant',
    command  => 'wget http://mirrors.estointernet.in/apache//httpd/httpd-2.4.41.tar.gz && gzip -d httpd-2.4.41.tar.gz && tar -xvf httpd-2.4.41.tar',
    creates  => [ '/home/vagrant/httpd-2.4.41.tar', '/home/vagrant/httpd-2.4.41.tar.gz', '/home/vagrant/httpd-2.4.41' ],
    path     =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    require  => Class['buildtools::wget'],
  }

}
