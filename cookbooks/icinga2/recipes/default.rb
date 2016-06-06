#
# Cookbook Name:: icinga2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

log "Well, let begin with icinga2"

execute 'install repo' do
  command 'yum install -y https://packages.icinga.org/epel/6/release/noarch/icinga-rpm-release-6-1.el6.noarch.rpm'
  creates '/etc/yum.repos.d/ICINGA-release.repo'
  action :run
end

package 'icinga2' do
  action :install
end

service 'icinga2' do
  action [ :enable, :start ]
end
