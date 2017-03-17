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

FactoryGirl.define do
  factory :transaction do
    description "MyString"
    amount ""
  end
end
