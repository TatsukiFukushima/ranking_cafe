class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id
      t.text :choice
      t.integer :count

      t.timestamps null: false
    end
  end
end
