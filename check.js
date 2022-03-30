const { exit } = require("process");

try {
  const output = require('./output/qa.json');
  const pendingActions = output.errs + output.warnings + output.hints;
  if(pendingActions > 0) {
    console.error("The spec has following issues:");
    console.log(`Errors: ${output.errs}`);
    console.log(`Warnings: ${output.warnings}`);
    console.log(`Hints: ${output.hints}`);
    exit(2);
  }
} catch {
  exit(1);
}