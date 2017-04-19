class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :role, null: false

      t.timestamps null: false
    end
  end
end
