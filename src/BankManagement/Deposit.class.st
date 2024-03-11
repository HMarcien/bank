"
Bank account deposit transaction.
"
Class {
	#name : 'Deposit',
	#superclass : 'Transaction',
	#category : 'BankManagement',
	#package : 'BankManagement'
}

{ #category : 'instance creation' }
Deposit class >> of: amount to: bankAccount [
	"Deposit transaction to bank account."

	^ self new
		initializeWithAmount: amount bankAccount: bankAccount;
		yourself
]
