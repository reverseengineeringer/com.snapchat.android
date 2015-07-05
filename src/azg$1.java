import android.app.Activity;
import android.view.View;
import android.view.Window;
import com.snapchat.android.LandingPageActivity;
import java.util.HashMap;

final class azg$1
  implements Runnable
{
  azg$1(azg paramazg, Activity paramActivity, azv paramazv) {}
  
  public final void run()
  {
    azg localazg = this$0;
    Activity localActivity = val$activity;
    azv localazv = val$shakeReporter;
    View localView = localActivity.getWindow().getDecorView();
    HashMap localHashMap = new HashMap();
    localazg.a(localView, localHashMap);
    if (((localActivity instanceof LandingPageActivity)) && (((LandingPageActivity)localActivity).d()))
    {
      bgp.a(1000L);
      bgp.a(new azg.6(localazg, localView, localHashMap, localActivity, localazv));
      return;
    }
    bgp.a(new azg.7(localazg, localView, localHashMap, localActivity, localazv));
  }
}

/* Location:
 * Qualified Name:     azg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */