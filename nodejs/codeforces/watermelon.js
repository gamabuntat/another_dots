let str = '123abc12abc';
let re = /abc/g;

let result = re.exec(str);

if (result !== null) {
    console.log(result.index);
    console.log(result[0]);
    console.log(re.lastIndex);
} else {
    console.log('неудача')
}
