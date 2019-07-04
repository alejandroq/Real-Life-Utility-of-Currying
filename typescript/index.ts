/** Example 1: Addition */
const add = (a: number) => (b: number) => a + b;
const addThree = add(3);
console.log(addThree(4));

/** Example 2: Prefixing a String */
const addPrefix = (a: string) => (b: string) => `[${a}] ${b}`;
const prefixWithWarning = addPrefix('WARNING');
console.log(prefixWithWarning('All is well.'))

/**
 * Output:
 * > $ node index.js
 * > 7
[* > WARNING] All is well.
 */
