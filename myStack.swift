//
//  myStack.swift
//  This class is a blueprint for a stack
//
//  Created by Matthew Lourenco on 26/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

class MyStack<InType> {
	//this is a class that defines a stack

	enum MyError : Error {
    	case IndexOutOfRange(String)
	}

	private var list = [InType]()

	public func push(object: InType) {
		//append an object to the end of the stack
		list.append(object)
	}

	public func pop() throws -> InType {
		//pop the last object from the stack and return it

		if list.count == 0 {
			throw MyError.IndexOutOfRange("The list is empty")
		}

		let value = list[list.count - 1]
		list.removeLast()
		return value
	}
	
	public func peek() throws -> InType {
		//This method returns the last item in the array without removing it
		if list.count == 0 {
			throw MyError.IndexOutOfRange("The list is empty")
		}
		return list[list.count - 1]
	}

	public func clear() {
		//This method clears the list
		list.removeAll()
	}

	public func getAt(index: Int) -> InType{
		//This method returns the item at the given index
		return list[index]
	}

	public func printContents() {
		//This method prints a string version of the array
		print("\(list)")
	}
}