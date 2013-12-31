#
# Cookbook Name:: kafka-logrotate
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "logrotate::default"

logrotate_app 'kafka' do
  cookbook  'logrotate'
  path      ['/var/log/kafka/server.out', '/var/log/kafka/server.err']
  frequency 'daily'
  rotate    7
  options   ['missingok', 'notifempty', 'compress', 'delaycompress']
end

logrotate_app 'kafka-zoo' do
  cookbook  'logrotate'
  path      ['/var/log/kafka/zookeeper.out', '/var/log/kafka/zookeeper.err']
  frequency 'daily'
  rotate    7
  options   ['missingok', 'notifempty', 'compress', 'delaycompress']
end

#logrotate_app 'stunnel' do
#  cookbook  'logrotate'
#  path      ['/var/log/stunnel/stunnel.log']
#  frequency 'daily'
#  rotate    7
#  options   ['missingok']
#end

logrotate_app 'jmxtrans' do
  cookbook  'logrotate'
  path      ['/var/log/jmxtrans/jmxtrans.log']
  frequency 'daily'
  rotate    7
  options   ['missingok', 'notifempty', 'compress', 'delaycompress']
end
