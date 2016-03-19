```
스터디 진행 : 2016년 3월 19일, 이설희
최종 작성자 : 이설희
최초 작성일 : 2016년 3월 19일
마지막 수정 : 2016년 3월 19일, 이설희
```

# 20강 Working with Core Data

## 1. Creating the Managed Object Model

![](https://www.safaribooksonline.com/library/view/ios-components-and/9780133086898/graphics/13fig04.jpg)
![](http://www.appcoda.com/wp-content/uploads/2012/12/Managed-Object-Model-Add-Entity.jpg)
<br><br><br><br>


## 2. Creating Managed Objects

```
ex)
import Foundation
import CoreData
class Restaurant:NSManagedObject {
    @NSManaged var name:String
    @NSManaged var type:String
    @NSManaged var location:String
    @NSManaged var phoneNumber:String?
    @NSManaged var image:NSData?
    @NSManaged var isVisited:NSNumber?
    @NSManaged var rating:String?
}   

```
![](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CoreData/Art/Model_Editor_2x.png)
<br>
Data Model inspector에서 class option에서 클래스 추가
<br><br><br><br>




## 3. Saving

```
if let managedObjectContext = (UIApplication.sharedApplication().delegate as?
AppDelegate)?.managedObjectContext {
    restaurant =
NSEntityDescription.insertNewObjectForEntityForName("Restaurant",
inManagedObjectContext: managedObjectContext) as! Restaurant
    restaurant.name = name!
    restaurant.type = type!
    restaurant.location = location!
    if let restaurantImage = imageView.image {
        restaurant.image = UIImagePNGRepresentation(restaurantImage)
    }
    restaurant.isVisited = isVisited

    do {
        try managedObjectContext.save()
    } catch {
        print(error)
return
}    
```
<br><br><br><br>




## 4. Deleting
```
let deleteAction = UITableViewRowAction(style:
UITableViewRowActionStyle.Default, title: "Delete",handler: { (action,
indexPath) -> Void in
    // Delete the row from the database

    if let managedObjectContext = (UIApplication.sharedApplication().delegate as? AppDelegate)?.managedObjectContext {
        let restaurantToDelete = self.fetchResultController.objectAtIndexPath(indexPath) as! Restaurant
        managedObjectContext.deleteObject(restaurantToDelete)
        do {
            try managedObjectContext.save()
        } catch {
            print(error)
} }
})    
```
<br><br><br><br>


## 5. Updating
```
@IBAction func close(segue:UIStoryboardSegue) {
    if let reviewViewController = segue.sourceViewController as?
ReviewViewController {
        if let rating = reviewViewController.rating {
            restaurant.rating = rating
            ratingButton.setImage(UIImage(named: rating), forState:
UIControlState.Normal)
            if let managedObjectContext = (UIApplication.sharedApplication().delegate as? AppDelegate)?.managedObjectContext {
                do {
                    try managedObjectContext.save()
                } catch {
                    print(error)
                }   
             }
          }
      }
 }
```
