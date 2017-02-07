class Note < ApplicationRecord
  mount_uploader :image, PhotoNoteUploader
  validates_presence_of :title
  validates_presence_of :image
end
