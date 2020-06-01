#download apache source
class apache::download {
  exec { 'Download httpd from apache foundation':
    cwd     => '/home/vagrant',
    command => 'wget https://downloads.apache.org//httpd/httpd-2.4.43.tar.gz && gzip -d httpd-2.4.43.tar.gz && tar -xvf httpd-2.4.43.tar',
    creates => [ '/home/vagrant/httpd-2.4.43.tar', '/home/vagrant/httpd-2.4.43.tar.gz', '/home/vagrant/httpd-2.4.43' ],
    path    =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    require => Class['buildtools::wget'],
  }

}
