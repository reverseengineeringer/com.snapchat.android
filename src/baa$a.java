import android.os.Bundle;
import android.os.Message;

public final class baa$a
  implements Runnable
{
  private static final int MAX_TIMES = 250;
  private static final long SLEEP_DURATION_MS = 20L;
  
  protected baa$a(baa parambaa) {}
  
  public final void run()
  {
    int i = 0;
    while ((baa.a(this$0)) && (i < 250))
    {
      bab localbab = baa.b(this$0);
      Message localMessage = Message.obtain();
      what = 0;
      Bundle localBundle = new Bundle();
      localBundle.putLong("CURRENT_TIME", System.currentTimeMillis());
      localMessage.setData(localBundle);
      localbab.sendMessage(localMessage);
      i += 1;
      bgp.a(20L);
    }
  }
}

/* Location:
 * Qualified Name:     baa.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */