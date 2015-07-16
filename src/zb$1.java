import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.model.chat.ChatConversation;

public final class zb$1
  implements Runnable
{
  public zb$1(zb paramzb, ChatConversation paramChatConversation, Handler paramHandler) {}
  
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
 * Qualified Name:     zb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */