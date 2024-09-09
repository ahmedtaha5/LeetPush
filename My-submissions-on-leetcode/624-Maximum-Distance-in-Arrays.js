/**
 * @param {number[][]} arrays
 * @return {number}
 */
function maxDistance(arrays) {
    // Initialize the first array's first and last values
    let minVal = arrays[0][0];
    let maxVal = arrays[0][arrays[0].length - 1];
    let maxDistance = 0;

    // Iterate through the remaining arrays
    for (let i = 1; i < arrays.length; i++) {
        const currentArray = arrays[i];
        const currentMin = currentArray[0];
        const currentMax = currentArray[currentArray.length - 1];

        // Calculate distances with the current array's first and last elements
        maxDistance = Math.max(
            maxDistance,
            Math.abs(currentMax - minVal),
            Math.abs(maxVal - currentMin)
        );

        // Update the global min and max values
        minVal = Math.min(minVal, currentMin);
        maxVal = Math.max(maxVal, currentMax);
    }

    return maxDistance;
}