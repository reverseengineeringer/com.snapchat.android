import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.MediaMailingMetadata.SendStatus;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.videotranscoder.task.Task.Status;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrixFactory;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.zip.ZipOutputStream;
import org.apache.commons.io.FileUtils;

public final class aku
  extends aji
{
  private static final int MAX_UPLOAD_MEDIA_SIZE = 5242880;
  private static final String TAG = "VideoSnapbryo";
  public Bitmap mFirstFrameBitmap;
  public FragmentShader.Filter mShaderFilter;
  private final aki mSnapWomb;
  private final oh mSnapbryoAnalytics;
  public xp mTranscodingState;
  
  protected aku(aku.a parama)
  {
    super(parama);
    mTranscodingState = mTranscodingState;
    mShaderFilter = mShaderFilter;
    mSnapWomb = mSnapWomb;
    mSnapbryoAnalytics = mSnapbryoAnalytics;
    mFirstFrameBitmap = mFirstFrameBitmap;
  }
  
  private aku r()
  {
    return new aku.a().a(this).c();
  }
  
  public final void a(@chd Bitmap paramBitmap)
  {
    super.a(paramBitmap);
    if (mCompositeImageBitmap != null)
    {
      mIsZipUpload = true;
      return;
    }
    mIsZipUpload = false;
  }
  
  public final void a(Task.Status paramStatus)
  {
    mTranscodingState.a(paramStatus);
  }
  
  public final void b(Task.Status paramStatus)
  {
    MediaMailingMetadata localMediaMailingMetadata = mMediaMailingMetadata;
    mRetried = true;
    mSendStatus = MediaMailingMetadata.SendStatus.FAILED;
    localMediaMailingMetadata.a(MediaMailingMetadata.PostStatus.FAILED);
    new StringBuilder("Transcoding failed with: ").append(paramStatus).append(" failing upload");
    mSnapbryoAnalytics.b();
    mSnapWomb.a(this, MediaMailingMetadata.UploadStatus.FAILED);
  }
  
  @chd
  public final byte[] g()
  {
    if (mVideoUri == null)
    {
      oh.a(this, "Null Video Uri");
      return null;
    }
    Object localObject = n();
    if (localObject == null)
    {
      oh.a(this, "Null Video File");
      return null;
    }
    Bitmap localBitmap = mCompositeImageBitmap;
    if (localBitmap != null)
    {
      try
      {
        String str = axr.a("Snapchat-", ".zip.nomedia");
        awg localawg = new awg();
        localawg.a("media~" + str, (String)localObject);
        localawg.a("overlay~" + str, avp.a(localBitmap));
        out.close();
        localObject = mByteArrayOutputStream.toByteArray();
        if (localObject == null)
        {
          oh.a(this, "Null Zipped Video");
          return null;
        }
      }
      catch (IOException localIOException1)
      {
        oh.a(this, localIOException1.getMessage());
        return null;
      }
      if (localIOException1.length >= 5242880)
      {
        oh.a(this, String.format("Large Zipped Video (File Size: %s)", new Object[] { Integer.valueOf(localIOException1.length) }));
        return null;
      }
      return localIOException1;
    }
    try
    {
      byte[] arrayOfByte = FileUtils.readFileToByteArray(new File(localIOException1));
      if (arrayOfByte.length >= 5242880)
      {
        oh.a(this, String.format("Large UnZipped Video (File Size: %s)", new Object[] { Integer.valueOf(arrayOfByte.length) }));
        return null;
      }
    }
    catch (IOException localIOException2)
    {
      oh.a(this, localIOException2.getMessage());
      return null;
    }
    return localIOException2;
  }
  
  public final int h()
  {
    if (m()) {
      return 2;
    }
    return 1;
  }
  
  public final void l()
  {
    super.l();
    a(new Bitmap[] { mFirstFrameBitmap });
    mFirstFrameBitmap = null;
  }
  
  public final String n()
  {
    if (mTranscodingState.c() == Task.Status.FINISHED) {
      return mTranscodingState.b();
    }
    if (mVideoUri == null) {
      return null;
    }
    return mVideoUri.getPath();
  }
  
  public final boolean o()
  {
    return p() > 1730151L;
  }
  
  public final long p()
  {
    if (mVideoUri != null) {
      return axr.a(mVideoUri.getPath());
    }
    return 0L;
  }
  
  public final float[] q()
  {
    ImageTransformationMatrix localImageTransformationMatrix = new ImageTransformationMatrixFactory().getTransformationMatrix(mIsFrontFacingSnap);
    switch (mSnapOrientation)
    {
    default: 
      return localImageTransformationMatrix.rotateLeft();
    case 0: 
      return localImageTransformationMatrix.adjustForTranscoderTransformation();
    case 90: 
      return localImageTransformationMatrix.rotateRight();
    }
    return localImageTransformationMatrix.rotate180Degrees();
  }
  
  public static final class a
    extends aji.a<a>
  {
    public Bitmap mFirstFrameBitmap;
    FragmentShader.Filter mShaderFilter = FragmentShader.Filter.NORMAL;
    aki mSnapWomb;
    oh mSnapbryoAnalytics;
    xp mTranscodingState = new xp();
    
    public final a a(aku paramaku)
    {
      super.a(paramaku);
      mTranscodingState = aku.a(paramaku);
      mShaderFilter = aku.b(paramaku);
      mFirstFrameBitmap = aku.c(paramaku);
      return this;
    }
    
    public final aku c()
    {
      super.a();
      if (mSnapbryoAnalytics == null) {
        mSnapbryoAnalytics = new oh();
      }
      if (mSnapWomb == null) {
        mSnapWomb = aki.a();
      }
      return new aku(this);
    }
  }
}

/* Location:
 * Qualified Name:     aku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */