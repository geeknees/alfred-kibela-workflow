#!/usr/bin/env ruby
# encoding: utf-8

require 'json'
require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require_relative "bundle/bundler/setup"
require "alfred"
require_relative "./kibera.rb"


arg = ARGV[0]

Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback

  query = "
      query {
        search(query:\"#{arg}\", first:10) {
          edges {
            node{
              title,
              path,
              url
            }
          }
        }
      }"
  # kibelaを検索する
  begin
    result = RunQuery(query)
  rescue => error
    fb.add_item({
                    :uid => "",
                    :title => "#{error}",
                    :valid => "no",
                })
    puts fb.to_xml()
  end

  if result === nil
    fb.add_item({
                    :uid => "",
                    :title => "Setup Error.",
                    :valid => "no",
                })

    puts fb.to_xml()
    return
  end

  r = result["data"]["search"]["edges"]

  if r.length > 0

    r.each do |node|
      note = node["node"]
      title = note["title"]
      url = note["url"]
      path = note["path"]

      fb.add_item({
                      :uid => "",
                      :title => title,
                      :subtitle => path,
                      :arg => url,
                      :valid => "yes",
                  })
    end
  else
    fb.add_item({
                    :uid => "",
                    :title => "no search results.",
                    :valid => "no",
                })
  end
  puts fb.to_xml()
end