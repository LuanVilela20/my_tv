class Attraction < ApplicationRecord
  belongs_to :kind
  belongs_to :channel, optional: true
  belongs_to :medium


  def as_json(options={})
    response = super(options)
    response[:transmission_date] = I18n.l(self.transmission_date)
    response
  end
  


end
