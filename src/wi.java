import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Looper;

public final class wi
  implements Camera.PreviewCallback
{
  private final Handler a;
  private final wc.b b;
  private final wc.a c;
  
  public wi(Handler paramHandler, wc.b paramb, wc.a parama)
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
        wi.b(wi.this).a(paramArrayOfByte, wi.a(wi.this));
      }
    });
  }
}

/* Location:
 * Qualified Name:     wi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */