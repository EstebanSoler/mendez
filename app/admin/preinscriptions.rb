ActiveAdmin.register Preinscription do

  menu :parent => "Career"
  config.per_page = 5

  form do |f|
    f.inputs  do
      f.input :body,as: :html_editor
    end
    f.actions
  end

 show do
      h3 preinscription.body.html_safe
    end
end
