import com.snapchat.android.SnapchatApplication;
import com.squareup.otto.Bus;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class xn
{
  @Inject
  protected ayg a;
  @Inject
  protected ato b;
  private xq c;
  
  @Inject
  protected xn()
  {
    SnapchatApplication.b().c().a(this);
    ban.a().c(this);
  }
  
  @cgc
  public final xq a()
  {
    if (c == null)
    {
      String str = a.a(ayj.SQ_AUTH_TOKEN);
      c = ((xq)b.a(str, xq.class));
    }
    return c;
  }
  
  public final void a(@cgc xq paramxq)
  {
    c = paramxq;
    a.a(ayj.SQ_AUTH_TOKEN, b.a(c));
  }
  
  @boh
  public final void onLogoutEvent(bch parambch)
  {
    a(null);
  }
}

/* Location:
 * Qualified Name:     xn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */