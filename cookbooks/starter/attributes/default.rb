# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default["starter_name"] = "Sam Doe"

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).

default["apache"]["sites"]["ashwini5"] = {"port" => 80, "domain" => "ashwinigattu5.mylabserver.com"}
default["apache"]["sites"]["ashwini5b"] = {"port" => 80, "domain" => "ashwinigattu5b.mylabserver.com"}

default["author"]["name"] = "ashwini"
case node["platform"]
when "centos"
         default["apache"]["package"] = "httpd"
when "ubuntu"
         default["apache"]["package"] = "apache2"
end
