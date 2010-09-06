class Folder < ActiveRecord::Base
  # Associations
  has_many :emails
  belongs_to :parent, :class_name => 'Folder'
  belongs_to :email_account

  # Constructors
  def self.build_from_imap(imap_folder)
    folder = Folder.new
    
    folder.title = imap_folder.name
    return folder
  end
end