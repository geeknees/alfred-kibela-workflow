require 'rbconfig'
ruby_engine = RUBY_ENGINE
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/fuzzy_match-2.0.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/builder-3.2.2/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/gyoku-1.1.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/moneta-0.7.20/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/nori-2.3.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/plist-3.1.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/terminal-notifier-1.5.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/alfred-workflow-2.0.5/lib"
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/extensions/x86_64-darwin-19/2.6.0-static/unf_ext-0.0.7.6"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/unf_ext-0.0.7.6/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/unf-0.1.4/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/domain_name-0.5.20190701/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-accept-1.7.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/http-cookie-1.0.3/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mime-types-data-3.2019.1009/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/mime-types-3.3.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/netrc-0.11.0/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rest-client-2.1.0/lib"
