Rails.application.config.middleware.use OmniAuth::Builder do
   provider :linkedin, ENV['OMNIAUTH_PROVIDER_KEY'], ENV['OMNIAUTH_PROVIDER_SECRET'], 
            :scope => 'r_fullprofile r_emailaddress r_network rw_nus', 
            :fields => ["id", "email-address", "first-name", "last-name",
            "headline", 
            "industry",
            "num-connections",
            "public-profile-url",
            "last-modified-timestamp",
            "picture-url",            
            "associations",
            "interests",
            "publications",
            "patents",
            "languages",
            "skills",
            "certifications",
            "educations",
            "courses",
            "volunteer",
            "three-current-positions",
            "three-past-positions",
            "honors-awards",
            "connections",
            "positions",
            "specialties",
            "location\:\(name\)",
            "num-recommenders",
            #location:(country:(code)),
            "date-of-birth"
            #{}"network",
            ]
end

#configure linkedin gem
LinkedIn.configure do |config|
  config.token = ENV['OMNIAUTH_PROVIDER_KEY']
  config.secret = ENV['OMNIAUTH_PROVIDER_SECRET']
end