def super_require(gem_name)
  require gem_name
rescue LoadError
  require 'rubygems/dependency_installer'
  puts "Installing #{gem_name}..."
  Gem::DependencyInstaller.new.install gem_name
  require gem_name
end
