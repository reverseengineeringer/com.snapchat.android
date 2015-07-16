import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bqp$1
  extends Handler
{
  bqp$1(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    sendMessageDelayed(obtainMessage(), 1000L);
  }
}

/* Location:
 * Qualified Name:     bqp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */