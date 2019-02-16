class CreateUserTaggings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_taggings do |t|
      t.belongs_to :user
      t.belongs_to :page_tag
      t.belongs_to :web_page

      t.timestamps
    end
  end
end
