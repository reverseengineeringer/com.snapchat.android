import android.content.Context;
import android.content.Intent;
import com.snapchat.android.Timber;

public final class amh
  extends amq
{
  public amh(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  public final void a(Context paramContext)
  {
    Timber.c("LogoutOperation", "LogoutOperation process", new Object[0]);
    super.a(paramContext);
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    Timber.c("LogoutOperation", "onResult - wasSuccessful " + paramuc.d(), new Object[0]);
    h.v();
  }
  
  protected final String e()
  {
    return "/ph/logout";
  }
}

/* Location:
 * Qualified Name:     amh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */