json.extract! profile, :id, :name, :age, :reason_for_interest, :interests, :discussion_topics, :country_id, :gender_id, :sexuality_id, :identity_id, :mentor, :mentee, :mentor_public, :mentee_public, :mentor_availability, :mentee_availability, :created_at, :updated_at
json.url profile_url(profile, format: :json)
