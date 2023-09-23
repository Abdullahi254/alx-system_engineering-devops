# kills all processes named killmenow
exec{'killmenow':
 command => 'pkill killmenow',
 path => ['/usr/bin', '/usr/sbin',],
}
