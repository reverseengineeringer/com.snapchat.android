import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.util.debug.ReleaseManager;

public final class adl$1
  implements adm.a
{
  public adl$1(adl paramadl, String paramString1, String paramString2, ImageView paramImageView) {}
  
  public final void a()
  {
    Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Intro media unavailable for %s", new Object[] { a, b });
    bgp.a(new Runnable()
    {
      public final void run()
      {
        aeg localaeg = d.a;
        ImageView localImageView = c;
        adl.b localb = a;
        bgp.a();
        if (a == null)
        {
          if (ReleaseManager.e()) {
            throw new IllegalStateException("Attempt to load brand icon but bitmap loader not initialized!");
          }
        }
        else
        {
          Object localObject = new avx.a();
          Integer localInteger = Integer.valueOf(2130837705);
          mResId = localInteger;
          mRequestId = Integer.toString(localInteger.intValue());
          mImageView = localImageView;
          mRequireExactDimensions = true;
          mWidth = localImageView.getMeasuredWidth();
          mHeight = localImageView.getMeasuredHeight();
          mExtras = null;
          localObject = ((avx.a)localObject).a();
          a.a((avx)localObject, new avy[] { new aeg.2(localaeg, localb, localImageView) });
        }
      }
    });
  }
  
  public final void a(@cgb final ChannelPage paramChannelPage)
  {
    Timber.a("DiscoverDeepLinkController", "DISCOVER-LINK: %s - Intro media has become available for %s", new Object[] { a, b });
    bgp.a(new Runnable()
    {
      public final void run()
      {
        d.a.a(c, paramChannelPage, false, b, null);
      }
    });
  }
  
  public final void a(@cgc String paramString)
  {
    d.a(a, b, paramString);
  }
  
  @cgb
  public final String b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     adl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */