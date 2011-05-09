class Word < ActiveRecord::Base
  validates :korean, :presence   => true,
                    :uniqueness => { :case_sensitive => false }
  validates :english, :presence   => true
  validates :function, :presence   => true
end
