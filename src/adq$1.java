import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.discover.model.ChannelPage;

final class adq$1
  implements aeg.a
{
  adq$1(adq paramadq) {}
  
  public final void a(ImageView paramImageView, Drawable paramDrawable, Bundle paramBundle, boolean paramBoolean)
  {
    String str = paramBundle.getString("uri");
    ChannelPage localChannelPage = (ChannelPage)paramBundle.getParcelable("channel_page");
    if (!paramBoolean)
    {
      a.a = null;
      a.b = adq.a(h);
    }
    for (a.c = false;; a.c = true)
    {
      if (paramImageView != null)
      {
        avh.a(paramImageView, a.b);
        if (a.d != null) {
          a.d.a(paramImageView, paramDrawable, paramBundle, paramBoolean);
        }
      }
      return;
      a.a = str;
      a.b = paramDrawable;
    }
  }
}

/* Location:
 * Qualified Name:     adq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */