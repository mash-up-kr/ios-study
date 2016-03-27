```
스터디 진행 : 2016년 3월 27일, 유상현
최종 작성자 : 유상현
최초 작성일 : 2016년 3월 27일
마지막 수정 : 2016년 3월 27일, 유상현
```

#23강 Getting Started with UIWebView and SFSafariViewController

#####웹페이지를 앱에 불러오는 방법들
######1) Mobile Safari</br>
Mobile Safari는 앱을 실행하는 도중 잠시 정지된 채로 원하는 웹컨텐츠를 사파리앱에서 실행하는 방식이다.</br>
######2) UIWebView / WKWebView</br>
UIWebView는 웹컨텐츠를 앱 내부에 보여줄 수 있는 가장 간단한 방법이다. WKWebView는 iOS 8에서 도입되었고, Nitro JavaScript 엔진과 더불어
여러 기능이 추가된 형태의 WebView다.</br>
######3) SFSafariViewController</br>
SFSafariViewController는 iOS9에서 도입된 최신 웹뷰 컨트롤러이다. 기존 방식에서 단지 웹페이지만 보여주었고, 개발자는 prev페이지로 이동
및 브라우저를 커스텀화 시켜야 했지만, SFSafariViewController는 Mobile Safari기능을 제공하여 앱 내부에 커스텀 브라우저를 만들어야
하는 수고를 덜 수 있게 되었다.
</br>
</br>
</br>
#####Mobile Safari를 이용하여 웹페이지 불러오기
```SWIFT
switch indexPath.section {
// Leave us feedback section
  case 0:
    if indexPath.row == 0 {
      if let url = NSURL(string: "http://www.apple.com/itunes/charts/paid-apps/") {
        UIApplication.sharedApplication().openURL(url)
      }
    }
  default:
    break
}
```
######http://www.apple.com/itunes/charts/paid-apps/ url을 사파리로 띄우는 예시
</br>
</br>
#####UIWebView를 통해 웹페이지 불러오기
```SWIFT
if let url = NSURL(string: "http://www.appcoda.com/contact") {
  let request = NSURLRequest(URL: url)
  webView.loadRequest(request)
}
```
######webView를 controller에 추가 한 뒤 http://www.appcoda.com/contact 페이지를 webView에 띄우는 예시
</br>
</br>
#####SFSafariViewController를 통해 웹컨텐츠 보여주기
######1번째 필요 작업
```SWIFT
let safariController = SFSafariViewController(URL: url,
entersReaderIfAvailable: true)
presentViewController(safariController, animated: true, completion: nil)
```
######2번째 필요 작업
```SWIFT
import SafariServices
```
######불러오고자 하는 url을 Safari 방식으로 앱 안에서 불러오는 예시
```SWIFT
if let url = NSURL(string: "http://www.appcoda.com/contact") {
  let safariController = SFSafariViewController(URL: url,
  entersReaderIfAvailable: true)
  presentViewController(safariController, animated: true, completion:
  nil)
}
```
</br>
</br>
####결론
지금까지 웹 컨텐츠를 앱에서 보여줄 수 있는 세가지 방법을 학습했다.</br>
스터디에서 사용된 코드가 포함된 최종 프로젝트 다운 링크 : https://www.dropbox.com/s/k7nukr228tboewr/FoodPinWebView.zip?dl=0
