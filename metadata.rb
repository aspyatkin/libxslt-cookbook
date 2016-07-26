name 'libxslt'
maintainer 'Alexander Pyatkin'
maintainer_email 'aspyatkin@gmail.com'
license 'MIT'
version '1.0.1'
description 'Installs and configures libxslt along with development packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe 'libxslt', 'Installs and configures libxslt along with development packages'

source_url 'https://github.com/aspyatkin/libxslt-cookbook'

depends 'yum'
depends 'apt'

%w(
  amazon
  redhat
  ubuntu
  centos
).each do |distro|
  supports distro
end
