class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :rut
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :nacimiento
      t.string :password
      t.string :avatar

      t.timestamps
    end
  end
end
