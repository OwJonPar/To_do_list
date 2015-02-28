class ToDo < ActiveRecord::Base
  include RankedModel
  ranks :row_order
  validates :text, presence: true

end
