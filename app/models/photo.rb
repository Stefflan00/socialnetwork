class Photo < ActiveRecord::Base
include Rails.application.routes.url_helpers

extend FriendlyId
friendly_id :slug_candidates, use: :scoped, scope: :user

belongs_to :user

def slug_candidates
  # if there's a name clash, use the photo's name, width & height
  [:name, -> { "#{name}-#{width}-#{height}" }]
end

def permalink
  photo_permalink_url(
  user_id: user.friendly_id,
  photo_id: friendly_id,
  host: "localhost:3000"
  )
end



end
