class RemaneBodyToDescriptionInArticles < ActiveRecord::Migration
def change
    rename_column :articles, :body, :description
    change_column :articles, :description, :string
  end
end
