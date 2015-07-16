import android.widget.ImageView;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.util.debug.ReleaseManager;

public final class ael$1
  implements aem.a
{
  public ael$1(ael paramael, String paramString1, String paramString2, ImageView paramImageView) {}
  
  public final void a()
  {
    String str = a;
    str = b;
    bhp.a(new Runnable()
    {
      public final void run()
      {
        afg localafg = d.a;
        ImageView localImageView = c;
        ael.b localb = a;
        bhp.a();
        if (a == null)
        {
          if (ReleaseManager.e()) {
            throw new IllegalStateException("Attempt to load brand icon but bitmap loader not initialized!");
          }
        }
        else
        {
          Object localObject = new awv.a();
          Integer localInteger = Integer.valueOf(2130837705);
          mResId = localInteger;
          mRequestId = Integer.toString(localInteger.intValue());
          mImageView = localImageView;
          mRequireExactDimensions = true;
          mWidth = localImageView.getMeasuredWidth();
          mHeight = localImageView.getMeasuredHeight();
          mExtras = null;
          localObject = ((awv.a)localObject).a();
          a.a((awv)localObject, new aww[] { new afg.2(localafg, localb, localImageView) });
        }
      }
    });
  }
  
  public final void a(@chc final ChannelPage paramChannelPage)
  {
    String str = a;
    str = b;
    bhp.a(new Runnable()
    {
      public final void run()
      {
        d.a.a(c, paramChannelPage, false, b, null);
      }
    });
  }
  
  public final void a(@chd String paramString)
  {
    d.a(a, b, paramString);
  }
  
  @chc
  public final String b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ael.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */