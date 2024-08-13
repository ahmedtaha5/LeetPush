/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function(s) {
    let stack = [];
    let map = {
        ')': '(',
        '}': '{',
        ']': '['
    };

    for (let char of s) {
        if (map[char]) {
            let topElement = stack.pop();
            if (map[char] !== topElement) {
                return false;
            }
        } else {
            stack.push(char);
        }
    }

    return stack.length === 0;
};

const q = isValid("()[]{}");
console.log(q);  // Output: true

const q2 = isValid("(]");
console.log(q2); // Output: false