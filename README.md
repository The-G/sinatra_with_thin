# Practice CRUD in sinatra with thin 

#### What is ORM
    - "Object-relational mapping' (ORM, O/RM, and O/R mapping) in computer software is 
    a programming technique for converting data between incompatible type systems 
    in object-oriented programming languages.

gem install sinatra 함!
gem install thin!
ruby app.rb -o $IP -p $PORT # Run sinatra server using this

- can explain sinatra and thin simply
apache tomcat : jsp = thin : sinatra

Practice 
- CREATE
1. /create
2. save data in /create to csv file
3. view complete message 

---

sinatra_crud # CRUD 한다!!!

ORM 개념 봄!!, 프로그래밍 언어로 database를 조작할 수 있게 해주는것 ORM!!!
“OOP 언어와 데이터를 다루는 RDBMS 와의 상이한 시스템을 매핑하여, 쉽게 데이터 관련 OOP 프로그래밍을 쉽게 하도록 하기 위한 기술이다.”
SQL을 쌩으로 쓰는 곳이 별로 없다. ORM 쓴다. 기술면접에도 나오고!!

sinatra_crud console에서 한 작업!!
gem install sinatra 함!
gem install thin!

ip에 대해서 이야기하심!! 도메인은 ip를 대체한 것 뿐이지!!
ruby app.rb -o $IP -p $PORT #이걸로 console에서 run 돌린다!!
기존 아이피와 PORT를 쓰기 위해서!!!

- 서버 내부에서 일어나는 일!
java와 했던 apach tomcat이 하는 역할은, url을 분석해 준다.
apache tomcat : jsp = thin : sinatra

실습
- CREATE
1. /create
2. /create에서는 csv를 통해 글들을 저장한다.
3. /create 페이지에서는 작성완료 메세지.

이후는 version문제...

일단 sqlite로 한다.

berkeley database 만드는 수업 있다!! 궁금하면 들어봐!

sqlite, 파일 하나로 모든 것을 관리한다!!

sinatra sqlite datamapper 검색하심!!

gem install dm-sqlite-adapter 필요하지!
gem install data_mapper

gem install 복수로 설치 가능하다!!
