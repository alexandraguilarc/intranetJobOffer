class CreateJoboffers < ActiveRecord::Migration[7.0]
  def change
    create_table :joboffers do |t|
      t.string :position
      t.string :description
      t.string :departament
      t.datetime :when_went
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
