ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do

    end

    columns do

      column do
        panel "Staff" do
          table_for Staff.all.map do |staff|
            column(:Name)    {|staff| link_to(staff.profesional_name, 
              admin_staff_path(staff)) }
          end
        end
      end

      column do
        panel "Residents" do
          table_for Resident.all.map do |resident|
            column(:Name)    {|resident| link_to(resident.profesional_name, 
              admin_resident_path(resident)) }
            column(:start)    {|resident| resident.start_date.year}
            column(:end)    {|resident| resident.end_date.year}
          end
        end
      end

      column do
        panel "Graduates" do
          table_for Graduate.last(10).map do |graduate|
            column(:Name)    {|graduate| link_to(graduate.profesional_name, 
              admin_graduate_path(graduate)) }
            column(:Date)    {|graduate| graduate.graduation_date.year}
          end
        end
      end

    end

    columns do

      column do
        panel "Services" do
          table_for Service.all.map do |service|
            column(:name)    {|service| link_to(service.name, 
              admin_type_of_service_service_path(service.type_of_service,service)) }
            column(:Type)    {|service| service.type_of_service.type_name}
          end
        end
      end

      column do
        panel "Machines" do
          table_for Machine.all.map do |machine|
            column(:name)    {|machine| link_to(machine.name, 
              admin_machine_path(machine)) }
          end
        end
      end

    end

    columns do

      column do
        panel "Articles" do
          table_for Article.all.map do |article|
            column(:title)    {|article| link_to(article.title, 
              admin_article_path(article)) }
          end
        end
      end

      column do
        panel "Career Articles" do
          table_for CareerArticle.all.map do |article|
            column(:title)    {|article| link_to(article.title, 
              admin_career_article_path(article)) }
          end
        end
      end

      column do
        panel "Slide infos" do
          table_for SlideInfo.all.map do |slideInfo|
            column(:title)    {|slideInfo| link_to(slideInfo.title, 
              admin_slide_info_path(slideInfo)) }
          end
        end
      end

    end
  end
end
