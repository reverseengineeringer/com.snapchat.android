import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import java.util.Map;
import java.util.UUID;

public class aww
  extends AsyncTask<aim, Void, Boolean>
{
  protected static final String TAG = "SaveSentSnapToCacheTask";
  private final awx mSendSnapCacheWrapper;
  private final no mSnapCaptureAnalytics;
  private final ajn mSnapWomb;
  private final String mUUID;
  private final bfj mVideoMetadataFetcher;
  private final wz mVideoTranscoder;
  
  public aww()
  {
    this(ajn.a(), wz.a(), awx.a(), new bfj(), no.a(), UUID.randomUUID().toString());
  }
  
  private aww(ajn paramajn, wz paramwz, awx paramawx, bfj parambfj, no paramno, String paramString)
  {
    mSnapWomb = paramajn;
    mVideoTranscoder = paramwz;
    mSendSnapCacheWrapper = paramawx;
    mVideoMetadataFetcher = parambfj;
    mSnapCaptureAnalytics = paramno;
    mUUID = paramString;
  }
  
  private boolean a(@cgb ajm paramajm)
  {
    try
    {
      if (mTranscodingState.a(paramajm.o()))
      {
        bool = mVideoTranscoder.b(paramajm);
        Timber.c("SaveSentSnapToCacheTask", "Transcoding finished successfully? [%s]", new Object[] { Boolean.valueOf(bool) });
        if (!bool)
        {
          mSnapWomb.a(paramajm);
          return false;
        }
      }
      boolean bool = mSendSnapCacheWrapper.a(paramajm, mVideoMetadataFetcher);
      return bool;
    }
    catch (InterruptedException paramajm)
    {
      Timber.f("SaveSentSnapToCacheTask", paramajm.getMessage(), new Object[0]);
    }
    return false;
  }
  
  public void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    no localno = mSnapCaptureAnalytics;
    String str = mUUID;
    boolean bool = paramBoolean.booleanValue();
    paramBoolean = (EasyMetric)mMetricMap.get(str);
    if (paramBoolean != null) {
      paramBoolean.a("success", Boolean.valueOf(bool)).b(false);
    }
  }
}

/* Location:
 * Qualified Name:     aww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */