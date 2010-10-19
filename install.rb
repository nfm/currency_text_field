puts 'Copying files...'

src_dir = File.join(File.dirname(__FILE__), 'lib', 'installed_files')
FileUtils.copy(File.join(src_dir, 'currency_text_field_initializer.rb', "#{Rails.root}/config/initializers/"))

puts 'Files copied - installation complete!'
