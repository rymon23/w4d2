# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  name        :string           not null
#  color       :string
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  COLORS = %w(red orange yellow green blue violet)

  validates :sex, presence: true, inclusion: { in: %w(M F)}
  validates :color, presence: true, inclusion: { in: COLORS }

  def age
    time_ago_in_words(self.birth_date) 
  end
end
