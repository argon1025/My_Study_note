---
title: Git 기본 명령어
date: 2020-01-26 23:43:37
---
## 기본 용어

> Working Tree 버전으로 만들어지기 전단계
>
> Staging Area 변경사항이 저장소에 커밋되기 전단계
>
> Repository 저장소
>
> branch 복제본

`git config user.name`  
`git config user.email`

**깃 유저 이름과 이메일 설정**

`git config --global user.name 신계정`  
`git config --global user.email 신이메일`  
**전체 프로젝트 폴더에 설정**

`$git init .`  
**현제 경로의 위치에서 버전관리를 시작합니다**  
_"."은 현제위치_

`$git status`  
**현제 프로젝트 상태와 Untracked file을 확인**  
Changes not staged for commit 경우나 Untracked files 경우에도
Staging Area에 올려야지 커밋이 가능합니다

`$git add [파일,.,dir]`  
**Untracked file 파일을 Staging Area에 올려 버전관리를 시작합니다.**

`$git commit -m "메시지"`  
**로컬 저장소에 새로운 버전을 생성합니다**  
Untracked file은 반영되지 않습니다.
-am 옵션 a를 추가할경우 추적된적있는
파일들을 자동으로 add 하고 커밋을 진행합니다.

`$git log [--stat,-p]`  
`$git log --all --graph --oneline`  
**작업한 히스토리를 조회합니다**

`$git diff`  
**버전들의 수정상태를 비교합니다**

`$git reset --hard [커밋아이디]`  
**저장소에 커밋된 마지막 버전으로 하드리셋 합니다**  
커밋아이디를 입력할경우 해당커밋으로 이동하고 상위 버전을 삭제합니다.

`$git checkout [커밋아이디,master,브랜치이름]`  
**헤드를 입력한 커밋아이디로 돌아갑니다**  
master는 제일 최신버전으로 이동합니다.

`$git revert [커밋아이디]`  
**입력한 커밋아이디로 리버트 시킵니다**  
이전 커밋을 삭제하지 않고 현제 커밋을 이전커밋으로 되돌립니다.
사용할때 반드시 역순으로 순서대로 하여야합니다.

`$git branch [이름]`  
**브랜치를 생성합니다**

`$git merge [브랜치명]`  
**현제 있는 헤드에서 지정된 브랜치와 병합합니다**

`$git pull URI`  
**저장소에 있는 내용을 받아옵니다**

`git remote add origin https://github.com/[이름]/gitExample`  
**깃 원격 저장소 주소를 등록합니다**

`git push -u origin master`  
**외부 깃 저장소에 푸시합니다**