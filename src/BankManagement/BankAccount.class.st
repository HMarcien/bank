"
Checking bank account.
"
Class {
	#name : 'BankAccount',
	#superclass : 'Object',
	#instVars : [
		'number',
		'balance',
		'closed',
		'owner'
	],
	#category : 'BankManagement',
	#package : 'BankManagement'
}

{ #category : 'instance creation' }
BankAccount class >> for: aClient withBalance: amount [

	^ self new
		  initializeWithBalance: amount for: aClient;
		  yourself
]

{ #category : 'initialize-release' }
BankAccount >> close [
"Close bank account"
closed := true
]

{ #category : 'accessing' }
BankAccount >> initialBalance [
"Account initial balance"
^ balance

]

{ #category : 'initialization' }
BankAccount >> initializeWithBalance: amount for: aClient [

	balance := amount.
	owner := aClient.
	self initialize
]

{ #category : 'initialize-release' }
BankAccount >> isClosed [
	"Answer yes when account is closed"

	^ closed isTrue 
]

{ #category : 'accessing' }
BankAccount >> number [
"Account number"
^ number 
]

{ #category : 'initialize-release' }
BankAccount >> open [
	"Open bank account"

	closed := false
]
