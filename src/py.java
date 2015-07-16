import android.os.Bundle;
import android.os.SystemClock;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;

public class py
  extends pk
{
  private static final String TASK_NAME = "UploadMediaTask";
  @chc
  public byte[] mData;
  protected int mDataLength;
  public MediaMailingMetadata mMediaMailingMetadata;
  private final nz mMessagingAnalytics;
  private final aki mSnapWomb;
  public aji mSnapbryo;
  protected akp mUser = akp.g();
  private final xu mVideoTranscoder;
  
  public py(aji paramaji)
  {
    this(paramaji, mMediaMailingMetadata, aki.a(), xu.a(), nz.a());
  }
  
  private py(aji paramaji, MediaMailingMetadata paramMediaMailingMetadata, aki paramaki, xu paramxu, nz paramnz)
  {
    mSnapbryo = paramaji;
    mMediaMailingMetadata = paramMediaMailingMetadata;
    mSnapWomb = paramaki;
    mVideoTranscoder = paramxu;
    mMessagingAnalytics = paramnz;
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
          new zp().e(mSnapbryo);
          return;
        }
        new zo().a(mSnapbryo);
        return;
      }
      catch (acw.b localb)
      {
        new ErrorMetric(localb.getMessage()).a(localb).e();
        return;
      }
    }
  }
  
  @cbr
  protected final alp a(String... paramVarArgs)
  {
    if (mSnapbryo.mSnapType == Mediabryo.SnapType.DISCOVER) {
      a(axp.a.a().a(mSnapbryo));
    }
    for (;;)
    {
      if (mData == null) {
        mSnapWomb.a(mSnapbryo);
      }
      mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADING);
      return super.a(paramVarArgs);
      axv.a();
      a(axv.a(mSnapbryo));
    }
  }
  
  public String a()
  {
    return "/ph/upload";
  }
  
  public void a(alp paramalp)
  {
    super.a(paramalp);
  }
  
  public void a(String paramString, int paramInt)
  {
    nz.a(mSnapbryo, SystemClock.elapsedRealtime() - mStartMillis, mDataLength, false, bgp.b());
    if (mMediaMailingMetadata.mUploadStatus == MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE) {}
    for (;;)
    {
      return;
      if (!mMediaMailingMetadata.mRetried)
      {
        mMediaMailingMetadata.mRetried = true;
        new py(mSnapbryo, mMediaMailingMetadata, mSnapWomb, mVideoTranscoder, mMessagingAnalytics).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      }
      while (g() == 413)
      {
        paramString = new ErrorMetric("413 REQUEST_ENTITY_TOO_LARGE");
        if (mSnapbryo.mBaseFilter != null) {
          paramString.a("filter", mSnapbryo.mBaseFilter.a);
        }
        paramString.a("size", Integer.valueOf(mDataLength));
        paramString.a("type", Integer.valueOf(mSnapbryo.h()));
        paramString.e();
        return;
        mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.FAILED);
        d();
      }
    }
  }
  
  public Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", akr.l());
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
  
  public void b(alp paramalp)
  {
    if (mMediaMailingMetadata.mUploadStatus == MediaMailingMetadata.UploadStatus.WILL_UPLOAD_AFTER_SAVE) {
      return;
    }
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADED);
    nz.a(mSnapbryo, SystemClock.elapsedRealtime() - mStartMillis, mDataLength, true, bgp.b());
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
 * Qualified Name:     py
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */