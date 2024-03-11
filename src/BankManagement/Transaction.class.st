"
Bank account transaction.
"
Class {
	#name : 'Transaction',
	#superclass : 'Object',
	#instVars : [
		'bankAccount',
		'value',
		'date'
	],
	#category : 'BankManagement-Objects',
	#package : 'BankManagement',
	#tag : 'Objects'
}

{ #category : 'initialization' }
Transaction >> bankAccount [
	"Answer the bank account of the transaction"

	^ bankAccount
]

{ #category : 'initialization' }
Transaction >> initializeWithAmount: amount bankAccount: account [
	"Initialize new transaction"

	value := amount.
	bankAccount := account.
	date := Date today.
	self initialize
]

{ #category : 'initialization' }
Transaction >> value [
	"Answer the value of the transaction"

	^ value
]
