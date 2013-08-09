ActiveAdmin.register Resident do

  menu :parent => "Personal"
  config.per_page = 10
  form do |f|
    f.inputs  do
      f.input :first_name
      f.input :last_name 
      f.input :gender,:as => :select, :collection => ["male","female"]
      f.input :start_date, :as => :datepicker
      f.input :end_date, :as => :datepicker
    end
     f.actions
  end
end
