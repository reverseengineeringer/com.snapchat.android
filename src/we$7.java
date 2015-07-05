import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class we$7
  implements CameraOperationHandler.a
{
  we$7(we paramwe) {}
  
  public final void a()
  {
    if (a.b == null) {
      return;
    }
    a.b.release();
    a.b = null;
    a.c = null;
  }
}

/* Location:
 * Qualified Name:     we.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */