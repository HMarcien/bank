"
Withdrawal transaction.
"
Class {
	#name : 'Withdrawal',
	#superclass : 'Transaction',
	#category : 'BankManagement',
	#package : 'BankManagement'
}

{ #category : 'instance creation' }
Withdrawal class >> of: amount from: bankAccount [
	"Withdraw transaction from bank account."

	^ self new
		initializeWithAmount: amount bankAccount: bankAccount;
		yourself
]
