import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class we$3
  implements CameraOperationHandler.a
{
  we$3(we paramwe, wi paramwi) {}
  
  public final void a()
  {
    if (b.b == null) {
      return;
    }
    b.b.setPreviewCallbackWithBuffer(a);
  }
}

/* Location:
 * Qualified Name:     we.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */