//: Playground - noun: a place where people can play

var A = [5, 2, 4, 6, 1, 3]

for j in 1..<A.count {
    var key = A[j]
    var i = j - 1
    while i >= 0 && A[i] > key {
        A[i+1] = A[i]
        i -= 1
    }
    A[i+1] = key
}

A
