import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class xa$8
  implements CameraOperationHandler.a
{
  xa$8(xa paramxa, Camera.Parameters paramParameters) {}
  
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
 * Qualified Name:     xa.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */