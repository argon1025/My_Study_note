// Array
let testArray1:number[] = [1,2,3,4];
let testArray2:(string|number)[] = [1,2,3,"lol"];

// Tuple
let testTuple:[string,number] = ["lol",1234];

// Enum
enum testEnum{
    kakao, // 0
    daum, // 1
    naver // 2
};
enum testEnum1{
    kakao=23,
    daum=24,
    naver // 24+1
};

console.log(testEnum1.naver);
console.log(testEnum1[23]);

// -----------------------------------------------------
function testFunc(id:number,name:string):object{
    console.log(`${id}, ${name}`);
    return {id, name};
}
let result:object = testFunc(1,"lol");

// -----------------------------------------------------

let testExpression:(n:number)=> string = function(n:number){
return testEnum1[n];
}
console.log(testExpression(23));

// -----------------------------------------------------
let testObject:{version:number,desc:string,getVersion:()=>void,[propTest:string]:any} = {
    version:1,
    desc:"lol",
    getVersion(){
        return this.version;
    },
    test:1,
    test1:2,
    test3:"123"
};

// ------------------------------------------------------
type userData = {
    name:string,
    age:number,
    [elsename:string]:any
}
let Leeseongrok:userData = {
    name:"leeseongrok",
    age:24
}