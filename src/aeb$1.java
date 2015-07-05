import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.discover.model.DSnapPage;

final class aeb$1
  extends WebViewClient
{
  aeb$1(aeb paramaeb, DSnapPage paramDSnapPage) {}
  
  @TargetApi(21)
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
  {
    if (aeb.a(paramWebResourceRequest.getUrl(), a)) {
      return null;
    }
    return aeb.g();
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (aeb.a(paramString, a)) {
      return null;
    }
    return aeb.g();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return !aeb.a(paramString, a);
  }
}

/* Location:
 * Qualified Name:     aeb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */