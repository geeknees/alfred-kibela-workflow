#!/usr/bin/env ruby
# encoding: utf-8

require 'json'


$datapath = ENV['alfred_workflow_data']

def Save(token, teamname)
  # 保存
  if !File.exist?("#{$datapath}/")
    Dir.mkdir("#{$datapath}/")
  end

  # ファイルを保存
  File.open("#{$datapath}/savedata.json", 'w') do |file|
    hash = {
        "token" => token,
        "teamname" => teamname
    }
    str = JSON.dump(hash, file)
  end
end

def Load()
  File.open("#{$datapath}/savedata.json") do |file|
    hash = JSON.load(file)
    return hash
  end
end
