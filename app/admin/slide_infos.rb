ActiveAdmin.register SlideInfo do

  menu :parent => "Home"
  config.per_page = 5
  action_item :only => :show do
          link_to("Photos", admin_slide_info_slide_info_photos_path(slide_info))
  end

  form do |f|
    f.inputs  do
      f.input :title
      f.input :image
      f.input :body,as: :html_editor
      f.input :description,as: :html_editor
      f.input :image
    end
     f.actions
  end
end
