class apache2 {
  package { "apache2":
    ensure => present,
  }

  service { "apache2":
    enable => true,
    ensure => true,
    #hasrestart => true,
    #hasstatus => true,
    #require => Class["config"],
  }

  file { "/etc/apache2/apache2.conf":
    source => "/vagrant/modules/apache2/files/apache2.conf"
  }
}
