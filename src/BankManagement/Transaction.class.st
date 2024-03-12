"
Bank account transaction.
"
Class {
	#name : 'Transaction',
	#superclass : 'Object',
	#instVars : [
		'bankAccount',
		'date',
		'txValue'
	],
	#category : 'BankManagement-Transaction',
	#package : 'BankManagement',
	#tag : 'Transaction'
}

{ #category : 'initialization' }
Transaction >> bankAccount [
	"Answer the bank account of the transaction"

	^ bankAccount
]

{ #category : 'initialization' }
Transaction >> initializeWithAmount: amount bankAccount: account [
	"Initialize new transaction"

	txValue := amount.
	bankAccount := account.
	date := Date today.
	self initialize
]

{ #category : 'initialization' }
Transaction >> txValue [
	"Answer the value of the transaction"

	^ txValue
]
