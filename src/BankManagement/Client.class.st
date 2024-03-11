"
Bank account owner.
"
Class {
	#name : 'Client',
	#superclass : 'Person',
	#instVars : [
		'id',
		'accountNumbers'
	],
	#category : 'BankManagement',
	#package : 'BankManagement'
}

{ #category : 'transfert' }
Client >> deposit: amount to: aBankAccount at: bank [
	"Deposit request"
	
	"@Todo attendre de savoir gerer les exceptions pour lever une si le numero de compte n'appartient pas au client"

	bank deposit: amount to: aBankAccount
]

{ #category : 'transfert' }
Client >> withdraw: amount from: aBankAccount at: bank [
	"Deposit request"

	"@Todo attendre de savoir gerer les exceptions pour lever une si le numero de compte n'appartient pas au client"

	bank withdraw: amount from: aBankAccount
]
