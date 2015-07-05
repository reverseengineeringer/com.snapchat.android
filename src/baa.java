import android.os.Bundle;
import android.os.Message;

public final class baa
{
  public static final String CURRENT_TIME_KEY = "CURRENT_TIME";
  private static final baa INSTANCE = new baa();
  public static final int LATENCY_CHECKER = 0;
  private static final String TAG = "UILatencyChecker";
  public boolean mDeferPause;
  private boolean mRunning = true;
  private String mStartPage;
  protected Thread mUILatencyCheckerThread;
  private final bab mUIThreadLatencyHandler = new bab();
  
  public static baa a()
  {
    return INSTANCE;
  }
  
  public final void a(String paramString)
  {
    if (!mDeferPause)
    {
      mRunning = true;
      mStartPage = paramString;
      mUIThreadLatencyHandler.a();
      mUILatencyCheckerThread = new Thread(new baa.a());
      mUILatencyCheckerThread.start();
    }
  }
  
  public final void a(String paramString, boolean paramBoolean)
  {
    mDeferPause = false;
    mRunning = false;
    mUIThreadLatencyHandler.a(mStartPage, paramString, paramBoolean);
  }
  
  public final class a
    implements Runnable
  {
    private static final int MAX_TIMES = 250;
    private static final long SLEEP_DURATION_MS = 20L;
    
    protected a() {}
    
    public final void run()
    {
      int i = 0;
      while ((baa.a(baa.this)) && (i < 250))
      {
        bab localbab = baa.b(baa.this);
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
}

/* Location:
 * Qualified Name:     baa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */