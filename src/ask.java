import android.os.Handler;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class ask
  implements asj
{
  final asj a;
  private final Handler b;
  
  public ask(@chc Handler paramHandler, @chc asj paramasj)
  {
    b = paramHandler;
    a = paramasj;
  }
  
  private static boolean a()
  {
    return !bhp.c();
  }
  
  public final void a(final asi paramasi)
  {
    if (a())
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          a.a(paramasi);
        }
      });
      return;
    }
    a.a(paramasi);
  }
  
  public final void a(final asi paramasi, final SnapViewSessionStopReason paramSnapViewSessionStopReason)
  {
    if (a())
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          a.a(paramasi, paramSnapViewSessionStopReason);
        }
      });
      return;
    }
    a.a(paramasi, paramSnapViewSessionStopReason);
  }
}

/* Location:
 * Qualified Name:     ask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */