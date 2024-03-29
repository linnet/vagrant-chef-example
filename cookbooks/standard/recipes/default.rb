# apt_package "screen" do
# 	action :install
# end

# cookbook_file "/etc/rsyncd.conf" do
# 	action :create_if_missing
# 	mode 0644
# end

# cookbook_file "/etc/rsyncd.secrets" do
# 	action :create_if_missing
# 	mode 0600
# end

# cookbook_file "/etc/default/rsync" do
# 	action :create
# 	mode 0644
# end

# service "rsync" do
# 	supports :status => true, :start => true, :stop => true, :restart => true
# 	action [:enable, :start]
# end




include_recipe "rsync::server"

#simple server this directory up read only
rsync_serve "tmp" do 
  path "/tmp"
  read_only true
  uid "nobody"
  gid "nobody"
end


