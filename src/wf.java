import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;

public final class wf
  implements Camera.AutoFocusCallback
{
  private final Handler a;
  private final wc.b b;
  private final wc.c c;
  
  public wf(Handler paramHandler, wc.b paramb, wc.c paramc)
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
        wf.a(wf.this).a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     wf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */