class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nombre
      t.string :apellido
      t.text :datos

      t.timestamps
    end
  end
end
