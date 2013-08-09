ActiveAdmin.register Banner do
config.per_page = 5
  form do |f|
    f.inputs  do
      f.input :name
      f.input :body
      f.input :image
    end
    f.actions
  end
end
