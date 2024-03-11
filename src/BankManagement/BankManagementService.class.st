"
I'm responsible of account registration and commiting requested transaction on client bank account.
"
Class {
	#name : 'BankManagementService',
	#superclass : 'Object',
	#instVars : [
		'bankAccounts',
		'transactions'
	],
	#category : 'BankManagement',
	#package : 'BankManagement'
}

{ #category : 'compute' }
BankManagementService >> balanceOf: anAccount [
	"Answer the balance of bank account"

	^ anAccount initialBalance
	  + ((transactions select: [ :tx | tx bankAccount = anAccount ])
			   inject: 0
			   into: [ :sum :each | sum + each value ])
]

{ #category : 'removing' }
BankManagementService >> closeBankAccount: aBankAccount of: aClient [
	"Close bank account."

	| account aClientAccounts |
	"@Todo gestion des messages d'erreur en l'absence du compte bancaire."
	aClientAccounts := bankAccounts at: aClient.
	account := aClientAccounts like: aBankAccount.
	account ifNotNil: [ account close ]
]

{ #category : 'transfert' }
BankManagementService >> deposit: amount to: aBankAccount [
	"Withdraw money from bank account"

	transactions add: (Deposit of: amount to: aBankAccount)
]

{ #category : 'initialization' }
BankManagementService >> initialize [

	super initialize.
	bankAccounts := Dictionary new.
	transactions := OrderedCollection new
]

{ #category : 'counting' }
BankManagementService >> numberofAccount [
	"Total numbers of bank account"

	^ bankAccounts size
]

{ #category : 'counting' }
BankManagementService >> numberofTransactions [
"Total numbers of transaction"
^ transactions size 
]

{ #category : 'adding' }
BankManagementService >> registerBankAccountFor: aPerson withBalance: balance [
	"Register bank account for aClient with initial balance."

	| bankAccount |
	bankAccount := (BankAccount for: aPerson withBalance: balance)
		               open;
		               yourself.

	bankAccounts
		at: aPerson
		ifPresent: [ :accounts | accounts add: bankAccount ]
		ifAbsentPut: [ Set with: bankAccount ].

	^ bankAccount
]

{ #category : 'transfert' }
BankManagementService >> withdraw: amount from: aBankAccount [
	"Withdraw money from bank account"

	transactions add:
		(Withdrawal of: amount negated from: aBankAccount)
]
