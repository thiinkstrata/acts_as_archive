if Rails.root.nil?
  class ActsAsArchiveRailtie < Rails::Railtie
    config.to_prepare do
      if ActsAsArchive.configuration.empty?
        ActsAsArchive.load_from_yaml(Rails.root)
      else
        ActsAsArchive.reload
      end
    end
  end
else
  ActsAsArchive.load_from_yaml(Rails.root)
end
