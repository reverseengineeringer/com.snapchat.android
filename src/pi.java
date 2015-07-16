import android.os.Bundle;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;

public final class pi
  extends ph
{
  private static final String PATH = "/bq/retry_post_story";
  private static final String TASK_NAME = "PostStorySnapWithMediaTask";
  private byte[] mData;
  private final Bus mEventBus;
  private final axv mSendSnapCacheWrapper;
  private final aki mSnapWomb;
  private final xu mVideoTranscoder;
  
  public pi(aji paramaji, ph.a parama)
  {
    this(paramaji, parama, aki.a(), xu.a(), axv.a(), bbo.a());
  }
  
  private pi(aji paramaji, ph.a parama, aki paramaki, xu paramxu, axv paramaxv, Bus paramBus)
  {
    super(paramaji, parama);
    mSnapWomb = paramaki;
    mVideoTranscoder = paramxu;
    mSendSnapCacheWrapper = paramaxv;
    mEventBus = paramBus;
  }
  
  protected final alp a(String... paramVarArgs)
  {
    mData = axv.a(mSnapbryo);
    if (mData == null)
    {
      paramVarArgs = mSnapbryo;
      mSnapWomb.a(paramVarArgs);
      cancel(true);
      d();
      mEventBus.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493512));
      paramVarArgs = new or(String.format("Story media is no longer accessible :( | Client ID: %s", new Object[] { mSnapbryo.mClientId }));
      new ErrorMetric(paramVarArgs.getMessage()).a(paramVarArgs).a(false);
      paramVarArgs.getMessage();
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
    new pi(mSnapbryo, mPostStorySnapCallback, mSnapWomb, mVideoTranscoder, mSendSnapCacheWrapper, mEventBus).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     pi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */