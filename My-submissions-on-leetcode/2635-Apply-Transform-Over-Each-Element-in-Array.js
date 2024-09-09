// 1 >

var map = function(arr, fn) {
    let result = [];
    for(let i = 0 ; i< arr.length ; i++) {
        result.push(fn(arr[i]));
    }
    return result ;
};
var plusOne = function(n) {
        return n+1 ;
    }
// const a = map([1,2,3], plusOne);
// console.log(a);

///////////////////////////////////////
// 2 >

var map = function(arr, fn) {
    let res = [];
    for(let i = 0 ; i< arr.length ; i++) {
        res.push(fn(arr[i] , i)); // pass n , i to the function
    }
    return res ;
}

var plusI = function(n, i) {
    return n + i ;
}
const a = map([1,2,3], plusI) ;
console.log(a);

