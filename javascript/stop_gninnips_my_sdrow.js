const spinWords = words => {
  //TODO Have fun :)
  let reversed = []
  words.split(" ").forEach((word) => {
    if (word.length > 4) {
      reversed.push(word.split("").reverse().join(""));
    } else {
    reversed.push(word);
    }
  });
  return reversed.join(" ");
}

console.log(spinWords("Hey fellow warriors"));
// "Hey wollef sroirraw"
