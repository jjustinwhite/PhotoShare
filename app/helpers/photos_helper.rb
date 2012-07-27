module PhotosHelper
  #===START===Image Helper============================================  
    def display_image(item)
      if item.has_image?
        image_tag item.image_path
      else
         "No image."
      end
    end
  #===END===Image Helper============================================
end
