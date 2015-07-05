import com.snapchat.android.Timber;
import java.util.concurrent.ConcurrentHashMap;

final class yh$2
  implements Runnable
{
  yh$2(yh paramyh, String paramString) {}
  
  public final void run()
  {
    b.d.remove(a);
    if (b.c(a))
    {
      Timber.g("ChatGapDetector", "CHAT-LOG: Executing conversation refresh", new Object[0]);
      b.a.a(a, false);
      return;
    }
    Timber.g("ChatGapDetector", "CHAT-LOG: Not executing conversation refresh because connection seqNum gap is filled", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     yh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */