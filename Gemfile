source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 8.1.1"
gem "pg", "~> 1.1"
gem "puma", ">= 6.4"
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows_10 ]
end

group :test do
  gem "minitest-reporters"
end
