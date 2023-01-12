class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.integer :brew_time
      t.integer :temperature
      t.string :title
      t.string :description
    end
  end
end
