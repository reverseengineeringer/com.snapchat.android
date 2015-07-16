import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;
import javax.inject.Inject;

public final class xj
{
  @Inject
  protected CameraModel a;
  @Inject
  protected xm b;
  private final TranscodingPreferencesWrapper c;
  
  @Inject
  public xj()
  {
    this(TranscodingPreferencesWrapper.a());
  }
  
  private xj(TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
  {
    SnapchatApplication.b().c().a(this);
    c = paramTranscodingPreferencesWrapper;
  }
  
  @chd
  public final avc a()
  {
    Object localObject = a.h;
    if (localObject == null) {}
    do
    {
      return null;
      localObject = ((wy.b)localObject).c();
    } while (localObject == null);
    if (TranscodingPreferencesWrapper.b() == TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) {}
    for (boolean bool = true;; bool = false)
    {
      xm localxm = b;
      int i = a.c;
      Camera.Size localSize = ((Camera.Parameters)localObject).getPreviewSize();
      return localxm.a((Camera.Parameters)localObject, i, width / height, bool);
    }
  }
}

/* Location:
 * Qualified Name:     xj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */