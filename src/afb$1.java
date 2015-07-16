import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.discover.model.DSnapPage;

final class afb$1
  extends WebViewClient
{
  afb$1(afb paramafb, DSnapPage paramDSnapPage) {}
  
  @TargetApi(21)
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
  {
    if (afb.a(paramWebResourceRequest.getUrl(), a)) {
      return null;
    }
    return afb.h();
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (afb.a(paramString, a)) {
      return null;
    }
    return afb.h();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return !afb.a(paramString, a);
  }
}

/* Location:
 * Qualified Name:     afb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */