import android.app.Activity;
import android.graphics.Bitmap;
import android.view.TextureView;
import android.view.View;
import com.snapchat.android.camera.cameraview.CameraView;
import java.util.Map;

final class baf$6
  implements Runnable
{
  baf$6(baf parambaf, View paramView, Map paramMap, Activity paramActivity, bau parambau) {}
  
  public final void run()
  {
    Object localObject = this$0;
    localObject = (TextureView)((baf)localObject).a((CameraView)((baf)localObject).a(val$screenView, CameraView.class), TextureView.class);
    if (localObject != null) {}
    for (localObject = ((TextureView)localObject).getBitmap();; localObject = null)
    {
      this$0.b(val$screenView, val$originalCacheEnabledValues);
      this$0.b(val$activity, val$shakeReporter, (Bitmap)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     baf.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */