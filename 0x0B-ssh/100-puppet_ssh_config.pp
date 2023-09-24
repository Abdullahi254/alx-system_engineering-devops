# configure ssh
exec { 'ssh_config_pwd_auth':
  command => 'sudo sed -i "s/#*\( *PasswordAuthentication*\).*/ \1 no/" /etc/ssh/ssh_config',
  path    => ['/usr/bin', '/usr/sbin'],
}

exec { 'ssh_config':
  command => 'echo "    IdentityFile ~/.ssh/school" | sudo tee -a /etc/ssh/ssh_config',
  path    => ['/usr/bin', '/usr/sbin'],
}

exec { 'ssh_restart':
  command => 'sudo service ssh restart',
  path    => ['/usr/bin', '/usr/sbin'],
}
