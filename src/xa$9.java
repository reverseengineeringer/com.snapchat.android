import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;

final class xa$9
  implements CameraOperationHandler.a
{
  xa$9(xa paramxa) {}
  
  public final void a()
  {
    if ((a.b != null) && ((a.d) || (a.c == null)))
    {
      a.c = a.b.getParameters();
      a.d = false;
    }
  }
}

/* Location:
 * Qualified Name:     xa.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */