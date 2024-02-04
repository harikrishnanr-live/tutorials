const ford = {
  branch: "ford",
  model: "fiesta"
}

const tesla = {
  branch: "tesla",
  model: "tesla model"
}

// Normal 
// module.exports = ford;

// as object data
// exports.data = ford;

// method 3, exporting multiple
exports.data = { ford, tesla }
