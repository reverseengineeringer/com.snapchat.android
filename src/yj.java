import com.snapchat.android.SnapchatApplication;
import com.squareup.otto.Bus;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class yj
{
  @Inject
  protected aze a;
  @Inject
  protected aum b;
  private ym c;
  
  @Inject
  protected yj()
  {
    SnapchatApplication.b().c().a(this);
    bbo.a().c(this);
  }
  
  @chd
  public final ym a()
  {
    if (c == null)
    {
      String str = a.a(azh.SQ_AUTH_TOKEN);
      c = ((ym)b.a(str, ym.class));
    }
    return c;
  }
  
  public final void a(@chd ym paramym)
  {
    c = paramym;
    a.a(azh.SQ_AUTH_TOKEN, b.a(c));
  }
  
  @bpi
  public final void onLogoutEvent(bdh parambdh)
  {
    a(null);
  }
}

/* Location:
 * Qualified Name:     yj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */