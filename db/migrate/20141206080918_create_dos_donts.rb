class CreateDosDonts < ActiveRecord::Migration
  def change
    create_table :dos_donts do |t|
      t.string :title
      t.string :category
      t.text :content

      t.timestamps
    end
  end
end
