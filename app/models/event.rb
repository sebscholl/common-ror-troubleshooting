class Event < ApplicationRecord
  belongs_to :producer

  include ::SuperModule
end
