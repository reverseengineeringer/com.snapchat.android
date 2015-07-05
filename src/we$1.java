import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class we$1
  implements CameraOperationHandler.a
{
  we$1(we paramwe, int paramInt, wh paramwh) {}
  
  public final void a()
  {
    if (c.b != null) {
      return;
    }
    we localwe = c;
    int i = a;
    wh localwh = b;
    b = vk.a(i);
    if (b != null)
    {
      c = b.getParameters();
      ws localws = a;
      Object localObject3 = c;
      if (localObject3 != null)
      {
        Set localSet = a;
        Object localObject2 = ((Camera.Parameters)localObject3).getSupportedVideoSizes();
        Object localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = ((Camera.Parameters)localObject3).getSupportedPreviewSizes();
        }
        localObject2 = new ArrayList(((List)localObject1).size());
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject3 = (Camera.Size)((Iterator)localObject1).next();
          ((List)localObject2).add(new aue(width, height));
        }
        if (localSet.addAll((Collection)localObject2))
        {
          if (b == null) {
            break label238;
          }
          localObject1 = b.edit();
          localObject2 = ws.a(a);
          ((SharedPreferences.Editor)localObject1).putString(SharedPreferenceKey.VIDEO_ENCODING_RESOLUTIONS.getKey(), (String)localObject2);
          ((SharedPreferences.Editor)localObject1).apply();
        }
      }
      for (;;)
      {
        localwh.a(localwe, i);
        return;
        label238:
        c.a(new nu());
      }
    }
    localwh.b(i);
  }
}

/* Location:
 * Qualified Name:     we.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */