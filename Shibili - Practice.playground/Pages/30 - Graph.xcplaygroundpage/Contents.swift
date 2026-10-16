//Checkout images on source file


/*
  ___               _
 / __|_ _ __ _ _ __| |_  ___
| (_ | '_/ _` | '_ \ ' \(_-<
 \___|_| \__,_| .__/_||_/__/
              |_|
 
z
                ┌────┐           ┌────┐      ┌────┐
    ┌──────────▶│ 5  │ ──────────▶ 2  │ ─────▶ 7  │
    │           └────┘           └────┘      └────┘
    │              │
    │              └───────────┐
    │                          │
    │                          ▼
  ┌────┐          ┌────┐     ┌────┐
  │ 1  │◀──────── │ 0  │◀────│ 3  │
  └────┘          └────┘     └────┘
    │               ▲
    ▼               │
  ┌────┐          ┌────┐
  │ 4  │─────────▶│  6 │
  └────┘          └────┘
 
 
 */

class Graph {
    let V: Int                          // number of vertices
    var adjList = [[Int]]()             // adjacency list
    
    init(_ V: Int) {
        self.V = V
        for _ in 0 ..< V {
            adjList.append([Int]())     // create empty array of adjacency lists
        }
    }
    
    func addEdge(v: Int, w: Int) {
        adjList[v].append(w)
    }
    
    // BFS traversal from a given source s
    func BFS(s: Int) -> [Int] {
        var result = [Int]()
        
        // Mark all vertices as not visited
        var visited = adjList.map { _ in false }
        
        // Create BFS Queue
        var queue = Queue<Int>()
        
        // Mark first vertex as visited and enqueue
        visited[s] = true
        result.append(s)
        queue.enqueue(s)
        
        while !queue.isEmpty {
            let current = queue.dequeue()!
            
            // Get all the adjacent vertices of the current vertex
            // If adjacent has not being visited, mark visited and enqueue
            
            for w in adjList[current] {
                if visited[w] == false {
                    visited[w] = true
                    result.append(w)
                    queue.enqueue(w)
                }
            }
        }
        
        return result
    }
}



let graph = Graph(8)
graph.addEdge(v: 0, w: 1)
graph.addEdge(v: 1, w: 4)
graph.addEdge(v: 4, w: 6)
graph.addEdge(v: 6, w: 0)
graph.addEdge(v: 1, w: 5)
graph.addEdge(v: 5, w: 3)
graph.addEdge(v: 3, w: 0)
graph.addEdge(v: 5, w: 2)
graph.addEdge(v: 2, w: 7)


graph.BFS(s: 0)
