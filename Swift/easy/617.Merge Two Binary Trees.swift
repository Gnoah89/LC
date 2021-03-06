//
//  merge.swift
//  Demo
//
//  Created by admin on 2017/12/25.
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 
 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
 
 Example 1:
 
 Input:
 Tree 1                     Tree 2
    1                         2
   / \                       / \
  3   2                     1   3
 /                           \   \
5                             4   7
 Output:
 Merged tree:
     3
    / \
   4   5
  / \   \
 5   4   7
 
 Note: The merging process must start from the root nodes of both trees.
 
 https://leetcode.com/problems/merge-two-binary-trees/description/
 */

// public class TreeNode {
//     public var val : Int
//     public var left : TreeNode?
//     public var right : TreeNode?
//     public init(_ val : Int) {
//         self.val = val
//         self.left = nil
//         self.right = nil
//     }
// }


extension Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        guard let t1 = t1 else {
            return t2
        }
        
        guard let t2 = t2 else {
            return t1
        }
        
        let treeNode = TreeNode(t1.val  + t2.val)
        treeNode.left = mergeTrees(t1.left, t2.left)
        treeNode.right = mergeTrees(t1.right, t2.right)
        
        return treeNode
    }
}
