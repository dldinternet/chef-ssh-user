name             "ssh_user"
maintainer       "franklin"
maintainer_email 'franklin@weareinteractive.com'
license          'MIT'
description      'Manage basic global or user\'s ssh configurations.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#noinspection RubyArgCount
version          '0.1.6'
#noinspection RubyArgCount
recipe           "ssh_user", "Empty recipe for including LWRPs"
#noinspection RubyArgCount
recipe           "ssh_user::data_bag", "Read data bag to include ssh configs"

# dependencies
%w{user ssh-util}.each do |d|
  depends d
end

# support (ubuntu debian redhat centos fedora freebsd)
%w{ubuntu}.each do |os|
  supports os
end
