import UIKit

var str = "Hello, playground"


// Binary tree of number -> Maximum sum(From root to leaf)


//        20
//    5       10
// 1    4   6    8


class Node {
    var value: Int
    var leftNode: Node?
    var rightNode: Node?
    
    init(value: Int, leftNode: Node?, rightNode: Node?) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}

var lastRightLeaf = Node(value: 4, leftNode: nil, rightNode: nil)
var lastLeftLeaf = Node(value: 1, leftNode: nil, rightNode: nil)
var fiveNode = Node(value: 5, leftNode: lastLeftLeaf, rightNode: lastRightLeaf)

var rightLastRightLeaf = Node(value: 8, leftNode: nil, rightNode: nil)
var rightLastLeftLeaf = Node(value: 6, leftNode: nil, rightNode: nil)
var tenNode = Node(value: 10, leftNode: rightLastLeftLeaf, rightNode: rightLastRightLeaf)

var rootNode = Node(value: 20, leftNode: fiveNode, rightNode: tenNode)

// Need to traverse till leaf to get sum.
var highNumber = 0
func findMaxSum(value: Int, node: Node?) {
    
    if (node?.leftNode == nil) && (node?.rightNode == nil) {
        if value > highNumber {
            highNumber = value
        }
//        print(value)
    }
    
    if node?.leftNode != nil {
        findMaxSum(value: value + (node?.leftNode?.value ?? 0), node: node?.leftNode)
    }
    
    if node?.rightNode != nil {
        findMaxSum(value: value + (node?.rightNode?.value ?? 0), node: node?.rightNode)
    }
}

findMaxSum(value: rootNode.value, node: rootNode)
print(highNumber)
