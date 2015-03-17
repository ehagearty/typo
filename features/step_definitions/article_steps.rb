require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /the following articles exist/ do |pups_table|
  	pups_table.hashes.each do |rating|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
	    Article.create!(
	      	id: rating['id'],
	      	title: rating['title'],
	    	body: rating['body'])
  	end
end