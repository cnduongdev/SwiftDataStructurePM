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
    
    func testLinkedList_whenFindNode_returnExactNodeAtIndex() {
        let index = 1
        var linkedLis = LinkedList<Int>()
        
        linkedLis.append(1)
        linkedLis.append(2)
        
        let result = linkedLis.node(at: index)

        let node = Node(val: 2, next: nil)
        XCTAssertEqual(node, result)
    }
    
    func testLinkedList_whenInsertAtNode_insertSuccessful() {
        let index = 0
        var linkedLis = LinkedList<Int>()
        
        linkedLis.append(1)
        linkedLis.append(2)
        
        let result = linkedLis.node(at: index)
        
        XCTAssertNotNil(result)
        
        linkedLis.insert(3, after: result!)
        
        let comparedNode = Node(val: 1, next: Node(val: 3, next: Node(val: 2)))
        
        XCTAssertEqual(comparedNode, linkedLis.head)
    }
}
