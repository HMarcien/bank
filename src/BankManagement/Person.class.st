"
A physical or moral person.
"
Class {
	#name : 'Person',
	#superclass : 'Object',
	#instVars : [
		'name',
		'birthDay'
	],
	#category : 'BankManagement-Management',
	#package : 'BankManagement',
	#tag : 'Management'
}

{ #category : 'instance creation' }
Person class >> name: aString birthDate: aDate [

	^ self new
		  initializeWithName: aString birthDate: aDate;
		  yourself
]

{ #category : 'private' }
Person >> getName [
	"Answer name"

	^ name
]

{ #category : 'initialization' }
Person >> initializeWithName: aString birthDate: aDate [ 
	name := aString.
	birthDay := aDate.
	self initialize 
]

{ #category : 'accessing' }
Person >> registerBankAccountAt: aBank [
	"Request bank account registration"

	^ aBank registerBankAccountFor: self withBalance: 0
]
