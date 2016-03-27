```
스터디 진행 : 2016년 3월 19일, 유상현
최종 작성자 : 유상현
최초 작성일 : 2016년 3월 19일
마지막 수정 : 2016년 3월 19일, 유상현
```

#24강 Exploring CloudKit

#####CloudKit에 관하여
스티브잡스 형님이 살아계실 때에는 iCloud에서 같은 계정을 가진 Device 간의 private data를 공유하는 서비스만 제공되었지만
Cloud서비스가 수면 위로 떠오르고 public data 및 developer를 위한 cloud 서비스로 CloudKit가 소개되었다.

Apple Developer page에서 CloudKit DashBoard를 통해 App ID를 등록하고 사용해야 하며, 내부에서 파일서버와 DB를 사용할 수 있다.
사용방법은 지금은 사라져버린 Parse서비스와 비슷하며, CKContainer와 CKDatabase 등의 객체를 통해 값을 처리할 수 있다.

```SWIFT
import CloudKit
```
######본격적인 코딩에 앞서 CloudKit import

```SWIFT
var restaurants:[CKRecord] = []
```
######불러올 값을 저장할 변수 선언 후
```SWIFT
let cloudContainer = CKContainer.defaultContainer()
let publicDatabase = cloudContainer.publicCloudDatabase
let predicate = NSPredicate(value: true)
let query = CKQuery(recordType: "Restaurant", predicate: predicate)
publicDatabase.performQuery(query, inZoneWithID: nil, completionHandler: {
  (results, error) -> Void in
    if error != nil {
      print(error)
      return
    }
  if let results = results {
    self.restaurants = results
    self.tableView.reloadData()
  }
})
```
######값을 불러오는 예시
1.CKContainer 객체를 이용하여 접근하고자 하는 데이터가 있는 iCloud Container를 얻는다.</br>
2.CKDatabase 객체로 해당 record가 존재하는 public/private database를 얻는다.
3.fetch하기 원하는 데이터를 식별한다. record ID를 알 경우, CKFetchRecordOperation을 사용한다. record ID를 모를 경우,
CKQuery를 만든 후, CKQueryOperation을 사용한다.
4.결과값을 다루기 위해 operation의 completionHandler에 블럭을 정의한다.

