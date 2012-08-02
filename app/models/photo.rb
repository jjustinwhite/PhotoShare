class Photo < ActiveRecord::Base
    attr_accessible :name, :image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
    attr_accessor :image_file_name
    belongs_to :album
  
  #===START===Paperclip===========================================
      has_attached_file :image,
        :styles =>{
          :thumb  => "100x100",
          :medium => "200x200",
          :large => "600x400"
        },
        :s3_credentials => { :access_key_id => ENV['AWS_ACCESS_KEY_ID'], :secret_access_key => ENV['AWS_SECRET_ACCES_KEY'], :bucket => "PhotoShare-jw"},
        :storage => :s3,
        :path => "photoshare-jw/:attachment/:id/:style.:extension",
        :bucket => 'PhotoShare-jw'
  #===END===Paperclip===========================================
  
end
