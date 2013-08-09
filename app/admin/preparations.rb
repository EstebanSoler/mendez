ActiveAdmin.register Preparation do
  belongs_to :service
  navigation_menu :service
  config.per_page = 5

  form do |f|
    f.inputs  do
      f.input :service_id, :label => "Service",
              :as => :select, :collection => Hash[Service.all.map{|s| [s.name, s.id]}]
      f.input :name
      f.input :body,as: :html_editor
    end
     f.actions
  end
end
