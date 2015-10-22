class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption

      t.timestamps null: false
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :pictures_tags, id: false do |t|
      t.belongs_to :picture, index: true
      t.belongs_to :tag, index: true
    end

  end
end
