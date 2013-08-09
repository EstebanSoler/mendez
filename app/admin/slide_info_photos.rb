ActiveAdmin.register SlideInfoPhoto do
  belongs_to :slide_info
  navigation_menu :slide_info
  config.per_page = 5

  show do
    attributes_table do
      row "Slide" do |slide_info_photo|
        slide_info_photo.slide_info.title
      end
      row :title
      row :image do |slide_info_photo|
        if slide_info_photo.photo.present?
          image_tag slide_info_photo.photo.url(:small)
        else 
          ''
        end
      end
    end
  end

  form do |f|
    f.inputs  do
      f.input :slide_info_id, :label => "slide info",
              :as => :select, :collection => Hash[SlideInfo.all.map{|s| [s.title, s.id]}]
      f.input :title
      f.input :photo
    end
     f.actions
  end
end
