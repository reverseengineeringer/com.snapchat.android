import android.graphics.Paint;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.ChannelPage.MediaType;
import com.snapchat.android.discover.model.MediaState;

public final class afp
  implements aww
{
  private final ChannelPage a;
  private final String b;
  private final boolean c;
  private final afg.a d;
  private final Bundle e;
  private final acy f;
  
  public afp(acy paramacy, ChannelPage paramChannelPage, String paramString, boolean paramBoolean, afg.a parama, Bundle paramBundle)
  {
    a = paramChannelPage;
    b = paramString;
    c = paramBoolean;
    d = parama;
    e = paramBundle;
    f = paramacy;
  }
  
  public final void a(awm paramawm, awv paramawv)
  {
    paramawv = mImageView;
    boolean bool2;
    Object localObject;
    ChannelPage localChannelPage;
    boolean bool1;
    if (mBitmap == null)
    {
      paramawm = b;
      bool2 = c;
      localObject = f;
      localChannelPage = a;
      if (c)
      {
        paramawm = ChannelPage.MediaType.INVERTED_ICON;
        switch (acy.1.a[paramawm.ordinal()])
        {
        default: 
          bool1 = false;
          label82:
          if (bool1) {
            a.c();
          }
          paramawm = null;
          bool2 = false;
        }
      }
    }
    for (;;)
    {
      if (d != null) {
        d.a(paramawv, paramawm, e, bool2);
      }
      return;
      paramawm = ChannelPage.MediaType.FILLED_ICON;
      break;
      bool1 = c.b(localChannelPage, MediaState.NOT_STARTED) | false;
      break label82;
      bool1 = c.c(localChannelPage, MediaState.NOT_STARTED) | false;
      break label82;
      bool1 = c.d(localChannelPage, MediaState.NOT_STARTED) | false;
      break label82;
      if (paramawv != null)
      {
        localObject = b;
        bool2 = c;
        paramawm = mBitmap;
        int i = a.h;
        bool2 = c;
        paramawm = new arb(paramawm);
        if (bool2)
        {
          b = 2.0F;
          a.setStrokeWidth(2.0F);
          paramawm.invalidateSelf();
          a.setColor(i);
          paramawm.invalidateSelf();
        }
        paramawv.setImageDrawable(paramawm);
        bool2 = true;
      }
      else
      {
        paramawm = null;
        bool2 = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     afp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */