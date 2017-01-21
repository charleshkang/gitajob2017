

import UIKit

enum State {
    case Undiscovered
    case Discovered
    case Finished
}

class Vertex {
    var name : String
    var state: State
    init(name : String) {
        self.name = name
        self.state = .Undiscovered
    }
}

class Edge {
    var vertices: (Vertex, Vertex)
    
    init(vertex1: Vertex, vertex2: Vertex) {
        self.vertices = (vertex1, vertex2)
    }
    
    func contains(vertex: Vertex) -> Bool {
        return vertices.0 == vertex || vertices.1 == vertex
    }
    
    func getVertexPairFor(vertex vertex: Vertex) -> Vertex? {
        if vertex == vertices.0 {
            return vertices.1
        }
        if vertex == vertices.1 {
            return vertices.0
        }
        return nil
    }
}

func ==(lhs: Vertex, rhs: Vertex) -> Bool {
    return lhs.name == rhs.name
}

class Graph {
    var vertices: [Vertex]
    var edges: [Edge]
    
    init(vertices: [Vertex], edges: [Edge]) {
        self.vertices = vertices
        self.edges = edges
    }
    
}

var A = Vertex(name: "A")
var B = Vertex(name: "B")
var C = Vertex(name: "C")
var D = Vertex(name: "D")
var E = Vertex(name: "E")

var A_B = Edge(vertex1: A, vertex2: B)
var A_D = Edge(vertex1: A, vertex2: D)
var A_E = Edge(vertex1: A, vertex2: E)
var E_C = Edge(vertex1: E, vertex2: C)
var D_C = Edge(vertex1: D, vertex2: C)

var verticeList = [A,B,C,D,E]
var edgeList = [A_B,A_D,A_E,E_C,D_C]

var graph = Graph(vertices: verticeList, edges: edgeList)

// BFS
// Enqueue starting point
// mark starting point as discovered
// enqueue all adjacent nodes that are undiscovered
// mark enqueued nodes as discovered
// dequeue and mark as finished
// go to next item in queue if queue not empty

func BFS_print_nodes(g: Graph, startingVertex: Vertex) {
    var queue = [Vertex]()
    // 1. enqueue starting point
    queue.append(startingVertex)
    // 2. mark starting point as discovered
    startingVertex.state = .Discovered
    
    while(!queue.isEmpty) {             //stop when queue isempty
        let v = queue.removeFirst()     //get item from queue
        for edge in g.edges {           // get adjacent vertices
            if edge.contains(v) {
                let neighborV = edge.getVertexPairFor(vertex: v)!
                //check that adjacent vertices have not been visited
                if neighborV.state == .Undiscovered {
                    //append undiscovered neighbors to the queue
                    queue.append(neighborV)
                    // mark appended neighbors as discovered
                    neighborV.state = .Discovered
                }
            }
        }
        print(v.name)
        //mark vertex as finished
        v.state = .Finished
    }
}

