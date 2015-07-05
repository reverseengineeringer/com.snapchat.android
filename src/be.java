import android.annotation.TargetApi;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;

public abstract class be
{
  @TargetApi(16)
  static final class a
    extends bo
  {
    final Choreographer a;
    final Choreographer.FrameCallback b;
    boolean c;
    
    public a(Choreographer paramChoreographer)
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
  
  static final class b
    extends bo
  {
    final Handler a;
    final Runnable b;
    boolean c;
    
    public b(Handler paramHandler)
    {
      a = paramHandler;
      b = new Runnable()
      {
        public final void run()
        {
          if ((!c) || (d == null)) {
            return;
          }
          d.b();
          a.post(b);
        }
      };
    }
    
    public final void a()
    {
      c = true;
      a.removeCallbacks(b);
      a.post(b);
    }
    
    public final void b()
    {
      c = false;
      a.removeCallbacks(b);
    }
  }
}

/* Location:
 * Qualified Name:     be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */