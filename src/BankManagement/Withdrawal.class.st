"
Withdrawal transaction.
"
Class {
	#name : 'Withdrawal',
	#superclass : 'Transaction',
	#category : 'BankManagement-Transaction',
	#package : 'BankManagement',
	#tag : 'Transaction'
}

{ #category : 'instance creation' }
Withdrawal class >> of: amount from: bankAccount [
	"Withdraw transaction from bank account."

	^ self new
		initializeWithAmount: amount bankAccount: bankAccount;
		yourself
]
