import android.annotation.TargetApi;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;

@TargetApi(16)
final class be$a
  extends bo
{
  final Choreographer a;
  final Choreographer.FrameCallback b;
  boolean c;
  
  public be$a(Choreographer paramChoreographer)
  {
    a = paramChoreographer;
    b = new Choreographer.FrameCallback()
    {
      public final void doFrame(long paramAnonymousLong)
      {
        if ((!c) || (d == null)) {
          return;
        }
        d.b();
        a.postFrameCallback(b);
      }
    };
  }
  
  public final void a()
  {
    c = true;
    a.removeFrameCallback(b);
    a.postFrameCallback(b);
  }
  
  public final void b()
  {
    c = false;
    a.removeFrameCallback(b);
  }
}

/* Location:
 * Qualified Name:     be.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */