var createCounter = function(init) {
    let counter = init ;
    var increment = function() {
        return ++counter ;
        };
    var reset = function() {
        counter = init ;
        return counter ;
        };
    var decrement = function() {
    return --counter;
    };

    return {increment, reset, decrement} ;
};
const a = createCounter(5);
console.log(`${a.increment()},${a.reset()},${a.decrement()}`);