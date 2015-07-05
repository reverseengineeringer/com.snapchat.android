import com.snapchat.android.Timber;
import java.util.Set;

final class axq$3
  implements Runnable
{
  axq$3(axq paramaxq, String paramString) {}
  
  public final void run()
  {
    axq localaxq = this$0;
    String str = val$pingId;
    if (mPingIds.remove(str))
    {
      Timber.g("SecureChatSessionPinger", "CHAT-LOG: PING TIMED OUT! " + str, new Object[0]);
      mInterface.f();
    }
  }
}

/* Location:
 * Qualified Name:     axq.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */