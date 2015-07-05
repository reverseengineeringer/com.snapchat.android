import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import java.util.ArrayList;

public final class pb
  extends ot
{
  private static final String TASK_NAME = "SharedStorySearchTask";
  private pb.b mCallback;
  private String mQuery;
  
  public pb(@cgb String paramString, @cgb pb.b paramb)
  {
    mQuery = paramString;
    mCallback = paramb;
  }
  
  protected final String a()
  {
    return "/loq/friend_search";
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
    localBundle.putString("query", mQuery);
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    if (result != null) {
      mCallback.a(result);
    }
  }
  
  protected final String c()
  {
    return "SharedStorySearchTask";
  }
  
  public static final class a
    extends Handler
  {
    private static final long DELAY = 400L;
    private static final int MESSAGE_WHAT_SEARCH = 0;
    private static final String TAG = "StorySearchScheduler";
    private final pb.b mSearchTaskCallback;
    
    public a(@cgb pb.b paramb)
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
  
  public static abstract interface b
  {
    public abstract void a(ArrayList<afl> paramArrayList);
  }
}

/* Location:
 * Qualified Name:     pb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */