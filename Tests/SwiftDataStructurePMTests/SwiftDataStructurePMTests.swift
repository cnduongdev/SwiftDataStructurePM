import XCTest
@testable import SwiftDataStructurePM

final class SwiftDataStructurePMTests: XCTestCase {
    
    var linkedList: LinkedList<Int>!
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
    
    override func setUp() {
        linkedList = LinkedList<Int>()
        super.setUp()
    }
    
    override func tearDown() {
        linkedList = nil
        super.tearDown()
    }
    
    func testLinkedList_whenAppend_increaseLinkedListSize() {
        let resultLinkedList = Node(val: 1, next: Node(val: 2))
    
        linkedList.append(1)
        linkedList.append(2)
        
        XCTAssertEqual(resultLinkedList, linkedList.head)
    }
    
    func testLinkedList_whenPushed_oneNodeInLinkedList() {
        let resultLinkedList = Node(val: 1, next: nil)
        var linkedLis = LinkedList<Int>()
        linkedLis.push(1)
        
        XCTAssertEqual(linkedLis.head, resultLinkedList)
    }
}
