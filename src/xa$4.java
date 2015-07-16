import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import java.io.IOException;

final class xa$4
  implements CameraOperationHandler.a
{
  xa$4(xa paramxa, SurfaceTexture paramSurfaceTexture) {}
  
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
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     xa.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */