class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.date :date
      t.string :title
      t.text :text
      t.integer :redactions, default: 0

      t.timestamps
    end
  end
end
