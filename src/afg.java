import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Singleton;

@Singleton
public final class afg
{
  private static final afg b = new afg();
  public awn a;
  private final acy c;
  private final afo d;
  
  private afg()
  {
    this(acy.a(), afo.a());
  }
  
  private afg(acy paramacy, afo paramafo)
  {
    c = paramacy;
    a = null;
    d = paramafo;
  }
  
  public static afg a()
  {
    return b;
  }
  
  public static boolean a(ChannelPage paramChannelPage, boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = paramChannelPage.i();
    }
    for (paramChannelPage = paramChannelPage.l(); (paramChannelPage == MediaState.SUCCESS) && (str != null); paramChannelPage = paramChannelPage.k())
    {
      return true;
      str = paramChannelPage.h();
    }
    return false;
  }
  
  @cdn
  public final boolean a(@chc ImageView paramImageView, final ChannelPage paramChannelPage, boolean paramBoolean, afg.a parama, Bundle paramBundle)
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
      awv.a locala = new awv.a().a(str);
      mImageView = paramImageView;
      mRequireExactDimensions = true;
      mExtras = paramBundle;
      paramImageView = locala.a();
      paramChannelPage = new afp(c, paramChannelPage, str, paramBoolean, parama, paramBundle);
      parama = (Bitmap)d.get(str);
      if (parama == null) {
        break;
      }
      paramChannelPage.a(new awm(parama, false), paramImageView);
      return true;
    }
    a.b(paramImageView, new aww[] { new aww()
    {
      public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
      {
        paramChannelPage.a(paramAnonymousawm, paramAnonymousawv);
        paramAnonymousawv = afg.a(afg.this);
        String str = str;
        paramAnonymousawm = mBitmap;
        if ((str == null) || (paramAnonymousawm == null)) {
          return;
        }
        bhp.b(new afo.1(paramAnonymousawv, str, paramAnonymousawm));
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
 * Qualified Name:     afg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */