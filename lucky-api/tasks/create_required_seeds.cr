require "csv"
require "../spec/support/boxes/**"

# Add seeds here that are *required* for your app to work.
# For example, you might need at least one admin user or you might need at least
# one category for your blog posts for the app to work.
#
# Use `Db::CreateSampleSeeds` if your only want to add sample data helpful for
# development.
class Db::CreateRequiredSeeds < LuckyCli::Task
  summary "Add database records required for the app to work"

  def call
  end
end
