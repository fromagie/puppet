package { "git":
    ensure => "latest"
}

package { "vim":
    ensure => "latest"
}

package { "htop":
    ensure => "latest"
}

package { "rtorrent":
    ensure => "latest"
}

package { "screen":
    ensure => "latest"
}

package { "davfs2":
    ensure => "latest"
}

file { "/home/pi/.ssh":
  ensure => 'directory',
  owner  => 'pi',
  group  => 'pi',
} 

# rtorrent session
file { "/home/pi/.session":
  ensure => 'directory',
  owner  => 'pi',
  group  => 'pi',
} 

file { "/media/bt":
  ensure => 'directory',
  owner  => 'pi',
  group  => 'pi',
}

file { "/media/downloads":
  ensure => 'directory',
  owner  => 'pi',
  group  => 'pi',
}

# See http://reductivelabs.com/trac/puppet/wiki/TypeReference#ssh-authorized-key
ssh_authorized_key { "alex-rsa-key":
   ensure => 'present',
   key => 'AAAAB3NzaC1yc2EAAAABIwAAAIEA4Qxi6tH2b0rmvdKcRSUu+wyMtCJelxmVJ6/EMZAlwgeBVPdMJTlTQSPlt7I6XQ2IrKtOjBSOiYLjlbT0HkMvo1oqEaW5WDLZVCbqVAtxMPs3ebKUHFiNJ5RY8UZby74k0rCbMEZaMAe/eBAN07j9zNwITaOdNXyG30yZmMzsxOE=',
   type => 'rsa',
   user => 'pi',
   require => File["/home/pi/.ssh"],
}

file { '/home/pi/.rtorrent.rc':
    owner => 'pi',
    group => 'pi',
    mode => 0644,
    source => "puppet:///modules/rtorrent/rtorrent.rc",
}
