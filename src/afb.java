import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.discover.analytics.DiscoverUsageAnalytics.ViewStatus;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.DSnapPanel.MediaType;
import com.snapchat.android.discover.ui.DSnapView;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.List;

public final class afb
  extends aey
{
  private WebView a;
  private final Context b;
  private final ReleaseManager c;
  private final afv d;
  
  public afb(Context paramContext)
  {
    this(paramContext, ReleaseManager.a(), new afv());
  }
  
  private afb(Context paramContext, ReleaseManager paramReleaseManager, afv paramafv)
  {
    b = paramContext;
    c = paramReleaseManager;
    d = paramafv;
  }
  
  static boolean a(Uri paramUri, DSnapPage paramDSnapPage)
  {
    String str = paramUri.getScheme();
    paramUri = paramUri.getHost();
    return (TextUtils.equals(str, "file")) && (TextUtils.equals(paramUri, Uri.parse(c).getHost()));
  }
  
  protected static boolean a(String paramString, DSnapPage paramDSnapPage)
  {
    return a(Uri.parse(paramString), paramDSnapPage);
  }
  
  public final aji a(View paramView, aeb paramaeb, @chc List<View> paramList)
  {
    paramList = null;
    if (paramView != null)
    {
      paramView = aws.a(paramView, null);
      paramList = new akh.a();
      mShouldHideSystemUi = true;
      paramList = paramList.a();
      afv.a(paramaeb, 0, 0, paramView.getWidth(), paramView.getHeight());
      akf.a locala = new akf.a();
      mSnapType = Mediabryo.SnapType.DISCOVER;
      locala = (akf.a)locala;
      mShouldEnableVisualFilters = false;
      locala = (akf.a)locala;
      mRawImageBitmap = paramView;
      locala = (akf.a)locala;
      mWidth = paramView.getWidth();
      locala = (akf.a)locala;
      mHeight = paramView.getHeight();
      paramView = (akf.a)locala;
      mPreviewConfiguration = paramList;
      paramView = (akf.a)paramView;
      mMediaExtras = paramaeb;
      paramList = ((akf.a)paramView).c();
    }
    return paramList;
  }
  
  public final DiscoverUsageAnalytics.ViewStatus a(long paramLong)
  {
    return DiscoverUsageAnalytics.ViewStatus.COMPLETED;
  }
  
  public final void a(DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel) {}
  
  public final boolean a(DSnapView paramDSnapView, final DSnapPage paramDSnapPage, DSnapPanel paramDSnapPanel)
  {
    a = new WebView(b);
    paramDSnapView = a.getSettings();
    paramDSnapView.setJavaScriptEnabled(false);
    paramDSnapView.setBlockNetworkLoads(true);
    paramDSnapView.setSaveFormData(false);
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramDSnapView.setAllowFileAccessFromFileURLs(false);
      paramDSnapView.setAllowUniversalAccessFromFileURLs(false);
    }
    a.setWebViewClient(new WebViewClient()
    {
      @TargetApi(21)
      public final WebResourceResponse shouldInterceptRequest(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest)
      {
        if (afb.a(paramAnonymousWebResourceRequest.getUrl(), paramDSnapPage)) {
          return null;
        }
        return afb.h();
      }
      
      public final WebResourceResponse shouldInterceptRequest(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        if (afb.a(paramAnonymousString, paramDSnapPage)) {
          return null;
        }
        return afb.h();
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        return !afb.a(paramAnonymousString, paramDSnapPage);
      }
    });
    paramDSnapView = c + a;
    a.loadUrl(paramDSnapView);
    ReleaseManager.k();
    a.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        return true;
      }
    });
    return true;
  }
  
  public final void c() {}
  
  public final View d()
  {
    return a;
  }
  
  public final DSnapPanel.MediaType e()
  {
    return DSnapPanel.MediaType.LOCAL_WEBPAGE;
  }
}

/* Location:
 * Qualified Name:     afb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */