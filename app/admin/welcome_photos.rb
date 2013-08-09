ActiveAdmin.register WelcomePhoto do
  belongs_to :welcome
  navigation_menu :welcome
  config.per_page = 5

  show do
    attributes_table do
      row "Welcome" do |welcome_photo|
        welcome_photo.welcome.title
      end
      row :title
      row :image do |welcome_photo|
        if welcome_photo.image.present?
          image_tag welcome_photo.image.url(:small)
        else 
          ''
        end
      end
    end
  end

  form do |f|
    f.inputs  do
      f.input :welcome_id, :label => "Welcome",
              :as => :select, :collection => Hash[Welcome.all.map{|s| [s.title, s.id]}]
      f.input :title
      f.input :image
    end
     f.actions
  end
end
