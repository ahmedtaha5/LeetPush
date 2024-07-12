/**
 * @return {Function}
 */
const createHelloWorld = function() {
    
    return function(...args) {
        return "Hello World"
    }
};
const helloWorld = createHelloWorld();
console.log(helloWorld());

/**
 * const f = createHelloWorld();
 * f(); // "Hello World"
 */