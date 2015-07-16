import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Inject;

public final class oh
{
  private static final long TIME_UNINITIALIZED = -1L;
  public String mReachability;
  public long mTimePressSend = -1L;
  
  public static void a(@chc aji paramaji, String paramString)
  {
    if ((paramaji instanceof aku)) {}
    for (String str = String.format("Transcoding Status: %s", new Object[] { mTranscodingState.c() });; str = "")
    {
      Object localObject = mMediaMailingMetadata;
      str = String.format("Upload Status: %s | Send Status: %s | Post Status: %s | %s", new Object[] { mUploadStatus, mSendStatus, mPostStatus, str });
      localObject = mClientId;
      new EasyMetric("SNAP_BAD_MEDIA").a("clientId", mClientId).a("mediaType", Integer.valueOf(paramaji.h())).a("reason", paramString).a("status_code", str).a(false);
      return;
    }
  }
  
  public final void a()
  {
    mTimePressSend = SystemClock.elapsedRealtime();
    mReachability = bgp.b();
  }
  
  public final void b()
  {
    if (mTimePressSend == -1L)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException();
      }
    }
    else
    {
      long l1 = SystemClock.elapsedRealtime();
      long l2 = mTimePressSend;
      new EasyMetric("SNAP_SEND_TIMED").a("success", Boolean.valueOf(false)).a("reachability", mReachability).a(l1 - l2).e();
      mTimePressSend = -1L;
    }
  }
}

/* Location:
 * Qualified Name:     oh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */