/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    const str = x.toString()

    const reservedStr = str.split('').reverse().join('')

    return str === reservedStr
};
// const p = isPalindrome(121);
// console.log(p)