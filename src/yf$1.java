import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.model.chat.ChatConversation;

public final class yf$1
  implements Runnable
{
  public yf$1(yf paramyf, ChatConversation paramChatConversation, Handler paramHandler) {}
  
  public final void run()
  {
    if (SystemClock.elapsedRealtime() - a.mLastSCCPMessageSentTimestamp >= 15000L)
    {
      a.l();
      return;
    }
    b.postDelayed(this, 10000L);
  }
}

/* Location:
 * Qualified Name:     yf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */