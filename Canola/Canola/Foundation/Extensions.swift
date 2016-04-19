//
//  Extensions.swift
//  Canola
//
//  Created by 史翔新 on 2016/04/19.
//  Copyright © 2016年 史翔新. All rights reserved.
//

import Foundation

infix operator =? {

}

func =? <T> (inout lhs: T, rhs: T?) {
	if let rhs = rhs {
		lhs = rhs
	}
}

extension String {
	
	var trimmed: String {
		return self.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
	}
	
	var first: Character? {
		return self.characters.first
	}
	
	func flatComponentsSeparatedByString(seperator: String) -> [String] {
		let components = self.componentsSeparatedByString(seperator).flatMap { (component) -> String? in
			let component = component.trimmed
			return component.isEmpty ? nil : component
		}
		return components
	}
	
}
