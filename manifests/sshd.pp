class rsa_securid_auth_agent_for_pam::sshd {
  augeas { 'UsePAM':
    context => '/files/etc/ssh/sshd_config',
    changes => [ 'set UsePAM yes' ],
    notify  => Service['sshd'],
  }
  augeas { 'PasswordAuthentication':
    context => '/files/etc/ssh/sshd_config',
    changes => [ 'set PasswordAuthentication no' ],
    notify  => Service['sshd'],
  }
  augeas { 'UsePrivilegeSeparation':
    context => '/files/etc/ssh/sshd_config',
    changes => [ 'set UsePrivilegeSeparation no' ],
    notify  => Service['sshd'],
  }
  augeas { 'ChallengeResponseAuthentication':
    context => '/files/etc/ssh/sshd_config',
    changes => [ 'set ChallengeResponseAuthentication yes' ],
    notify  => Service['sshd'],
  }
  ensure_resource('service', 'sshd', {'ensure' => 'running' })
}
