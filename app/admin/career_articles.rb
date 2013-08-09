ActiveAdmin.register CareerArticle do

  menu :parent => "Career"
  config.per_page = 3
  form do |f|
    f.inputs  do
      f.input :title
      f.input :body,as: :html_editor
    end
    f.actions
  end
end
