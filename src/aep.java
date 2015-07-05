import android.graphics.Paint;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.ChannelPage.MediaType;
import com.snapchat.android.discover.model.MediaState;

public final class aep
  implements avy
{
  private final ChannelPage a;
  private final String b;
  private final boolean c;
  private final aeg.a d;
  private final Bundle e;
  private final aby f;
  
  public aep(aby paramaby, ChannelPage paramChannelPage, String paramString, boolean paramBoolean, aeg.a parama, Bundle paramBundle)
  {
    a = paramChannelPage;
    b = paramString;
    c = paramBoolean;
    d = parama;
    e = paramBundle;
    f = paramaby;
  }
  
  public final void a(avo paramavo, avx paramavx)
  {
    paramavx = mImageView;
    aby localaby;
    ChannelPage localChannelPage;
    boolean bool1;
    label98:
    boolean bool2;
    if (mBitmap == null)
    {
      Timber.f("InternalBitmapDecodedCallback", "DISCOVER-MEDIA-BRAND-ICON: %s could not be decoded. Inverted? %b ", new Object[] { b, Boolean.valueOf(c) });
      localaby = f;
      localChannelPage = a;
      if (c)
      {
        paramavo = ChannelPage.MediaType.INVERTED_ICON;
        switch (aby.1.a[paramavo.ordinal()])
        {
        default: 
          bool1 = false;
          if (bool1) {
            a.b();
          }
          paramavo = null;
          bool2 = false;
        }
      }
    }
    for (;;)
    {
      if (d != null) {
        d.a(paramavx, paramavo, e, bool2);
      }
      return;
      paramavo = ChannelPage.MediaType.FILLED_ICON;
      break;
      bool1 = c.b(localChannelPage, MediaState.NOT_STARTED) | false;
      break label98;
      bool1 = c.c(localChannelPage, MediaState.NOT_STARTED) | false;
      break label98;
      bool1 = c.d(localChannelPage, MediaState.NOT_STARTED) | false;
      break label98;
      if (paramavx != null)
      {
        Timber.a("InternalBitmapDecodedCallback", "DISCOVER-MEDIA-BRAND-ICON: %s decoded. Inverted? %b ", new Object[] { b, Boolean.valueOf(c) });
        paramavo = mBitmap;
        int i = a.h;
        bool2 = c;
        paramavo = new aqc(paramavo);
        if (bool2)
        {
          b = 2.0F;
          a.setStrokeWidth(2.0F);
          paramavo.invalidateSelf();
          a.setColor(i);
          paramavo.invalidateSelf();
        }
        paramavx.setImageDrawable(paramavo);
        bool2 = true;
      }
      else
      {
        paramavo = null;
        bool2 = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     aep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */