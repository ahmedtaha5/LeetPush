/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */

var filter = function(arr, fn) {
    var greaterThan10 = function(n) {
        return n > 10;
    };
    const filtered = arr.filter(greaterThan10);
    return filtered;
};
const a = filter([0,10,20,30]);
console.log(a); // Output: [20, 30]


//2 >
var filter = function(arr, fn) {
   return arr.filter((x, i) => fn(x,i));
};



//3 >
var plusOne = function(arr) {
    for (let i=0 ; arr.length ; i++) {
        if (arr[i] + 1 == 0){
            arr.splice(i,1);
            return arr;
        }
    }
    return arr;
    }
// const a = plusOne([-2,-1,0,2,3]);
// console.log(a);