require 'fileutils'

desc 'Fork this starter to build a new project from it'
task :fork, :location do |t, args|
  location = args.location
  folder = location.split('/').last.downcase
  module_name = folder.split('-').map { |w| w.capitalize } .join('')
  project_string = module_name.downcase
  project_name = project_string.capitalize

  files = %w(
    README.md
    config/application.rb
    config/mongoid.yml
    config/initializers/session_store.rb
    config/locales/en.yml
    config/locales/fr.yml
  )

  FileUtils.cp_r Dir.pwd, location

  files.each do |file|
    full_path = "#{location}/#{file}"
    text = File.read full_path
    text = text.gsub(/funkystarter/, project_string)
    text = text.gsub(/Funkystarter/, project_name)
    text = text.gsub(/FunkyStarter/, module_name)
    File.open(full_path, 'w') { |f| f.puts text }
  end
end
