# == Schema Information
#
# Table name: transactions
#
#  id              :integer          not null, primary key
#  account_id      :integer          not null
#  description     :string
#  amount_cents    :integer          default(0), not null
#  amount_currency :string           default("USD"), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  happened_at     :datetime
#

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
