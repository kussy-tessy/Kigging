class CreateKiggings < ActiveRecord::Migration[5.2]
  def change
    create_table :kiggings do |t|
      t.references :actor, foreign_key: {to_table: :people}
      t.references :kigurumi, foregin_key: true
      t.date :kig_date
      t.text :remarks

      t.timestamps
    end
  end
end
