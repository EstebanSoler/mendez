class CreateCareerArticles < ActiveRecord::Migration
  def change
    create_table :career_articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
