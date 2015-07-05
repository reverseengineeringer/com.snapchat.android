import android.os.Handler;
import android.os.Message;
import java.util.Queue;

final class bvv$1
  extends Handler
{
  bvv$1(bvv parambvv) {}
  
  public final void handleMessage(final Message paramMessage)
  {
    paramMessage = (bvv.b)a.a.poll();
    if (!c)
    {
      i = d - 1;
      d = i;
      if (i >= 0) {
        break label78;
      }
    }
    label78:
    for (int i = 0;; i = 1)
    {
      if (i != 0) {
        postDelayed(new Runnable()
        {
          public final void run()
          {
            a.a.add(paramMessage);
            a.a();
          }
        }, 3000L);
      }
      a.b = false;
      a.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bvv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */