//
//  NYTimesTests.swift
//  NYTimesTests
//
//  Created by DineshKumar on 11/07/18.
//  Copyright © 2018 Dinesh Kumar. All rights reserved.
//

import XCTest
@testable import NYTimes

class NYTimesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNewsModelInitilazationPass() {
        
        let date = "2018/07/09"
        let news = News(newsTitle: "HelloTitle", newsImageUrl: URL(string: "https://www.nytimes.com/")!, newsDate: date, newsAuthor: "auther", newsContent: "content", id: 20)
        XCTAssertNotNil(news)
    }
    
    func testNewsModelInitilazationFail() {
        
        let date = ""
        let news = News(newsTitle: "HelloTitle", newsImageUrl: URL(string: "https://www.nytimes.com/")!, newsDate: date, newsAuthor: "auther", newsContent: "content", id: 20)
        XCTAssertNotNil(news)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
