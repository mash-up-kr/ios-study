```
스터디 진행 : 2016년 3월 12일, 박태현
최종 작성자 : 박태현
최초 작성일 : 2016년 3월 12일
마지막 수정 : 2016년 3월 12일, 박태현
```

# 19강 Introduction to Static Table Views, UIImagePickerController and NSLayoutConstraint

## 0. Overview
**다이나믹 테이블 뷰, 스태틱(정적) 테이블 뷰**

## 1. 차이점
* Dynamic Table View - 셀이 동적으로 생성되는 테이블뷰
* Static Table View - 셀이 고정적인(정적인) 테이블 뷰

**Dynamic Table View**
![](http://cfile30.uf.tistory.com/image/225DCF3F56480E5433FE6E)

<br><br>

**Static Table View**
![](http://cfile29.uf.tistory.com/image/23406A33568E68200D5BF7)

## 3. UIImagePickerController
* 앱에서 아이폰 Photo Library 또는 Camera에 접근할때 사용됨

```
ex)
let imagePicker = UIImagePickerController()
imagePicker.delegate = self
imagePicker.allowsEditing = false
imagePicker.sourceType = .PhotoLibrary
                
self.presentViewController(imagePicker, animated: true, completion: nil)
```