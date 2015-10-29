case node['platform_family']
when 'rhel'
  default['libxslt']['packages'] = %w{ libxslt }
  default['libxslt']['devel_packages'] = %w{ libxslt-devel }
  default['libxslt']['package_manager'] = 'yum'
when 'debian'
  default['libxslt']['packages'] = %w{ libxslt1.1 }
  default['libxslt']['devel_packages'] = %w{ libxslt1-dev }
  default['libxslt']['package_manager'] = 'apt'
else
  default['libxslt']['packages'] = %w{ libxslt }
  default['libxslt']['devel_packages'] = %w{ libxslt-devel }
  default['libxslt']['package_manager'] = 'yum'
end

default['libxslt']['install_devel'] = true
