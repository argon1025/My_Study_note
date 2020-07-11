---
title: NPM 기본 명령어
date: 2020-01-26 23:43:37
---
## NPM 사용법

NPM 버전 확인  
`$ npm --version`

NPM 업데이트  
`sudo npm install npm -g`

NPM 모듈 다운로드 - 로컬  
`$npm install <모듈 이름>`

모듈 제거  
`$ npm uninstall express`

글로벌 모듈 제거  
`$ npm uninstall -g express`

모듈 업데이트  
`$ npm update express`

설치된 글로벌 모듈 조회  
`$npm ls -g --depth=0`

---

## NPM 모듈 글로벌 설치방법

NPM 모듈 다운로드 - 글로벌  
`$ npm install -g express`

프로젝트 폴더로 이동  
`$ cd [local path]`

NPM Link 후 프로젝트에서 require  
`$ npm link express`

---

참고링크

[NPM 모듈 목록](https://npmsearch.com/)

[NPM 홈페이지](https://www.npmjs.com/)