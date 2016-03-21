```
스터디 진행 : 2016년 3월 19일, 이설희
최종 작성자 : 이설희
최초 작성일 : 2016년 3월 19일
마지막 수정 : 2016년 3월 19일, 이설희
```

# 21강 Search Bar and UISearchController

## 1. Using UISearchController

```
searchController = UISearchController(searchResultsController: nil)
searchController.searchResultsUpdater = self
tableView.tableHeaderView = searchController.searchBar 
```
<br><br>

## 2. Filtering Content

### 1) 
```
ex)
func filterContentForSearchText(searchText: String) {
    searchResults = restaurants.filter({ (restaurant:Restaurant) -> Bool in
        let nameMatch = restaurant.name.rangeOfString(searchText, options:
NSStringCompareOptions.CaseInsensitiveSearch)
        return nameMatch != nil
    })
}
```
레스토랑의 이름만 검색이 되도록 필터링한다.

### 2)
```
ex)
func updateSearchResultsForSearchController(searchController:
UISearchController) {
    if let searchText = searchController.searchBar.text {
        filterContentForSearchText(searchText)
        tableView.reloadData()
} }
```
검색 결과를 업데이트한다.
<br><br><br><br>

## 3. Customizing the Appearance of the Search Bar
* placeholder
* prompt
* barTintColor
* tintColor
* searchBarStyle

```
ex)
￼￼searchController.searchBar.placeholder = "Search restaurants..."
searchController.searchBar.tintColor = UIColor.whiteColor()
searchController.searchBar.barTintColor = UIColor(red: 30.0/255.0, green:
30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
```
