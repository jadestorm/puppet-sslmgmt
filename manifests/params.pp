# == Class: sslmgmt::params
#
# Defaults and defines for use with sslmgmt
#
# === Authors
#
# Andrew Grimberg <agrimberg@linuxfoundation.org>
#
# === Copyright
#
# Copyright 2015 Andrew Grimberg
#
# === License
#
# @License Apache-2.0 <http://spdx.org/licenses/Apache-2.0>
#
class sslmgmt::params {
    case $::osfamily {
        'RedHat': {
            $pkistore = {
               'default'      => {
                   'certpath' => '/etc/pki/tls/certs',
                   'keypath'  => '/etc/pki/tls/private',
                   'certmode' => '0644',
                   'owner'    => 'root',
                   'group'    => 'root',
                },
            }
        }
        'Debian': {
            $pkistore = {
                'default'      => {
                    'certpath' => '/etc/ssl/certs',
                    'keypath'  => '/etc/ssl/private',
                    'certmode' => '0644',
                    'owner'    => 'root',
                    'group'    => 'root',
                 },
            }
        }
        default: {
            $pkistore = {
                 'default'      => {
                     'certpath' => '/etc/ssl/certs',
                     'keypath'  => '/etc/ssl/private',
                     'certmode' => '0644',
                     'owner'    => 'root',
                     'group'    => 'root',
                 },
            }
        }
    }
}
