import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatActivity;

public final class aqv
  extends ara
{
  private SnapchatActivity a;
  
  public aqv(Context paramContext)
  {
    super(paramContext, paramContext.getResources().getString(2131493357));
    a = ((SnapchatActivity)paramContext);
  }
  
  protected final void a()
  {
    akr.c(false);
    a.startActivity(new Intent(a, LandingPageActivity.class));
    a.finish();
  }
  
  protected final void b() {}
}

/* Location:
 * Qualified Name:     aqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */