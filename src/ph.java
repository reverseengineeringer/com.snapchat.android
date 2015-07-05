import android.os.Bundle;
import android.os.SystemClock;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;

public class ph
  extends ot
{
  private static final String TASK_NAME = "UploadMediaTask";
  @cgb
  public byte[] mData;
  protected int mDataLength;
  public MediaMailingMetadata mMediaMailingMetadata;
  private final ni mMessagingAnalytics;
  private final ajn mSnapWomb;
  public aim mSnapbryo;
  protected ajv mUser = ajv.g();
  private final wz mVideoTranscoder;
  
  public ph(aim paramaim)
  {
    this(paramaim, mMediaMailingMetadata, ajn.a(), wz.a(), ni.a());
  }
  
  private ph(aim paramaim, MediaMailingMetadata paramMediaMailingMetadata, ajn paramajn, wz paramwz, ni paramni)
  {
    mSnapbryo = paramaim;
    mMediaMailingMetadata = paramMediaMailingMetadata;
    mSnapWomb = paramajn;
    mVideoTranscoder = paramwz;
    mMessagingAnalytics = paramni;
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    mData = paramArrayOfByte;
    if (mData == null) {}
    for (int i = 0;; i = mData.length)
    {
      mDataLength = i;
      return;
    }
  }
  
  private void d()
  {
    boolean bool = mMediaMailingMetadata.b();
    if (mSnapbryo.mSnapType == Mediabryo.SnapType.SNAP) {
      bool = mMediaMailingMetadata).mShouldExecutePostStoryTaskAfterUpload | bool;
    }
    while (bool) {
      try
      {
        if (mSnapbryo.mSnapType == Mediabryo.SnapType.SNAP)
        {
          new yt().e(mSnapbryo);
          return;
        }
        new ys().a(mSnapbryo);
        return;
      }
      catch (abw.b localb)
      {
        new ErrorMetric(localb.getMessage()).a(localb).d();
        return;
      }
    }
  }
  
  @caq
  protected final aku a(String... paramVarArgs)
  {
    if (mSnapbryo.mSnapType == Mediabryo.SnapType.DISCOVER) {
      a(awr.a.a().a(mSnapbryo));
    }
    for (;;)
    {
      if (mData == null) {
        mSnapWomb.a(mSnapbryo);
      }
      mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADING);
      return super.a(paramVarArgs);
      awx.a();
      a(awx.a(mSnapbryo));
    }
  }
  
  public String a()
  {
    return "/ph/upload";
  }
  
  public void a(aku paramaku)
  {
    super.a(paramaku);
  }
  
  public void a(String paramString, int paramInt)
  {
    ni.a(mSnapbryo, SystemClock.elapsedRealtime() - mStartMillis, mDataLength, false, bfp.b());
    if (mMediaMailingMetadata.mUploadStatus == MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE) {}
    for (;;)
    {
      return;
      if (!mMediaMailingMetadata.mRetried)
      {
        mMediaMailingMetadata.mRetried = true;
        new ph(mSnapbryo, mMediaMailingMetadata, mSnapWomb, mVideoTranscoder, mMessagingAnalytics).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      }
      while (g() == 413)
      {
        paramString = new ErrorMetric("413 REQUEST_ENTITY_TOO_LARGE");
        if (mSnapbryo.mBaseFilter != null) {
          paramString.a("filter", mSnapbryo.mBaseFilter.a);
        }
        paramString.a("size", Integer.valueOf(mDataLength));
        paramString.a("type", Integer.valueOf(mSnapbryo.h()));
        paramString.d();
        return;
        mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.FAILED);
        d();
      }
    }
  }
  
  public Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
    localBundle.putString("media_id", mSnapbryo.mClientId);
    if (mSnapbryo.mSnapType == Mediabryo.SnapType.DISCOVER) {
      localBundle.putString("type", Integer.toString(4));
    }
    for (;;)
    {
      localBundle.putByteArray("data", mData);
      return localBundle;
      localBundle.putString("type", Integer.toString(mSnapbryo.h()));
    }
  }
  
  public void b(aku paramaku)
  {
    if (mMediaMailingMetadata.mUploadStatus == MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE) {
      return;
    }
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADED);
    ni.a(mSnapbryo, SystemClock.elapsedRealtime() - mStartMillis, mDataLength, true, bfp.b());
    d();
  }
  
  public String c()
  {
    return "UploadMediaTask";
  }
  
  public final class a
    extends Exception
  {}
}

/* Location:
 * Qualified Name:     ph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */