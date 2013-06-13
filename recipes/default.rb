include_recipe 'runit::default'
include_recipe 'git::default'
include_recipe 'python::default'

user node[:ceilometer][:user]

deploy_revision node[:ceilometer][:root] do
  repo node[:ceilometer][:repo]
  revision node[:ceilometer][:revision]
  symlink_before_migrate.clear
  keep_releases 0
  before_restart do
    python_virtualenv release_path do
      action :create
    end

    execute "./bin/python setup.py install" do
      cwd release_path
    end
  end
end

runit_service 'ceilometer' do
  action [:enable, :start]
  default_logger true
  env(node[:ceilometer][:env].dup)
end
