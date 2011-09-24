class SectionEdit < ActiveRecord::Base
  belongs_to :editor, :class_name => "AdminUser", :foreign_key => "admin_user_id"
  belongs_to :section

  CONTENT_TPES = ['text', 'html']
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  validates_inclusion_of :content_type, :in => CONTENT_TPES,
                  :message => "must be one of: #{CONTENT_TPES.join(', ')}"
  validates_presence_of :content
  
  end
