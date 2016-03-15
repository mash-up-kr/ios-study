```
스터디 진행 : 2016년 2월 21일, 박태현
최조 작성자 : 박태현
최초 작성일 : 2016년 2월 21일
마지막 수정 : 2016년 2월 21일, 박태현
```

# 3강 Hello World! Build Your First App Using Swift

## 0. Overview
**Hello World Application 만들기**

## 1. 첫번째 앱
첫번째로 만들어 볼 어플리케이션은 아래 이미지와 같이 "Hello World" 버튼을 누르면Welcome 메세지를 보여주는 간단한 앱이다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-1.png)
<br>
<center>
*figure HelloWorld App*
</center>

## 2. 프로젝트 만들기
첫번째로 Xcode를 실행하자. 아래 이미지와 같이 Welcome 화면이 나오면 **"Create a new Xcode Project"**를 선택하여 새로운 프로젝트를 만들자.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-2.png)
<br>
<center>
*figure Xcode - Welcome Dialog*
</center>

Xcode는 다양한 프로젝트 템플릿을 보여줄것이다. iOS > "Single View Application"을 선택한다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-3.png)
<br>
<center>
*figure Xcode - Welcome Dialog*
</center>

"Next"를 누르자

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-4.png)
<br>
<center>
*figure Xcode - Welcome Dialog*
</center>

####옵션 설명
* **Product Name**: HelloWorld – 앱이름
* **Organization Name**: AppCoda – 회사또는 단체 이름
* **Organization Identifier**: com.appcoda – 도메인 이름(만약 도메인을 가지고 있다면 도메인을 적고, 없을경우 예시와 같이 com.xxx 식으로 적으면 된다.)
* **Bundle Identifier**: com.appcoda.HelloWorld - 앱의 식별자로써 역활을 하게되고, 자동으로 생성된다.
* **Language**: Swift – 언어 선택
* **Devices**: iPhone – 타겟 디바이스 선택
* **Use Core Data**: [unchecked] – 코어 데이터를 사용할경우 체크한다(이번 프로젝트에서는 사용하지 않는다.)
* **Include Unit Tests**: [unchecked] – Unit Test를 사용할경우 체크한다(이번 프로젝트에서는 사용하지 않는다.)
* **Include UI Tests**: [unchecked] – UI Test를 사용할경우 체크한다.(이번 프로젝트에서는 사용하지 않는다.)

옵션을 기입했으면 "Next"를 누르자

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-5.png)
<br>
<center>
*figure Xcode - Choose directory*
</center>

프로젝트가 생성될 디렉토리를 설정한다.

## 3. Xcode 툴 살펴보기
본격적으로 코딩에 들어가기 앞서 Xcode workspace 환경을 잠시 살표보자.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-7.png)
<br>
<center>
*figure Xcode - Welcome Dialog*
</center>

* **Project Navigator** - 화면 왼쪽에 부분에 위치해있고, 모든 프로젝트의 파일을 찾을수 있다.
* **Editor area** - 화면 가운데 위치해있고, 소스코드 파일, user interface를 이곳에서 편집할수 있다.
* **utility area** - 화면 오른쪽에 위치해있고, 이곳에서 파일의 프로퍼티를 표시하거나, ui에 관한 속성을 변경하고, Quick Help를 사용할수 있다.

만약 3개의 분할된 화면에서 어느것이 보이지 않는다면,
![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-9.png)
<br>
위의 이미지의 오른쪽부분 버튼들을 통해서 활성화/비활성화 할수 있다.

## 4. 처음으로 앱 Run해보기
아직 코드를 한줄도 적지 않았지만, 앱을 빌드 해보자. Xcode에 빌트인된 시뮬레이터를 통해 앱을 빌드해보자.
![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-10.png)
<br>

위의 이미지에서 Run버튼을 누르게되면 프로젝트가 빌드, 런이 된다. 오른쪽에 simulator를 고를수있고, 만약 본인의 iPhone이 연결되어있다면, 아이폰으로도 실행 할수 있다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-11.png)
<br>

위의 이미지와 같이 실행되면 성공한거다! 화면에 아무것도 없는 이유는 아직 우리는 ui, 소스코드를 적지 않았기때문에 아무것도 안나타난다.

## 5. UI 디자인하기
이제 UI를 구성해보자!
<br>
Poject Navigator에서 **Main.storyboard**를 선택한다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-12.png)
<br>

## 5. 버튼 추가하기

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-15.png)
<br>

위의 이미지와 같이 Object Library에서 버튼을 드래그앤 드랍해서 View Controller 화면 가운데 배치한다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-16.png)
<br>

버튼을 더블클릭하여 버튼 Test를 "Hello World"로 변경한다.

## 6.Hello World 버튼 코딩하기
버튼의 눌럿을때 이벤트를 제어하는 코드를 적어보자.
일단 Project Navigator에서 ViewController.swift를 클릭한다.
ViewController클래스 안에 다음과 같이 코드를 적는다.

```
@IBAction func showMessage() {
     let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.Alert)
     alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
     self.presentViewController(alertController, animated: true, completion: nil)

}
```

ViewController.swift 파일은 다음과같이 코딩이 되어있어야한다.

```
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)

    }
}
```
## 7. 코드와 UI연결하기
우리는 버튼의 액션을 제어하는 코드를 적었지만, 아직 우리가 만든 "Hello World"버튼과 연결하지 않았다.
<br>
**Main.storyboard**파일로 다시 돌아가자.
Hello World버튼을 활성화 한상태에서 **ctr + drag**를 하여 아래 이미지와 같이 ViewController에 연결하면 우리가 만든 showMessage() 메소드가 나오고 연결하면 된다.

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-18.png)
<br>


## 8. 테스트 해보기

![](http://www.appcoda.com/learnswift/images/chapter-1/helloworld-19.png)
<br>

위의 이미지와 같이 컨파일되면 성공한것이다.