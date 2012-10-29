group { "puppet":
  ensure => present,
}

File { owner => 0, group => 0, mode => 0644 }

file { "/etc/motd":
  content => "Welcome to the OnRuby Virtual Box managed by Puppet.\n"
}

package { "vim":
  ensure => present,
}
