import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import java.util.Map;

final class adl$b
  implements aeg.a
{
  private final String b;
  
  adl$b(adl paramadl, String paramString)
  {
    b = paramString;
  }
  
  public final void a(ImageView arg1, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean)
  {
    paramDrawable = a;
    paramBundle = b;
    for (;;)
    {
      adl.c localc;
      synchronized (i)
      {
        localc = (adl.c)j.get(paramBundle);
        if (localc == null)
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Icon load ignored", new Object[] { paramBundle });
          return;
        }
        a = true;
        if (e != null)
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Icon load finished with success? %b", new Object[] { paramBundle, Boolean.valueOf(paramBoolean) });
          e.a(paramBoolean);
        }
        if (adl.a(localc))
        {
          Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s fully loaded after intro media", new Object[] { paramBundle });
          j.remove(paramBundle);
          return;
        }
      }
      j.put(paramBundle, localc);
    }
  }
}

/* Location:
 * Qualified Name:     adl.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */