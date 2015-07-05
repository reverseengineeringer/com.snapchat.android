import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import java.io.IOException;

final class we$4
  implements CameraOperationHandler.a
{
  we$4(we paramwe, SurfaceTexture paramSurfaceTexture) {}
  
  public final void a()
  {
    if (b.b == null) {
      return;
    }
    try
    {
      b.b.setPreviewTexture(a);
      return;
    }
    catch (IOException localIOException)
    {
      Timber.f("SnapchatCameraManagerImpl", "Could not set preview texture", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     we.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */