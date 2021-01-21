

async function async_1(){
    //throw 'error'; //reject
    return 'hi?' //resolve
}
async function async_2(){
    //throw 'error'; //reject
    return 'hi?' //resolve
}

async function async_catch(){
    try{
        const val1 = await async_1();
        const val2 = await async_2();
    }catch{
        console.log(`error!`)
    }
}

//병렬처리
async function no_await(){
    const val1 = async_1(); //두개를 동시에 시작
    const val2 = async_2();

    const val1_1 = await val1; // 동기화
    const val1_2 = await val2;
}

//병렬처리 개선
function no_await2(){
    return Promise.all([async_1(),async_2()])
    .then(console.log('done!'));
}
/*
async_1()
.then(val => console.log(val))
.catch(val => console.log(val));
*/
//async_catch();
no_await2();