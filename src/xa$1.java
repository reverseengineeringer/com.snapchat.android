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

final class xa$1
  implements CameraOperationHandler.a
{
  xa$1(xa paramxa, int paramInt, xd paramxd) {}
  
  public final void a()
  {
    if (c.b != null) {
      return;
    }
    xa localxa = c;
    int i = a;
    xd localxd = b;
    b = wg.a(i);
    if (b != null)
    {
      c = b.getParameters();
      xv localxv = a;
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
          ((List)localObject2).add(new avc(width, height));
        }
        boolean bool = localSet.addAll((Collection)localObject2);
        xv.a(a);
        if (bool)
        {
          if (b == null) {
            break label256;
          }
          localObject1 = b.edit();
          localObject2 = xv.b(a);
          ((SharedPreferences.Editor)localObject1).putString(SharedPreferenceKey.VIDEO_ENCODING_RESOLUTIONS.getKey(), (String)localObject2);
          ((SharedPreferences.Editor)localObject1).apply();
        }
      }
      for (;;)
      {
        localxd.a(localxa, i);
        return;
        label256:
        c.a(new ol());
      }
    }
    localxd.b(i);
  }
}

/* Location:
 * Qualified Name:     xa.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */