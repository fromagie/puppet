# First create the user, use the 'user' type.
# See http://reductivelabs.com/trac/puppet/wiki/TypeReference#id229

package { "git":
    ensure => "latest"
}

package { "vim":
    ensure => "latest"
}

package { "htop":
    ensure => "latest"
}

file { '/home/pi/.bashrc':
    owner => 'pi',
    group => 'pi',
    mode => 0644,
    source => "puppet:///modules/environment/.bashrc",
}

file { '/home/pi/.vimrc':
    owner => 'pi',
    group => 'pi',
    mode => 0644,
    source => "puppet:///modules/environment/.vimrc",
}

file { '/home/pi/.gitconfig':
    owner => 'pi',
    group => 'pi',
    mode => 0644,
    source => "puppet:///modules/environment/.gitconfig",
}

