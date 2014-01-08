require "awesome_print"

class User < ActiveRecord::Base
  rolify
  attr_accessible :role_ids, :as => :admin
  attr_accessible :provider, :uid, :name, :email, :first_name, :last_name, :image,
                  :headline, :location ,
                  :industry,
                  :positions, :public_profile_url, :last_modified_timestamp,
                  :skills, :certifications, 
                  :three_current_positions, :three_past_positions,
                  :connections, :all_data, :specialities

  validates_presence_of :name
  serialize :all_data
  serialize :connections
  serialize :positions
  serialize :three_current_positions
  serialize :three_past_positions

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']

      puts ap auth
    
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
         user.first_name = auth['info']['first_name'] || ""
         user.last_name = auth['info']['last_name'] || ""
         user.image = auth['info']['image'] || ""
         user.headline = auth['info']['headline'] || ""
         user.location = auth['info']['location'] || ""
         user.industry = auth['info']['industry'] || ""
         user.positions = auth['extra']['raw_info']['positions'] || ""
         user.public_profile_url = auth['info']['urls']['public_profile'] || ""
         user.last_modified_timestamp = auth['extra']['raw_info']['lastModifiedTimestamp']     
         user.three_current_positions = auth['extra']['raw_info']['threeCurrentPositions'] || ""
         user.three_past_positions = auth['extra']['raw_info']['threePastPositions'] || ""
         user.connections = auth['extra']['raw_info']['connections'] || ""
         user.all_data = auth
      end
    end
  end

end
