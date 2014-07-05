//
//  SwiftazTests.swift
//  SwiftazTests
//
//  Created by Tomek on 05.07.2014.
//  Copyright (c) 2014 Tomek Cejner. All rights reserved.
//

import XCTest
import Swiftaz

// Moved there. Does not work as extension because of compiler bug :(
// https://devforums.apple.com/message/983747#983747

extension Optional {
    func getOrElse(val:T) -> T  {
        if getLogicValue() {
            return self!
        } else {
            return val
        }
        
    }
    
    func when(functionToCall: (value:T) -> Void) {
        if getLogicValue() {
            functionToCall(value: self!);
        }
    }
}

// ---------------------------------------------------------------------------------

class SwiftazTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUnwrapped() {
        var optionalName: String? = "John Appleseed"
        let result = optionalName.getOrElse("nobody")
        
        XCTAssertEqual(result, "John Appleseed")
    }
    
    func testDefaultValue() {
        let probablyInt = "Foo".toInt()
        let forSureInt = probablyInt.getOrElse(666)
        
        XCTAssertEqual(forSureInt, 666)
    }
    
    func testClosure() {
        var optionalName: String? = "John Appleseed"
        
        optionalName.when {
            XCTAssertEqual($0, "John Appleseed")
        }
        
    }
    
}
