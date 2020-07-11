
# NodeJS의 Pm2 모듈 사용법
실행중인 Node.js 애플리케이션을 관리하는 프로세스 매니저 PM2의 사용법

`$npm install pm2 -g`  
pm2 모듈을 설치합니다

`$ pm2 start [name] --watch`  
pm2 모듈로 애플리케이션을 시작합니다.
--watch 옵션을 주면 애플리케이션에 변동사항이 있을시에 자동으로 재시작합니다.

`$ pm2 monit`  
모니터링 시작

`$ pm2 stop [name]`  
관리하는 애플리케이션을 종료합니다

`$ pm2 log`
애플리케이션에 문제가있거나 재부팅기록을 조회할 수 있습니다.