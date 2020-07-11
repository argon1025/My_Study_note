# setInterval이벤트함수로 Prototype메소드를 호출할때


Prototype메소드를 호출할때  
`setInterval (this.Argon(), 100)`  
이런식으로 Interval 이벤트를 지정하면 처음엔 제대로 실행되나 setInterval로 this 값이 처음과 달라지기 때문에 다음 이벤트가 실행이 안됩니다.

`setInterval(this.Argon.bind(this), 1000);`  
.bind로 오브젝트를 고정해주면해결됩니다.