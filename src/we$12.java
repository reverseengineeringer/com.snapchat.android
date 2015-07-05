import android.hardware.Camera;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import java.io.IOException;

final class we$12
  implements CameraOperationHandler.a
{
  we$12(we paramwe) {}
  
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
 * Qualified Name:     we.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */