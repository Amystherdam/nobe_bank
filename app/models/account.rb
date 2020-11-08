class Account < ApplicationRecord
  belongs_to :account_type
  belongs_to :client
end
