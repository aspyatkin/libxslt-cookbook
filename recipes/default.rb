include_recipe node['libxslt']['package_manager']


node['libxslt']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

if node['libxslt']['install_devel'] == true
  node['libxslt']['devel_packages'].each do |pkg|
    package pkg do
      action :install
    end
  end
end
