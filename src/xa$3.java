import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class xa$3
  implements CameraOperationHandler.a
{
  xa$3(xa paramxa, xe paramxe) {}
  
  public final void a()
  {
    if (b.b == null) {
      return;
    }
    b.b.setPreviewCallbackWithBuffer(a);
  }
}

/* Location:
 * Qualified Name:     xa.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */