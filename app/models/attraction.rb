class Attraction < ApplicationRecord
  belongs_to :kind
  belongs_to :channel
  belongs_to :medium
end
