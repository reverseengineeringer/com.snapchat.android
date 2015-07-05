import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class we$8
  implements CameraOperationHandler.a
{
  we$8(we paramwe, Camera.Parameters paramParameters) {}
  
  public final void a()
  {
    if (b.b == null) {
      return;
    }
    b.d = true;
    b.b.setParameters(a);
  }
}

/* Location:
 * Qualified Name:     we.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */