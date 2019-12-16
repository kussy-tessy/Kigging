class CreateKigurumis < ActiveRecord::Migration[5.2]
  def change
    create_table :kigurumis do |t|
      t.references :owner, foreign_key: {to_table: :people}
      t.string :name

      t.timestamps
    end
  end
end
