import UIKit
import WebKit
final class MainViewController:UIViewController,WKNavigationDelegate {
    var webView:WKWebView!
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor=.black
        let c=WKWebViewConfiguration()
        webView=WKWebView(frame:.zero,configuration:c)
        webView.navigationDelegate=self
        webView.translatesAutoresizingMaskIntoConstraints=false
        view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo:view.topAnchor),
            webView.bottomAnchor.constraint(equalTo:view.bottomAnchor),
            webView.leadingAnchor.constraint(equalTo:view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo:view.trailingAnchor)
        ])
        webView.load(URLRequest(url:URL(string:"https://ai.menahost.net/")!))
    }
    override var preferredStatusBarStyle:UIStatusBarStyle{.lightContent}
}
