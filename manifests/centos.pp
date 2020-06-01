# tnings we need on centos
class apache::centos {
  file { '/etc/systemd/system/apache.service':
    ensure => file,
    source => 'puppet:///modules/apache/apache.service',
    mode   => '0750',
    owner  => 'root',
  }

  exec { 'disk daemon refresh':
    command     => 'systemctl daemon-reload',
    path        => '/bin',
    subscribe   => File['/etc/systemd/system/apache.service'],
    refreshonly => true,
  }

  service { 'apache must be running':
    ensure   => 'running',
    name     => 'apache',
  }

}

