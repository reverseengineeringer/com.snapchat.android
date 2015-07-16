import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;

public final class ps$a
  extends Handler
{
  private static final long DELAY = 400L;
  private static final int MESSAGE_WHAT_SEARCH = 0;
  private static final String TAG = "StorySearchScheduler";
  private final ps.b mSearchTaskCallback;
  
  public ps$a(@chc ps.b paramb)
  {
    mSearchTaskCallback = paramb;
  }
  
  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    removeMessages(0);
    sendMessageDelayed(obtainMessage(0, paramString), 400L);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if ((what == 0) && ((obj instanceof String))) {
      new ps((String)obj, mSearchTaskCallback).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    }
  }
}

/* Location:
 * Qualified Name:     ps.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */