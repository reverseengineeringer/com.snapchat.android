import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.snapchat.android.LandingPageActivity;
import java.util.HashMap;

final class baf$1
  implements Runnable
{
  baf$1(baf parambaf, Activity paramActivity, bau parambau) {}
  
  public final void run()
  {
    baf localbaf = this$0;
    Activity localActivity = val$activity;
    bau localbau = val$shakeReporter;
    View localView = localActivity.getWindow().getDecorView();
    HashMap localHashMap = new HashMap();
    localbaf.a(localView, localHashMap);
    if (((localActivity instanceof LandingPageActivity)) && (((LandingPageActivity)localActivity).d()))
    {
      bhp.a(1000L);
      bhp.a(new baf.6(localbaf, localView, localHashMap, localActivity, localbau));
      return;
    }
    bhp.a(new baf.7(localbaf, localView, localHashMap, localActivity, localbau));
  }
}

/* Location:
 * Qualified Name:     baf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */