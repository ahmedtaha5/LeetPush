var expect = function(value) {
    return {
        toBe: function(val1) {
            if (value === val1) {
                return true;
            } else {
                throw new Error('Not Equal');
            }
        },
        notToBe: function(val2) {
            if (value !== val2) {
                return true;
            } else {
                throw new Error('Equal');
            }
        }
    };
};

// Usage Examples:
// console.log(expect(5).toBe(5)); // true
// console.log(expect(5).notToBe(5)); // throws "Equal"