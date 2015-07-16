import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Looper;

public final class xe
  implements Camera.PreviewCallback
{
  private final Handler a;
  private final wy.b b;
  private final wy.a c;
  
  public xe(Handler paramHandler, wy.b paramb, wy.a parama)
  {
    a = paramHandler;
    c = parama;
    b = paramb;
  }
  
  public final void a()
  {
    if (a != null) {
      a.getLooper().quit();
    }
  }
  
  public final void onPreviewFrame(final byte[] paramArrayOfByte, Camera paramCamera)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        xe.b(xe.this).a(paramArrayOfByte, xe.a(xe.this));
      }
    });
  }
}

/* Location:
 * Qualified Name:     xe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */