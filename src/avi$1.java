import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

public final class avi$1
  implements Runnable
{
  public avi$1(Context paramContext) {}
  
  public final void run()
  {
    CookieSyncManager.createInstance(val$appContext);
    CookieManager localCookieManager = CookieManager.getInstance();
    localCookieManager.removeAllCookie();
    localCookieManager.setAcceptCookie(false);
  }
}

/* Location:
 * Qualified Name:     avi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */