ActiveAdmin.register Graduate do

  menu :parent => "Personal"
  config.per_page = 10

  form do |f|
    f.inputs  do
      f.input :first_name
      f.input :last_name 
      f.input :gender,:as => :select, :collection => ["male","female"]
      f.input :specialty
      f.input :email
      f.input :graduation_date, :as => :datepicker
    end
     f.actions
  end
end
