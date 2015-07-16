import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class xa$7
  implements CameraOperationHandler.a
{
  xa$7(xa paramxa) {}
  
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
 * Qualified Name:     xa.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */