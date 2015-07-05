import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Singleton;

@Singleton
public final class aeg
{
  private static final aeg b = new aeg();
  public avp a;
  private final aby c;
  private final aeo d;
  
  private aeg()
  {
    this(aby.a(), aeo.a());
  }
  
  private aeg(aby paramaby, aeo paramaeo)
  {
    c = paramaby;
    a = null;
    d = paramaeo;
  }
  
  public static aeg a()
  {
    return b;
  }
  
  public static boolean a(ChannelPage paramChannelPage, boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = paramChannelPage.i();
    }
    for (MediaState localMediaState = paramChannelPage.l();; localMediaState = paramChannelPage.k())
    {
      Timber.a("DiscoverBrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: %s loading state %s URI %s", new Object[] { paramChannelPage, localMediaState, str });
      if ((localMediaState != MediaState.SUCCESS) || (str == null)) {
        break;
      }
      return true;
      str = paramChannelPage.h();
    }
    return false;
  }
  
  @ccm
  public final boolean a(@cgb ImageView paramImageView, ChannelPage paramChannelPage, boolean paramBoolean, final aeg.a parama, Bundle paramBundle)
  {
    
    if (a == null)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException("Attempt to load brand icon but bitmap loader not initialized!");
      }
      return false;
    }
    if (!a(paramChannelPage, paramBoolean)) {
      return false;
    }
    if (paramBoolean) {}
    for (final String str = paramChannelPage.i();; str = paramChannelPage.h())
    {
      avx.a locala = new avx.a().a(str);
      mImageView = paramImageView;
      mRequireExactDimensions = true;
      mExtras = paramBundle;
      paramImageView = locala.a();
      parama = new aep(c, paramChannelPage, str, paramBoolean, parama, paramBundle);
      paramBundle = (Bitmap)d.get(str);
      if (paramBundle == null) {
        break;
      }
      Timber.a("DiscoverBrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: Using cached icon for %s", new Object[] { paramChannelPage });
      parama.a(new avo(paramBundle, false), paramImageView);
      return true;
    }
    Timber.a("DiscoverBrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: Submitting request to load icon for %s", new Object[] { paramChannelPage });
    a.b(paramImageView, new avy[] { new avy()
    {
      public final void a(avo paramAnonymousavo, avx paramAnonymousavx)
      {
        parama.a(paramAnonymousavo, paramAnonymousavx);
        paramAnonymousavx = aeg.a(aeg.this);
        String str = str;
        paramAnonymousavo = mBitmap;
        if ((str == null) || (paramAnonymousavo == null)) {
          return;
        }
        bgp.b(new aeo.1(paramAnonymousavx, str, paramAnonymousavo));
      }
    } });
    return true;
  }
  
  public static abstract interface a
  {
    public abstract void a(ImageView paramImageView, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     aeg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */