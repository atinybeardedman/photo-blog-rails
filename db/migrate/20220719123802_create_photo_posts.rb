class CreatePhotoPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :photo_posts do |t|
      t.string :title
      t.timestamps
    end
  end
end
