ActiveAdmin.register Staff do

  menu :parent => "Personal"
  config.per_page = 10

  form do |f|
    f.inputs  do
      f.input :last_name
      f.input :first_name
      f.input :gender,:as => :select, :collection => ["male","female"]
      f.input :cv, as: :html_editor
      f.input :avatar
    end
     f.actions
  end

  index do
    selectable_column
    column :id
    column :last_name
    column :first_name
    column :gender
    column :created_at
    column :updated_at
    column :avatar_file_name
    column :avatar_content_type
    column :avatar_file_size
    column :avatar_updated_at
    actions
  end

end
