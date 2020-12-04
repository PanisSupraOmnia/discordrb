# frozen_string_literal: true

require 'bundler/gem_helper'

namespace :main do
  Bundler::GemHelper.install_tasks(name: 'discordrb')
end

namespace :webhooks do
  Bundler::GemHelper.install_tasks(name: 'discordrb-webhooks')
end
desc 'Perform build tasks for both core and webhook gems'
task build: %i[main:build webhooks:build]
desc 'Perform release tasks for both core and webhook gems'
task release: %i[main:release webhooks:release]

# Make "build" the default task
task default: :build
