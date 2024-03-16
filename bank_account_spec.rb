require 'rspec'
require_relative 'bank_account'

RSpec.describe BankAccount do
  let(:initial_balance) { 1000 }
  let(:bank_account) { BankAccount.new(initial_balance) }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      deposit_amount = 500
      expect { bank_account.deposit(deposit_amount) }.to change { bank_account.balance }.by(deposit_amount)
    end
  end

  describe "#withdraw" do
    context "when funds are available" do
      it "decreases the balance by the withdrawal amount" do
        withdrawal_amount = 200
        expect { bank_account.withdraw(withdrawal_amount) }.to change { bank_account.balance }.by(-withdrawal_amount)
      end
    end

    context "when insufficient funds" do
      it "does not change the balance" do
        withdrawal_amount = 1200
        expect { bank_account.withdraw(withdrawal_amount) }.not_to change { bank_account.balance }
      end
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      expect(bank_account.balance).to eq(initial_balance)
    end
  end
end