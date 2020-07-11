# DOM

## Find to Tag

### document.getElementsByTagName
태그의 이름을 이용해 여러개의 태그를 유사배열에 담아 반환합니다.
`var test = document.getElementsByTagName('test');`
문서안에있는 모든 테스트 태그를 배열에 담아 반환합니다.

### (tag name[int]).getElementsByTagName
`var test = document.getElementsByTagName('test');`
`var test_test1 =test[0].getElementsByTagName('test1');`
첫번째 테스트 태그에 test1태그가 있을경우 배열에 담아 반환합니다.

### document.getElementsByClassName
var lis = document.getElementsByClassName('active');
클래스의 값으로 객체를 조회하여 반환한다

### document.getElementById
var li = document.getElementById('active');
id값을 기준으로 객체를 조회하여 반환한다 성능면에서 가장 우수하다

### document.querySelector
var li = document.querySelector('.active');
var li = document.querySelector('li');
CSS선택자 문법으로 해당되는 객체를 하나만 조회하여 리턴한다

### document.querySelectorAll
document.querySelectorAll('li');
CSS선택자 문법으로 해당되는 객체를 모두 조회하여 유사배열로 리턴한다