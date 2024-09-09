/**
 * @param {number[]} bills
 * @return {boolean}
 */
var lemonadeChange = function(bills) {
    let fiveDollars = 0 ;
    let tenDollars = 0 ;
    for (let i = 0; i<= bills.length ; i++){
        if (bills[i] === 5){
            fiveDollars++;
        }
        else if (bills[i] === 10){
            if (fiveDollars > 0) {
            fiveDollars--;
            tenDollars++;
            }
            else {
                return false ;
            }
            }
        else if (bills[i] === 20){
            if (fiveDollars > 0 && tenDollars > 0){
                fiveDollars--;
                tenDollars--;
            }
            else if (fiveDollars >= 3){
                fiveDollars -= 3;
            } 
            else {
                return false ;
            }
        }
        
    }
    return true ;
}
const z = lemonadeChange([5,5,10,10,20]);
console.log(z)