/*
* This program ...
*
* @author  Felipe Garcia Affonso
* @version 1.0
* @since   2021-12-04
*/

import * as readline from 'readline';

function (s: someString) {
    // Some text
    return "some text" + someString;
}

console.log("Some question");

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("", function(answer) {
  console.log("Thank you for your valuable feedback:", answer);
  rl.close();
});
