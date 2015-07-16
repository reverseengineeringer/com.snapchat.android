import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import java.util.Map;

final class baf$7
  implements Runnable
{
  baf$7(baf parambaf, View paramView, Map paramMap, Activity paramActivity, bau parambau) {}
  
  public final void run()
  {
    Bitmap localBitmap = aue.a(val$screenView.getWidth(), val$screenView.getHeight(), new View[] { val$screenView });
    this$0.b(val$screenView, val$originalCacheEnabledValues);
    this$0.b(val$activity, val$shakeReporter, localBitmap);
  }
}

/* Location:
 * Qualified Name:     baf.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */