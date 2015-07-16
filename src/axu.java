import android.os.AsyncTask;
import com.snapchat.android.analytics.framework.EasyMetric;
import java.util.Map;
import java.util.UUID;

public class axu
  extends AsyncTask<aji, Void, Boolean>
{
  protected static final String TAG = "SaveSentSnapToCacheTask";
  private final axv mSendSnapCacheWrapper;
  private final of mSnapCaptureAnalytics;
  private final aki mSnapWomb;
  private final String mUUID;
  private final bgj mVideoMetadataFetcher;
  private final xu mVideoTranscoder;
  
  public axu()
  {
    this(aki.a(), xu.a(), axv.a(), new bgj(), of.a(), UUID.randomUUID().toString());
  }
  
  private axu(aki paramaki, xu paramxu, axv paramaxv, bgj parambgj, of paramof, String paramString)
  {
    mSnapWomb = paramaki;
    mVideoTranscoder = paramxu;
    mSendSnapCacheWrapper = paramaxv;
    mVideoMetadataFetcher = parambgj;
    mSnapCaptureAnalytics = paramof;
    mUUID = paramString;
  }
  
  private boolean a(@chc aku paramaku)
  {
    try
    {
      if (mTranscodingState.a(paramaku.o()))
      {
        bool = mVideoTranscoder.b(paramaku);
        if (!bool)
        {
          mSnapWomb.a(paramaku);
          return false;
        }
      }
      boolean bool = mSendSnapCacheWrapper.a(paramaku, mVideoMetadataFetcher);
      return bool;
    }
    catch (InterruptedException paramaku)
    {
      paramaku.getMessage();
    }
    return false;
  }
  
  public void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    of localof = mSnapCaptureAnalytics;
    String str = mUUID;
    boolean bool = paramBoolean.booleanValue();
    paramBoolean = (EasyMetric)mMetricMap.get(str);
    if (paramBoolean != null) {
      paramBoolean.a("success", Boolean.valueOf(bool)).b(false);
    }
  }
}

/* Location:
 * Qualified Name:     axu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */