"
A BankAccountTest is a test class for testing the behavior of BankAccount
"
Class {
	#name : 'BankAccountTest',
	#superclass : 'TestCase',
	#instVars : [
		'client',
		'balance'
	],
	#category : 'BankManagement-Tests-Management',
	#package : 'BankManagement-Tests',
	#tag : 'Management'
}

{ #category : 'running' }
BankAccountTest >> setUp [
	super setUp.
	balance := 10000.
	client := Person
		          name: 'Henri Fouda'
		          birthDate: (Date fromString: '10-26-1986')
]

{ #category : 'tests - class creation' }
BankAccountTest >> testForWithBalance [

	| account |
	account := BankAccount for: client withBalance: balance.

	self assert: account owner equals: client.
	self assert: account initialBalance equals: balance
]
