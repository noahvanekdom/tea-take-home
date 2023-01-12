class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :price
      t.integer :frequency, default: 1
      t.string :title
      t.column :status, :integer, default: 0

      t.references :customer, foreign_key: true
      t.references :tea, foreign_key: true
      t.timestamps
    end
  end
end
