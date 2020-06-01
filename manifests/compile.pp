# compile apache source to bin
class apache::compile {
  exec { 'Compile the apache package' :
    cwd      => '/home/vagrant/httpd-2.4.41',
    path     => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
    command  => 'sudo ./configure --prefix=/opt/apache --enable-module=so  --enable-ssl=shared --enable-rewrite=shared && sudo make && sudo make install ',
    creates  => '/opt/apache',
  }

}

