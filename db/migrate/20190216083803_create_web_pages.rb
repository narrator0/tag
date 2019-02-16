class CreateWebPages < ActiveRecord::Migration[5.2]
  def change
    create_table :web_pages do |t|
      t.text :url

      t.timestamps
    end
  end
end
