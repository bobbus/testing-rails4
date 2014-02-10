require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick


  processor :testing do |content|
    tempfile = Tempfile.new('testing-image')
    begin
      FileUtils.copy_file(content.path, tempfile.path, true)
      tempfile.close
      content.update tempfile
    ensure
      tempfile.unlink
    end
  end


  protect_from_dos_attacks true
  secret "a31ac3f967ed7ad4df92b9bcfba1cc0411db27db9c0b5165a49753302af51089"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
