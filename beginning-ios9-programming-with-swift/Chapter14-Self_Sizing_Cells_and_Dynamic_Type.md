#Self Sizing Cells and Dynamic Type


self sizeing cell을 하는 절차

prototype cell에 auto layout을 적용한다
estimatedRowHeigth의 값을 구체적으로 적는다
rowHeight값을 정한다

##prototype cell에 auto layout을 적용한다


![image](http://www.whopawho.org/ISO%20Learning/images/selfsizingcell/selfsizingcell-2.png)

##self sizing cell을 가능하게 한다


viewDidLoad 함수에 tableview.estimatedRowHeigth 의 값을 입력하고 rowHeight 프로퍼티에UITableViewAutomaticDimension 을 넣는다.

이것은 디폴트 row hieght을 의미한다

##label의 line속성을 0으로 한다


![](http://www.whopawho.org/ISO%20Learning/images/selfsizingcell/selfsizingcell-3.png
)

##여백 constraints를 추가한다


콘솔창을 보면 에러가 있을 것이다 그리고 사이즈가 알맞지 않을 수도 있다. 

이것을 해결하기 위해서 cell에 더 constraints를 추가해야한다

![](http://www.whopawho.org/ISO%20Learning/images/selfsizingcell/selfsizingcell-6.png)


##Dynamic Type

사용자는 핸드폰에서 직접 글씨 크기를 정할 수 있다. 이것을 해당 어플리케이션에 적용하기 위해서 정해진 폰트 대신에 Dynamic type 을 채택해야한다 

![](http://www.whopawho.org/ISO%20Learning/images/selfsizingcell/selfsizingcell-10.png)