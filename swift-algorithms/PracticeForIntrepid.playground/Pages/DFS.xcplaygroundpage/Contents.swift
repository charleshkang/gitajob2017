//: [Previous](@previous)

import Foundation
import UIKit

// Assume the data struture exists? Ask the interviewer that 

func depthFirstSearch(graph: Graph, source: Node) -> [String] {
    var nodesExplored = [source.label]
    source.visited = true
    
    for edge in source.neighbors {
        if !edge.neighbor.visited { // if children is unvisited
            nodesExplored += depthFirstSearch(graph, source: edge.neighbor) // call the DFS func recursively
        }
    }
    return nodesExplored
}

let graph = Graph()

let nodeA = graph.addNode("a")
let nodeB = graph.addNode("b")
let nodeC = graph.addNode("c")
let nodeD = graph.addNode("d")
let nodeE = graph.addNode("e")
let nodeF = graph.addNode("f")
let nodeG = graph.addNode("g")
let nodeH = graph.addNode("h")

graph.addEdge(nodeA, neighbor: nodeB)
graph.addEdge(nodeA, neighbor: nodeC)
graph.addEdge(nodeB, neighbor: nodeD)
graph.addEdge(nodeB, neighbor: nodeE)
graph.addEdge(nodeC, neighbor: nodeF)
graph.addEdge(nodeC, neighbor: nodeG)
graph.addEdge(nodeE, neighbor: nodeH)
graph.addEdge(nodeE, neighbor: nodeF)
graph.addEdge(nodeF, neighbor: nodeG)

//depthFirstSearch(graph, source: nodeG)

let nodesExplored = depthFirstSearch(graph, source: nodeA)
print(nodesExplored)


