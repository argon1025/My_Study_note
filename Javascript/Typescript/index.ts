// 인터페이스 연습 1번
interface userData{
    name:string,
    age:number,
    address:string|undefined, // string과 undifined 타입 두개 모두 허용한다
    etc?:object, // 선택 속성
}
// 인터페이스 1번 생성
const seongRokLee_1: userData = {name:"leeseongrok", age:25,address:undefined};
// 인터페이스 1번 출력
console.log(seongRokLee_1);

///////////////////////////////////////////////////////////////////////////////////////////////

// 익명 인터페이스
const seongRokLee_2:{name:string,age:number,etc?:boolean} = {name:"leeseongrok",age:1};
console.log(seongRokLee_2);

// 익명 인터페이스를 이용한 함수 작성
function helloWorld_1(info:{type: string,message:string,errorCode:number}):string{
    return `${info.type} ${info.message} ${info.errorCode}`
}
console.log(helloWorld_1({type:"systemLog",message:"helloworld!",errorCode:1}));
///////////////////////////////////////////////////////////////////////////////////////////////

//클래스
class Person{
    public name: string|undefined //전체 액세스 허용
    private age: number|undefined //클래스 내에서만 액세스 가능
    protected etc?: object // 하위 클래스에서만 액세스 가능
    constructor(){
        this.age = 25;
    }
}
let seongRokLee_3 = new Person()
seongRokLee_3.name = "typescript";
console.log(seongRokLee_3);