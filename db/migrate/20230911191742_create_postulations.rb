class CreatePostulations < ActiveRecord::Migration[7.0]
  def change
    create_table :postulations do |t|
      t.references :user, foreign_key: true
      t.references :joboffer, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
