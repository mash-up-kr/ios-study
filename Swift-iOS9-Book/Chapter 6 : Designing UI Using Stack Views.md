```
스터디 진행 : 2016년 2월 21일, 이설희
최종 작성자 : 이설희
최초 작성일 : 2016년 2월 21일
마지막 수정 : 2016년 2월 28일, 이설희
```


#Chapter 6 : Designing UI Using Stack Views

##0. 참고 사이트
이 문서는 대략적인 stackview에 대해 정리했습니다. 자세한 것은 밑에 url를 참고해 주세요.<br>
http://www.appcoda.com/stack-views-intro/<br><br>


##1. Stack View?

![](http://www.thinkandbuild.it/wp-content/uploads/2015/08/Axis.png)

: 여러 뷰들을 수평 또는 수직으로 배치하는 인터페이스입니다.<br>

<br><br>

##2. Adding Stack Views (2가지 방법)

###1) From the Object Library 
![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-1-fs8.png)

 object library에서 StackView를 view controller로 끌어 옵니다. <br>
 그 다음 ImageView들을 StackView으로 넣습니다. <br>
 그러면 자동으로 ImageView들이 위에서 아래로 수직적으로 배치됩니다. <br>

 
###2) Click the Stack button in the layout bar
![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-11.gif)
command 키를 누른 채로 object들을 선택한 후 layout bar에 있는 stack button을 클릭합니다.<br>

<br><br>


##3. Defining Layout Constraints for the Stack View

StackView는 개발자들이 일일이 object들의 layout constraint들을 정의하는 수고를 줄였습니다.<br>
StackView에 대한 layout constraint만 정의하면 됩니다.<br>
<br><br>



##4. Setting the Properties of Stack Views
![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-6-fs8.png)

**Axis** - horizontal 또는 vertical으로 배정 방향을 결정합니다. <br>
**Alignment** - 뷰들을 어떻게 정렬할지 결정합니다. <br>
**Distribution** -뷰들의 크기를 어떻게 할지 결정합니다. <br>
**Spacing** - stack view와 뷰들의 최소 간격을 결정합니다.<br>
<br><br>

##5. Adapting Stack Views Using Size Classes

![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-17-2.png)
![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-18.png)
아이폰을 가로 방향으로 돌릴때 이미지들을 수직이 아닌 수평으로 정렬하고 싶습니다.<br>
이때 우리는 Size Classes를 사용하여 stack view adaptive를 만듭니다.<br> 

![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-19-fs8.png)
 *the iOS devices and their corresponding size classes*


![](http://www.appcoda.com/wp-content/uploads/2015/07/stackview-20.gif)
Axis 옵션에서 + 버튼을 클릭합니다.<br>
Any Width > Compact height를 클릭하고 axis의 size class를 Horizontal로 바꿉니다.<br>
<br><br>
