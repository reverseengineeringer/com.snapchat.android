import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;

final class be$a$1
  implements Choreographer.FrameCallback
{
  be$a$1(be.a parama) {}
  
  public final void doFrame(long paramLong)
  {
    if ((!a.c) || (a.d == null)) {
      return;
    }
    a.d.b();
    a.a.postFrameCallback(a.b);
  }
}

/* Location:
 * Qualified Name:     be.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */