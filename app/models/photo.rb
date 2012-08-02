class Photo < ActiveRecord::Base
    attr_accessible :name, :image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
    belongs_to :album
  
  #===START===Paperclip===========================================
      has_attached_file :image,
        :styles =>{
          :thumb  => "100x100",
          :medium => "200x200",
          :large => "600x400"
        },
        :storage => :s3,
        :path => ":attachment/:id/:style.:extension",
        :bucket => 'PhotoShare-jw'
  #===END===Paperclip===========================================
  
end
