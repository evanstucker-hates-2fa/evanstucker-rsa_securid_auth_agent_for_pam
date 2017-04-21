# Class: rsa_securid_auth_agent_for_pam
class rsa_securid_auth_agent_for_pam {
  file { '/var/ace':
    ensure => directory,
    mode   => '0700',
  }
  file { '/var/ace/sdconf.rec':
    mode   => '0600',
    source => "puppet:///modules/${module_name}/sdconf.rec",
  }
  file { '/var/ace/sdopts.rec':
    content => "CLIENT_IP=${::facts[networking][ip]}\n",
    mode    => '0600',
  }
  file { '/opt/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.tar':
    source => "puppet:///modules/${module_name}/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.tar",
  }
  exec { '/usr/bin/tar -x -C /opt -f /opt/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.tar':
    creates => '/opt/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01',
  }
  ensure_packages(['expect'], { ensure => installed })
  file { '/opt/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.expect':
    mode   => '0755',
    source => 'file:///home/etucker/RSA/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.expect',
  }
  exec { '/opt/PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.expect':
    creates => '/opt/pam/bin',
  }
  file { '/etc/sd_pam.conf':
    source => "puppet:///modules/${module_name}/sd_pam.conf",
  }
}
