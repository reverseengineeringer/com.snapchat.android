import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import java.io.IOException;

final class xa$12
  implements CameraOperationHandler.a
{
  xa$12(xa paramxa) {}
  
  public final void a()
  {
    if (a.b == null) {
      return;
    }
    try
    {
      a.b.reconnect();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     xa.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */