import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import java.util.Map;

final class azg$7
  implements Runnable
{
  azg$7(azg paramazg, View paramView, Map paramMap, Activity paramActivity, azv paramazv) {}
  
  public final void run()
  {
    Bitmap localBitmap = atf.a(val$screenView.getWidth(), val$screenView.getHeight(), new View[] { val$screenView });
    this$0.b(val$screenView, val$originalCacheEnabledValues);
    this$0.b(val$activity, val$shakeReporter, localBitmap);
  }
}

/* Location:
 * Qualified Name:     azg.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */