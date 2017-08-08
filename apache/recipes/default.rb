#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "httpd" do
         action :install
end



service "httpd" do
         action [:enable, :start]
end

execute "rm /etc/httpd/conf.d/welcome.conf" do
        only_if do
                File.exist?("/etc/httpd/conf.d/welcome.conf")
                end
                notifies :restart, "service[httpd]"

end

include-recipe "php::default"
