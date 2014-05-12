class RemoveTitleFrmCmments < ActiveRecord::Migration
 def self.up
    Comment.create_translation_table!({
      :title => :string,
      :description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Comment.drop_translation_table! :migrate_data => true
  end
end
