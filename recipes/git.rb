# Application template recipe for the rails_apps_composer. Change the recipe here:
# https://github.com/RailsApps/rails_apps_composer/blob/master/recipes/git.rb

## Git
say_wizard "initialize git"
prefs[:git] = true unless prefs.has_key? :git
if prefer :git, true
  copy_from 'https://raw.github.com/RailsApps/rails-composer/master/files/gitignore.txt', '.gitignore'
  git :init
  git :add => '-A'
  git :commit => '-am "LPL: initial commit"'
  git :remote => "add origin git@github.com:LaunchPadLab/#{app_name.humanize.titleize}"
  git :push => 'origin master'
end

__END__

name: git
description: "Initialize git for your application."
author: RailsApps

category: configuration