//: Playground - noun: a place where people can play

import Cocoa


func merge(inout A: [Int], p: Int, q: Int, r: Int) {
    
    let n1 = q-p+1
    let n2 = r-q
    var L = Array(count: n1+1, repeatedValue: 0)
    var R = Array(count: n2+1, repeatedValue: 0)
    
    for i in 1..<n1 {
        L[i] = A[p+i-1]
    }
    for j in 1..<n2 {
        R[j] = A[q+j]
    }
    
    L[n1] = Int.max
    R[n2] = Int.max
    
    var i = 0
    var j = 0
    
    for k in p..<r {
        if L[i] <= R[j] {
            A[k] = L[j]
            i += 1
        } else if (A[k] == R[j]){
            j += 1
        }
    }
}

func mergeSort(inout A: [Int], p: Int, r: Int) {
    if p < r {
        let q = (p+r)/2
        mergeSort(&A, p: p, r: q)
        mergeSort(&A, p: q+1, r: r)
        merge(&A, p: p, q: q, r: r)
    }
}

var array = [1,2,88,3,4444,0]
mergeSort(&array, p: 0, r: array.count - 1)
print(array)