

func fibNaive(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibNaive(n - 1) + fibNaive(n - 2)
    }
}

fibNaive(0) // 0
fibNaive(1) // 1
fibNaive(2) // 1
fibNaive(3) // 2
fibNaive(4) // 3
fibNaive(5) // 5

fibNaive(6) // 8

//fibNaive(50) //expensive calculation








//MARK: - Memoization

var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    
    if n == 1 {
        return 1
    }
    
    if let result = memo[n] { return result }
    
    memo[n] = fib(n - 1) + fib(n - 2)
    
    return memo[n]!
}


fib(0) // 0
fib(1) // 1
fib(2) // 1
fib(3) // 2
fib(4) // 3
fib(5) // 5

fib(6) // 8

fib(50) // 8
