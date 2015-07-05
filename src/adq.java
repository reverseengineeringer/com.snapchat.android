import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;

public final class adq
{
  public String a;
  public Drawable b;
  public boolean c = false;
  public aeg.a d;
  final aeg.a e = new aeg.a()
  {
    public final void a(ImageView paramAnonymousImageView, Drawable paramAnonymousDrawable, Bundle paramAnonymousBundle, boolean paramAnonymousBoolean)
    {
      String str = paramAnonymousBundle.getString("uri");
      ChannelPage localChannelPage = (ChannelPage)paramAnonymousBundle.getParcelable("channel_page");
      if (!paramAnonymousBoolean)
      {
        a = null;
        b = adq.a(h);
      }
      for (c = false;; c = true)
      {
        if (paramAnonymousImageView != null)
        {
          avh.a(paramAnonymousImageView, b);
          if (d != null) {
            d.a(paramAnonymousImageView, paramAnonymousDrawable, paramAnonymousBundle, paramAnonymousBoolean);
          }
        }
        return;
        a = str;
        b = paramAnonymousDrawable;
      }
    }
  };
  private final aeg f;
  
  public adq()
  {
    this(aeg.a());
  }
  
  private adq(aeg paramaeg)
  {
    f = paramaeg;
  }
  
  protected static Drawable a(int paramInt)
  {
    return new aqd(paramInt);
  }
  
  public final void a(@cgb ImageView paramImageView, @cgb ChannelPage paramChannelPage, boolean paramBoolean)
  {
    String str;
    if (paramBoolean) {
      str = paramChannelPage.i();
    }
    for (Object localObject = paramChannelPage.l(); (b != null) && (TextUtils.equals(str, a)); localObject = paramChannelPage.k())
    {
      avh.a(paramImageView, b);
      return;
      str = paramChannelPage.h();
    }
    if (aeg.a(paramChannelPage, paramBoolean))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("uri", str);
      ((Bundle)localObject).putParcelable("channel_page", paramChannelPage);
      f.a(paramImageView, paramChannelPage, paramBoolean, e, (Bundle)localObject);
      return;
    }
    Timber.a("ChannelViewBrandIconProvider", "DISCOVER-MEDIA-BRAND-ICON: %s's icon has not been downloaded yet: [%s] inverted? %b", new Object[] { b, localObject, Boolean.valueOf(paramBoolean) });
    a = null;
    c = false;
    b = a(h);
    avh.a(paramImageView, b);
  }
}

/* Location:
 * Qualified Name:     adq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */