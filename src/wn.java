import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;
import javax.inject.Inject;

public final class wn
{
  @Inject
  protected CameraModel a;
  @Inject
  protected wq b;
  private final TranscodingPreferencesWrapper c;
  
  @Inject
  public wn()
  {
    this(TranscodingPreferencesWrapper.a());
  }
  
  private wn(TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
  {
    SnapchatApplication.b().c().a(this);
    c = paramTranscodingPreferencesWrapper;
  }
  
  @cgc
  public final aue a()
  {
    Object localObject = a.h;
    if (localObject == null) {}
    do
    {
      return null;
      localObject = ((wc.b)localObject).c();
    } while (localObject == null);
    if (TranscodingPreferencesWrapper.b() == TranscodingPreferencesWrapper.TranscodingEnabled.ENABLED) {}
    for (boolean bool = true;; bool = false)
    {
      wq localwq = b;
      int i = a.c;
      Camera.Size localSize = ((Camera.Parameters)localObject).getPreviewSize();
      return localwq.a((Camera.Parameters)localObject, i, width / height, bool);
    }
  }
}

/* Location:
 * Qualified Name:     wn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */