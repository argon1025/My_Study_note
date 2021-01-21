/*
//기본적인 프로미스 사용
const promise_1 = new Promise((resolve, reject)=>{
    if(false){
        resolve("hi?")
    }else{
        reject("than...")
    }
})


promise_1
.then((val1) => { //성공 했을 경우
})
.catch(()=>{ // 실패 했을 경우

})
.finally(()=>{ // 무조건 마지막에 실행 해야 하는 경우

})





//프로미스 체이닝
const promise_2 = new Promise((resolve,reject)=>{
    resolve(1);
});

promise_2
.then(val => val+1)
.then(val => {
return new Promise((resolve,reject) =>{
    resolve(val+1)
});
})
.then(val => console.log(val))


*/
//에러 핸들링


function p1(){
    return new Promise((resolve,reject) => {
        if(false){
            resolve(1);
        }else{
            reject();
        }
    })
}

const p2 = val =>
new Promise((resolve,reject) => {
    resolve(val+1)
});

p1()
.then(val => p2(val))
.catch(()=>{return p2(2);})
.then(val => console.log(val));