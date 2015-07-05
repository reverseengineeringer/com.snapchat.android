import android.os.Handler;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class arl
  implements ark
{
  final ark a;
  private final Handler b;
  
  public arl(@cgb Handler paramHandler, @cgb ark paramark)
  {
    b = paramHandler;
    a = paramark;
  }
  
  private static boolean a()
  {
    return !bgp.c();
  }
  
  public final void a(final arj paramarj)
  {
    if (a())
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          a.a(paramarj);
        }
      });
      return;
    }
    a.a(paramarj);
  }
  
  public final void a(final arj paramarj, final SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    if (a())
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          a.a(paramarj, paramSnapViewSessionStopReason);
        }
      });
      return;
    }
    a.a(paramarj, paramSnapViewSessionStopReason);
  }
}

/* Location:
 * Qualified Name:     arl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */