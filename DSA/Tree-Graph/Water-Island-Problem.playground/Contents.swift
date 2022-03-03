//: Playground - noun: a place where people can play

import UIKit

//Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

//An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

//Input: grid = [
//  ["1","1","1","1","0"],
//  ["1","1","0","1","0"],
//  ["1","1","0","0","0"],
//  ["0","0","0","0","0"]
//]    // Output: 1

//Input: grid = [
//  ["1","1","0","0","0"],
//  ["1","1","0","0","0"],
//  ["0","0","1","0","0"],
//  ["0","0","0","1","1"]
//]  // Output: 3

// Soultion
class Solution {
    func numIslands(_ grid: inout [[Character]]) -> Int {
        let rows = grid.count
        if rows == 0 {
            return 0
        }
        let cols = grid[0].count
        var numberOfIsland = 0
        
        for i in 0..<rows {
            for j in 0..<cols {
                if(grid[i][j] == "1") {
                    markCurrentIsland(&grid, x: i, y: j, r: rows, c: cols)
                    numberOfIsland += 1
                }
            }
        }
        return numberOfIsland
    }
    
    // r,c is boundary case for matrix
    //              (x-1,y) // TOP
    //   //Left        |
    //  (x, y-1) <-- (x,y) --> (x, y+1) // Right
    //                 |
    //              (x+1,y) // Down
    
    func markCurrentIsland(_ grid: inout [[Character]], x : Int,y: Int, r: Int, c : Int) {
        if (x < 0 || x >= r || y < 0 || y >= c || grid[x][y] != "1") {
            return
        }
        
        // Marked as visited cell it can be any value apart from 0,1
        grid[x][y] = "2"
        
        // Make recurisve call in all 4 adjacent directions
        markCurrentIsland(&grid, x: x + 1, y: y, r: r, c: c)   // Down
        markCurrentIsland(&grid, x: x, y: y + 1, r: r, c: c)   // Right
        markCurrentIsland(&grid, x: x - 1, y: y, r: r, c: c)   // TOP
        markCurrentIsland(&grid, x: x, y: y - 1, r: r, c: c)   // Left
    }
}


var grid1 :[[Character]] = [
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","1","1"]
]

// grid 1 output shold be 2
var grid2 :[[Character]] = [
    ["1","1","0","0","1"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
]
// grid 2 output shold be 4

var grid3 :[[Character]] = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
]
let sol = Solution()
print("Number of island grid 1 = \(sol.numIslands(&grid1))")
print("Number of island grid 2 = \(sol.numIslands(&grid2))")
print("Number of island grid 3 = \(sol.numIslands(&grid3))")
