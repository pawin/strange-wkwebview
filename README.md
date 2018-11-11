## UPDATE: This issue is resolved in iOS11

# WKWebView
### Demonstrate WKWebView strange rendering behaviour, only occurs in iOS 10

I have a WKWebView inside a UITableViewCell. After the web view has received the loading request, I resized the web view's height so that it is aligned to the content's height. Then I adjusted the table view cell's height to fit into the webview.

The problem I encountered was that the web view only displayed the area that fits the screensize. When I scrolled down, it was all white. I noticed that the web view was rendered correctly because the web view can still be selected when tapping while holding on to the white area. Zooming by pinching allows the web view area displayed on the screen to become visible, however other areas sometimes become white when doing this.

![alt text](https://github.com/pawin/strange-wkwebview/blob/master/webview/ss1.png "1")
![alt text](https://github.com/pawin/strange-wkwebview/blob/master/webview/ss2.png "2")
![alt text](https://github.com/pawin/strange-wkwebview/blob/master/webview/ss3.png "3")
