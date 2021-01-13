var B = function(){
    console.log('B');
}

function A(callback){ //함수의 인자로 함수를 받아온다
    console.log('A')
    callback();
}

A(B);