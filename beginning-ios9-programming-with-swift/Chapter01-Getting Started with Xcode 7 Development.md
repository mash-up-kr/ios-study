```
스터디 진행 : 2016년 2월 21일, 박태현
최종 작성자 : 박태현
최초 작성일 : 2016년 2월 21일
마지막 수정 : 2016년 2월 21일, 박태현
```

# 1강 Getting Started with Xcode 7 Development

## 0. Overview
**iOS 어플리케이션 개발을위한 가장 기본적으로 구축해야할 것들을 정리함**

## 1. 필수 사항
iOS(또는 아이패드) 어플리케이션을 개발하기 위해서는 맥OS X가 탑제된 맥이 필요하다. 아이폰 개발을 위한 기본적인 요구사항이다.

## 2. 애플 개발자 센터 등록하기
유로 서비스인 iOS Developer Program와 달리 Apple Developer는 누구든지 공짜로 등록할수 있다. Apple Developer에 가입함으로써, 개발자는 Xcode를 다운받을수 있고, iOS SDK문서, 개발 비디오(애플에서 제작한)와 같은 기술 리소스를 지원 받을수 있다.

<https://developer.apple.com/register/> 해당 링크를 통해서 개발자는 개발자 센터에 등록할수 있다. 

## 3. Xcode 설치하기
Xcode는 맥OS에서 iOS개발을 위한 다운받을수 있는 애플에서 직접 제작한 유일한 툴이다. Xcode는 앱 개발을 시작하는데 모든것을 지원한다.
####Xcode가 지원하는 리스트
* 최신 버전의 iOS SDK(short for Software Development Kit)
* 빌트인이된 소스코드 에디터
* user interface(UI) 에디터
* 디버깅 툴
* iPhone, iPade 시뮬레이터
* 사용중인 iPhone과 연결하기

Xcode를 다운받기 위해서는 <https://itunes.apple.com/kr/app/xcode/id497799835?mt=12> 해당 링크를 통해서 공짜로 다운받을수 있다.

![](http://www.appcoda.com/learnswift/images/getting-started-2.png)
<br>
*figure : Xcode icon in the Launchpad*

## 4. Apple Developer Program가입 하기(옵션)
1년에 99$인 Apple Developer Program은 개발자에게 필수사항이 아닌 옵션이다. 해당 프로그램을 가입함으로써 개발자는 앱을 스토어에 릴리즈하기 위해서는 이 프로그램 가입이 필수로 되어있어야 한다.
기존에는 해당 프로그램을 가입하지 않으면 시뮬레이터에서만 앱을 Run할수 있었지만, 애플이 정책을 바꾸어 해당 프로그램에 가입하지 않아도, 개발자는 시뮬레이터는 물론 자신이 소유한 iOS 디바이스에서 만든 앱을 테스트할수 있다.
<https://developer.apple.com/programs/> 해당 링크를 통해서 Apple Developer Program에 가입할수 있다.
