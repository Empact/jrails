#!/usr/bin/env ruby
require File.join(File.dirname(__FILE__), '../../../config/boot')
require 'fileutils'
require 'pathname'

# Install hook code here
puts "Copying files..."
dir = "javascripts"
src_path = Pathname(File.join(File.dirname(__FILE__), dir))
paths = src_path.children.reject{|p| p.directory? }

dest_path = File.join(RAILS_ROOT, "public", dir)
FileUtils.cp(paths, dest_path)
puts "Files copied - Installation complete!"
