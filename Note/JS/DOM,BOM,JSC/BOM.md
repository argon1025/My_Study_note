# BOM


웹브라우저에는 Window라는 최상위 객체가 존재합니다.
alert('Hello world');
window.alert('Hello world');
추후에 작성하는 모든 객체들도 결과적으로는 window에 속하는 메서드가 됩니다.


## 메소드 예시
### alert
alert('hello world');
사용자에게 알림을 출력하는 메소드


### confirm
confirm('confirm?')
사용자의 피드백을 입력받는 메소드


### prompt
prompt('input')
사용자로부터 입력을 받는 메소드


### location
console.log(location.protocol, location.host, location.port, location.pathname, location.search, location.hash)
문서의 위치와 관련한 정보를 얻는 메소드
location.href = 'http://google.co.kr';
로케이션 객체를 직접 제어하여 문서의 위치를 변경할 수 있다


### navigator
웹브라우저의 정보를 제공하는 객체입니다.
  

### window.open
새 창을 생성하는 메소드이고 인자값으로 다양하게 새창을 제어할 수 있다
var test = window.open();
test.close();
같은 도메인일 경우 다른 창에서도 새로운창을 제어할 수 있다
