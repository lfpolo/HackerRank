// https://www.hackerrank.com/challenges/bfsshortreach/problem

import Foundation

func buildGraph(edges: [[Int]]) -> [Int : [Int]] {
    var graph : [Int : [Int]] = [:]
    
    for e in edges {
        if graph[e[0]] == nil {
            graph[e[0]] = []
        }
        
        if graph[e[1]] == nil {
            graph[e[1]] = []
        }
        
        graph[e[0]]?.append(e[1])
        graph[e[1]]?.append(e[0])
    }
    
    return graph
}
    
public func bfs(n: Int, m: Int, edges: [[Int]], s: Int) -> [Int] {
    var queue = [(s, 0)]
    var result : [Int] = Array(repeating: -1, count: n)
    let graph = buildGraph(edges: edges)
    
    var visitedNodes : Set<Int> = []
    visitedNodes.insert(s)
   
    while queue.count > 0 {
        let item = queue.removeFirst()

        result[item.0 - 1] = item.1
        
        if let neighbours = graph[item.0] {
            for neighbour in neighbours {
                if !visitedNodes.contains(neighbour) {
                    queue.append((neighbour, item.1 + 6))
                    visitedNodes.insert(neighbour)
                }
            }
        }
    }
    
    result.remove(at: s - 1)
    return result
}
