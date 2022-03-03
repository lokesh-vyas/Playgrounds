//: Playground - noun: a place where people can play

import UIKit

class Node {
    init(item: Int) {
        self.item = item
        left = nil
        right = nil
    }
    var item : Int
    var left: Node?
    var right: Node?
}


func isMirror(head1: Node?, head2: Node?) -> Bool {
    
    if (head1 == nil) && (head2 == nil) {
        return true
    }
    
    
    if (head1 == nil) || (head2 == nil) {
        return false
    }
    
    return (head1?.item == head2?.item) &&
    isMirror(head1: head1?.left, head2: head2?.right) &&
    isMirror(head1: head1?.right, head2: head2?.left)
}

var a: Node = Node(item: 1)
a.left = Node(item: 2)
a.right = Node(item: 3)
a.left?.left = Node(item: 4)
a.left?.right = Node(item: 5)

var b: Node = Node(item: 1)
b.left = Node(item: 3)
b.right = Node(item: 2)
b.right?.right = Node(item: 4)
b.right?.left = Node(item: 5)
print(isMirror(head1: a, head2: b))



class BinaryTree
{
    var root: Node?
    init()
    {
        self.root = nil
    }
    // Display inorder element
    func inorder(_ node: Node?)
    {
        if (node  != nil)
        {
            self.inorder(node!.left)
            // Print node value
            print("",node!.item, terminator: "")
            self.inorder(node!.right)
        }
    }
    // Convert binary tree into mirror tree
    func mirrorTree(_ node: Node? )
    {
        if (node  != nil)
        {
            self.mirrorTree(node!.left)
            self.mirrorTree(node!.right)
            // Change left and right child
            let temp: Node? = node!.left
            node!.left = node!.right
            node!.right = temp
        }
    }
    
    static func main()
    {
        // Create new tree
        let tree: BinaryTree = BinaryTree()
        /*
           Binary Tree
            -----------------------
                 1
               /   \
              6     8
             / \   / \
            2   3 4   5
           /           \
          19            10
                    
        */
        // Add element
        tree.root = Node(item: 1)
        tree.root!.left = Node(item: 6)
        tree.root!.left!.left = Node(item: 2)
        tree.root!.right = Node(item: 8)
        tree.root!.right!.right = Node(item: 5)
        tree.root!.right!.left = Node(item: 4)
        tree.root!.left!.right = Node(item: 3)
        tree.root!.left!.left!.left = Node(item: 19)
        tree.root!.right!.right!.right = Node(item: 10)
        print("\n Before convert", terminator: "")
        print("\n In-order Data : ", terminator: "")
        tree.inorder(tree.root)
        // Transform into mirror tree
        tree.mirrorTree(tree.root)
        /*
            Mirror Tree
            --------------
                 1
               /   \
              8     6
             / \   / \
            5   4 3   2
           /           \
          10            19
                     
        */
        print("\n After convert", terminator: "")
        print("\n In-order Data : ", terminator: "")
        tree.inorder(tree.root)
    }
}

BinaryTree.main()


