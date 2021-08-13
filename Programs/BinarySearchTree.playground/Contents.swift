import UIKit

// Binary tree

class Node {
    let value: Int
    var leftNode: Node?
    var rightNode: Node?
    
    init(value: Int, leftNode: Node?, rightNode: Node?) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}

// Left Node
let oneNode = Node(value: 1, leftNode: nil, rightNode: nil)
let fiveNode = Node(value: 5, leftNode: oneNode, rightNode: nil)

// Right Node
let elevenNode = Node(value: 11, leftNode: nil, rightNode: nil)
let twentyNode = Node(value: 20, leftNode: nil, rightNode: nil)
let fourteenNode = Node(value: 14, leftNode: elevenNode, rightNode: twentyNode)

let tenNode = Node(value: 10, leftNode: fiveNode, rightNode: fourteenNode)

//        10
//       /  \
//      5    14
//     /    /  \
//    1    11   20


func search(node: Node?, searchValue: Int) -> Bool {
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
    } else {
        return search(node: node?.leftNode, searchValue: searchValue) || search(node: node?.rightNode, searchValue: searchValue)
    }
}

print(search(node: tenNode, searchValue: 20))

// Finding All the paths
func findAllPathsToLeaf(node: Node?, value: [Int]){

    if node?.leftNode == nil && node?.rightNode == nil {
        print(value)
    }

    if node?.leftNode != nil {
        var leftdata = [Int]()
        leftdata = value
        leftdata.append(node?.leftNode?.value ?? 0)
        findAllPathsToLeaf(node: node?.leftNode, value: leftdata)
    }
    
    if node?.rightNode != nil {
        var rightdata = [Int]()
        rightdata = value
        rightdata.append(node?.rightNode?.value ?? 0)
        findAllPathsToLeaf(node: node?.rightNode, value: rightdata)
    }
    
}

findAllPathsToLeaf(node: tenNode, value: [tenNode.value])
