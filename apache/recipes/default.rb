#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node["platform"] == "ubuntu"
         execute "apt-get update -y" do
         end
end

 
if node["platform"] ==  "centos"
         package_name1  = "httpd"
elsif node["platform"] ==  "ubuntu"
         package_name1  = "apache2"
end


package "apache2" do
          package_name package_name1
end

service "httpd" do
          service_name package_name1
          action [:enable, :start]
end
