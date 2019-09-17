class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.string :time, default: 'daily'

      t.timestamps
    end
  end
end
