#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require_relative "bundle/bundler/setup"
require "alfred"
require_relative "./save.rb"

datapath = ENV['alfred_workflow_data']

begin
  arg = ARGV[0].split
  token = arg[0]
  teamname = arg[1]

  if token == "" || teamname == "" ||
      token == nil || teamname == nil
    puts "Feature."
    exit 1
  end

  Save(token,teamname)
  puts "Success."

rescue => error
  puts "Error: #{error}"
end
