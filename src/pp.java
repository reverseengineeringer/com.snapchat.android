import android.os.Bundle;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.Mediabryo;

public final class pp
  extends po
{
  private static final String PATH = "/loq/retry";
  private static final String TASK_NAME = "SendSnapWithMediaTask";
  private byte[] mData;
  private final axv mSendSnapCacheWrapper;
  private final aki mSnapWomb;
  
  public pp(aji paramaji, po.a parama)
  {
    this(paramaji, parama, axv.a(), aki.a());
  }
  
  private pp(aji paramaji, po.a parama, axv paramaxv, aki paramaki)
  {
    super(paramaji, parama);
    mSendSnapCacheWrapper = paramaxv;
    mSnapWomb = paramaki;
  }
  
  @cbr
  protected final alp a(String... paramVarArgs)
  {
    mData = axv.a(mSnapbryo);
    if (mData == null)
    {
      paramVarArgs = mSnapbryo;
      mSnapWomb.a(paramVarArgs);
      mSnapWomb.a(paramVarArgs, MediaMailingMetadata.SendStatus.FAILED);
      cancel(true);
      paramVarArgs = new or(String.format("Snap media is no longer accessible :( | Client ID: %s", new Object[] { mSnapbryo.mClientId }));
      new ErrorMetric(paramVarArgs.getMessage()).a(paramVarArgs).a(false);
      paramVarArgs.getMessage();
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
    new pp(mSnapbryo, mSendSnapCallback).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     pp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */