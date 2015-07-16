import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;

public final class xb
  implements Camera.AutoFocusCallback
{
  private final Handler a;
  private final wy.b b;
  private final wy.c c;
  
  public xb(Handler paramHandler, wy.b paramb, wy.c paramc)
  {
    a = paramHandler;
    c = paramc;
    b = paramb;
  }
  
  public final void onAutoFocus(final boolean paramBoolean, Camera paramCamera)
  {
    a.post(new Runnable()
    {
      public final void run()
      {
        xb.a(xb.this).a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     xb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */