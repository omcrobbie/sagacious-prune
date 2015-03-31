class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :notable, index: true
      t.string :notable_type

      t.timestamps null: false
    end
    add_foreign_key :notes, :notables
  end
end
