# frozen_string_literal: true

class Event < ApplicationRecord
  scope :published, -> { where(published: true) }
end
