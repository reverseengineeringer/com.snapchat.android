import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.snapchat.android.Timber;

public final class pb$a
  extends Handler
{
  private static final long DELAY = 400L;
  private static final int MESSAGE_WHAT_SEARCH = 0;
  private static final String TAG = "StorySearchScheduler";
  private final pb.b mSearchTaskCallback;
  
  public pb$a(@cgb pb.b paramb)
  {
    mSearchTaskCallback = paramb;
  }
  
  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    Timber.c("StorySearchScheduler", "scheduleSearch - query: " + paramString, new Object[0]);
    removeMessages(0);
    sendMessageDelayed(obtainMessage(0, paramString), 400L);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if ((what == 0) && ((obj instanceof String)))
    {
      paramMessage = (String)obj;
      Timber.c("StorySearchScheduler", "Execute task - query: " + paramMessage, new Object[0]);
      new pb(paramMessage, mSearchTaskCallback).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    }
  }
}

/* Location:
 * Qualified Name:     pb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */