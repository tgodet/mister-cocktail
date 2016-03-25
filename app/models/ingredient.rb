class Ingredient < ActiveRecord::Base
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
end







# before_destroy :confirm_no_doses

# private

# def confirm_no_doses
#   unless :doses.size = 0
#     errors.add_to_base "Ingredient has at least one doses"
#   end
# end
