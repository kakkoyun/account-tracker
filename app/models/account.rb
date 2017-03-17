# == Schema Information
#
# Table name: accounts
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Account < ActiveRecord::Base
  enum states: [:active, :inactive]

  has_many :transactions, inverse_of: :account

  def balance
    @balance ||= transactions.sum(:amount_cents)
  end

  def display_name
    "#{name} (#{balance})"
  end

  def to_s
    name
  end
end
