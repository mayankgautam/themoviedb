require 'rubygems'
require 'httparty'

["api", "search", "resource", "configuration"].each do |inc|
  require File.join(File.dirname(__FILE__), "themoviedb", inc)
end

["movie", "tv", "season", "episode", "collection", "people", "company", "genre"].each do |inc|
  require File.join(File.dirname(__FILE__), "themoviedb", inc)
end