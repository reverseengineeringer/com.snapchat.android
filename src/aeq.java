import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.discover.model.ChannelPage;

public final class aeq
{
  public String a;
  public Drawable b;
  public boolean c = false;
  public afg.a d;
  final afg.a e = new afg.a()
  {
    public final void a(ImageView paramAnonymousImageView, Drawable paramAnonymousDrawable, Bundle paramAnonymousBundle, boolean paramAnonymousBoolean)
    {
      String str = paramAnonymousBundle.getString("uri");
      ChannelPage localChannelPage = (ChannelPage)paramAnonymousBundle.getParcelable("channel_page");
      if (!paramAnonymousBoolean)
      {
        a = null;
        b = aeq.a(h);
      }
      for (c = false;; c = true)
      {
        if (paramAnonymousImageView != null)
        {
          awf.a(paramAnonymousImageView, b);
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
  private final afg f;
  
  public aeq()
  {
    this(afg.a());
  }
  
  private aeq(afg paramafg)
  {
    f = paramafg;
  }
  
  protected static Drawable a(int paramInt)
  {
    return new arc(paramInt);
  }
  
  public final void a(@chc ImageView paramImageView, @chc ChannelPage paramChannelPage, boolean paramBoolean)
  {
    if (paramBoolean) {
      str = paramChannelPage.i();
    }
    for (Object localObject = paramChannelPage.l(); (b != null) && (TextUtils.equals(str, a)); localObject = paramChannelPage.k())
    {
      awf.a(paramImageView, b);
      return;
      str = paramChannelPage.h();
    }
    if (afg.a(paramChannelPage, paramBoolean))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("uri", str);
      ((Bundle)localObject).putParcelable("channel_page", paramChannelPage);
      f.a(paramImageView, paramChannelPage, paramBoolean, e, (Bundle)localObject);
      return;
    }
    String str = b;
    a = null;
    c = false;
    b = a(h);
    awf.a(paramImageView, b);
  }
}

/* Location:
 * Qualified Name:     aeq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */