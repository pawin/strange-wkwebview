# strange-wkwebview
Demonstrate WKWebView strange rendering behaviour

I have WKWebView inside the UITableViewCell. The web view load request and then after finished loading, I'll resize the web view height then adjust table view cell height to fit accordingly.

What happened was the web view only displays the area that fit the screen size. When I scroll down, everything is white. But I see that the web view rendered with correct height, tap and hold on the white area on the web view still see selection. Zooming with pinch makes the web view area that displaying on the screen visible, but other areas sometimes become white.

# Only occurs in iOS 10
