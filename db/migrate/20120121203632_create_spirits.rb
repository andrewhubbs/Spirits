class CreateSpirits < ActiveRecord::Migration
  def change
    create_table :spirits do |t|
      t.string :category
      t.string :name
      t.string :base
      t.string :methodology
      t.string :age
      t.integer :proof
      t.string :producer
      t.string :location
      t.text :miscellaneous
      t.text :description

      t.timestamps
    end
  end
end
