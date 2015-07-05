import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

public final class or
  extends oq
{
  private static final String PATH = "/bq/retry_post_story";
  private static final String TASK_NAME = "PostStorySnapWithMediaTask";
  private byte[] mData;
  private final Bus mEventBus;
  private final awx mSendSnapCacheWrapper;
  private final ajn mSnapWomb;
  private final wz mVideoTranscoder;
  
  public or(aim paramaim, oq.a parama)
  {
    this(paramaim, parama, ajn.a(), wz.a(), awx.a(), ban.a());
  }
  
  private or(aim paramaim, oq.a parama, ajn paramajn, wz paramwz, awx paramawx, Bus paramBus)
  {
    super(paramaim, parama);
    mSnapWomb = paramajn;
    mVideoTranscoder = paramwz;
    mSendSnapCacheWrapper = paramawx;
    mEventBus = paramBus;
  }
  
  protected final aku a(String... paramVarArgs)
  {
    mData = awx.a(mSnapbryo);
    if (mData == null)
    {
      paramVarArgs = mSnapbryo;
      mSnapWomb.a(paramVarArgs);
      cancel(true);
      d();
      mEventBus.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493512));
      paramVarArgs = new oa(String.format("Story media is no longer accessible :( | Client ID: %s", new Object[] { mSnapbryo.mClientId }));
      new ErrorMetric(paramVarArgs.getMessage()).a(paramVarArgs).a(false);
      Timber.e("PostStorySnapWithMediaTask", paramVarArgs.getMessage(), new Object[0]);
    }
    while (isCancelled()) {
      return null;
    }
    long l = mData.length;
    mNetworkAnalytics.a("STORY_POST_DELAY", "SNAP_SENT_STORY_DUMMY", mSnapbryo.mClientId, "/bq/retry_post_story", l);
    return super.a(paramVarArgs);
  }
  
  protected final String a()
  {
    return "/bq/retry_post_story";
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    localBundle.putByteArray("data", mData);
    return localBundle;
  }
  
  protected final String c()
  {
    return "PostStorySnapWithMediaTask";
  }
  
  protected final void e()
  {
    new or(mSnapbryo, mPostStorySnapCallback, mSnapWomb, mVideoTranscoder, mSendSnapCacheWrapper, mEventBus).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     or
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */