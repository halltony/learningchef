#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 Tony Hall, All Rights Reserved.

package "httpd"

service "httpd" do
  action [ :enable, :start ]
end

template "/var/www/html/index.html" do
  source 'index.html.erb'
  mode '0644'
end