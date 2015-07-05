import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;

public final class oy
  extends ox
{
  private static final String PATH = "/loq/retry";
  private static final String TASK_NAME = "SendSnapWithMediaTask";
  private byte[] mData;
  private final awx mSendSnapCacheWrapper;
  private final ajn mSnapWomb;
  
  public oy(aim paramaim, ox.a parama)
  {
    this(paramaim, parama, awx.a(), ajn.a());
  }
  
  private oy(aim paramaim, ox.a parama, awx paramawx, ajn paramajn)
  {
    super(paramaim, parama);
    mSendSnapCacheWrapper = paramawx;
    mSnapWomb = paramajn;
  }
  
  @caq
  protected final aku a(String... paramVarArgs)
  {
    mData = awx.a(mSnapbryo);
    if (mData == null)
    {
      paramVarArgs = mSnapbryo;
      mSnapWomb.a(paramVarArgs);
      mSnapWomb.a(paramVarArgs, MediaMailingMetadata.SendStatus.FAILED);
      cancel(true);
      paramVarArgs = new oa(String.format("Snap media is no longer accessible :( | Client ID: %s", new Object[] { mSnapbryo.mClientId }));
      new ErrorMetric(paramVarArgs.getMessage()).a(paramVarArgs).a(false);
      Timber.e("SendSnapWithMediaTask", paramVarArgs.getMessage(), new Object[0]);
      return null;
    }
    long l = mData.length;
    mNetworkAnalytics.a("SNAP_SENT_DELAY", "SNAP_SENT_SNAP_DUMMY", mSnapbryo.mClientId, "/loq/retry", l);
    return super.a(paramVarArgs);
  }
  
  protected final String a()
  {
    return "/loq/retry";
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    localBundle.putString("type", String.valueOf(mSnapbryo.h()));
    localBundle.putByteArray("data", mData);
    return localBundle;
  }
  
  protected final String c()
  {
    return "SendSnapWithMediaTask";
  }
  
  protected final void d()
  {
    new oy(mSnapbryo, mSendSnapCallback).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     oy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */