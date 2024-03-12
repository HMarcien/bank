"
A BankManagementServiceTest is a test class for testing the behavior of BankManagementService
"
Class {
	#name : 'BankManagementServiceTest',
	#superclass : 'TestCase',
	#instVars : [
		'client',
		'balance',
		'bankAccount',
		'bankManagementService',
		'person'
	],
	#category : 'BankManagement-Tests-Management',
	#package : 'BankManagement-Tests',
	#tag : 'Management'
}

{ #category : 'running' }
BankManagementServiceTest >> setUp [

	super setUp.
	balance := 10000.
	person := Person
		          name: 'Henri Fouda'
		          birthDate: (Date fromString: '10-26-1986').
	client := Client
		          name: 'Henri Fouda'
		          birthDate: (Date fromString: '10-26-1986').

	bankManagementService := BankManagementService new.
	bankAccount := bankManagementService registerBankAccountFor: client withBalance: balance 
]

{ #category : 'tests' }
BankManagementServiceTest >> testBalanceOf [

	bankManagementService deposit: 1000 to: bankAccount.
	self
		assert: (bankManagementService balanceOf: bankAccount)
		equals: 11000
]

{ #category : 'tests' }
BankManagementServiceTest >> testCloseBankAccountOf [

	bankManagementService
		           closeBankAccount: bankAccount 
		           of: client.
	self assert: bankAccount isClosed
]

{ #category : 'tests' }
BankManagementServiceTest >> testDepositTo [

	| bank |
	bank := bankManagementService clone.
	bank deposit: balance to: bankAccount.

	self
		assert: bank transactions isNotEmpty;
		assert: bank numberofTransactions equals: 1
]

{ #category : 'tests' }
BankManagementServiceTest >> testInitialize [

	| bank |
	bank := BankManagementService new.
	self
		assert: bank transactions isEmpty;
		assert: bank bankAccounts isEmpty
]

{ #category : 'tests' }
BankManagementServiceTest >> testRegisterBankAccountForWithBalance [

	| account |
	account := bankManagementService
		           registerBankAccountFor: client
		           withBalance: 1000.
	self
		assert: account class equals: BankAccount;
		assert: account initialBalance equals: 1000;
		assert: account owner equals: client
]

{ #category : 'tests' }
BankManagementServiceTest >> testWithdrawFrom [

	| bank |
	bank := bankManagementService clone.
	bank withdraw: balance from: bankAccount.

	self
		assert: bank transactions isNotEmpty;
		assert: bank numberofTransactions equals: 1
]
