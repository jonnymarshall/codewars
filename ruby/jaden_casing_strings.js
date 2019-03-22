String.prototype.toJadenCase = function () {
  var splitWords = this.split(' ');
  joinedWords = [];
  splitWords.forEach((word) => {
    joinedWords.push(word.charAt(0).toUpperCase() + word.slice(1));
  })
  return joinedWords.join(" ");
};

var str = "How can mirrors be real if our eyes aren't real";
str.toJadenCase();
