import com.snapchat.android.SnapchatApplication;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class xr
{
  @Inject
  protected ayg a;
  
  @Inject
  protected xr()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @cgc
  public final String a()
  {
    return a.a(ayj.CREDIT_CARD_TOKEN);
  }
  
  public final void a(@cgc String paramString)
  {
    a.a(ayj.CREDIT_CARD_TOKEN, paramString);
  }
  
  public final void b()
  {
    a.a(ayj.CREDIT_CARD_TOKEN, null);
  }
}

/* Location:
 * Qualified Name:     xr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */