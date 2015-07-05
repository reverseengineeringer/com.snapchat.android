import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.Timber;
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

public final class ajm
  extends aim
{
  private static final int MAX_UPLOAD_MEDIA_SIZE = 5242880;
  private static final String TAG = "SnapVideobryo";
  public Bitmap mFirstFrameBitmap;
  public FragmentShader.Filter mShaderFilter;
  private final ajn mSnapWomb;
  private final nq mSnapbryoAnalytics;
  public wu mTranscodingState;
  
  protected ajm(ajm.a parama)
  {
    super(parama);
    mTranscodingState = mTranscodingState;
    mShaderFilter = mShaderFilter;
    mSnapWomb = mSnapWomb;
    mSnapbryoAnalytics = mSnapbryoAnalytics;
    mFirstFrameBitmap = mFirstFrameBitmap;
  }
  
  private ajm r()
  {
    return new ajm.a().a(this).c();
  }
  
  public final void a(@cgc Bitmap paramBitmap)
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
    Timber.f("SnapVideobryo", "Transcoding failed with: " + paramStatus + " failing upload", new Object[0]);
    mSnapbryoAnalytics.b();
    mSnapWomb.a(this, MediaMailingMetadata.UploadStatus.FAILED);
  }
  
  @cgc
  public final byte[] g()
  {
    if (mVideoUri == null)
    {
      nq.a(this, "Null Video Uri");
      return null;
    }
    Object localObject = n();
    if (localObject == null)
    {
      nq.a(this, "Null Video File");
      return null;
    }
    Bitmap localBitmap = mCompositeImageBitmap;
    if (localBitmap != null)
    {
      try
      {
        new awt();
        String str = awt.a("Snapchat-", ".zip.nomedia");
        avi localavi = new avi();
        localavi.a("media~" + str, (String)localObject);
        localavi.a("overlay~" + str, aur.a(localBitmap));
        out.close();
        localObject = mByteArrayOutputStream.toByteArray();
        if (localObject == null)
        {
          nq.a(this, "Null Zipped Video");
          return null;
        }
      }
      catch (IOException localIOException1)
      {
        nq.a(this, localIOException1.getMessage());
        return null;
      }
      if (localIOException1.length >= 5242880)
      {
        nq.a(this, String.format("Large Zipped Video (File Size: %s)", new Object[] { Integer.valueOf(localIOException1.length) }));
        return null;
      }
      return localIOException1;
    }
    try
    {
      byte[] arrayOfByte = FileUtils.readFileToByteArray(new File(localIOException1));
      if (arrayOfByte.length >= 5242880)
      {
        nq.a(this, String.format("Large UnZipped Video (File Size: %s)", new Object[] { Integer.valueOf(arrayOfByte.length) }));
        return null;
      }
    }
    catch (IOException localIOException2)
    {
      nq.a(this, localIOException2.getMessage());
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
    if (mVideoUri != null)
    {
      new awt();
      return awt.a(mVideoUri.getPath());
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
    extends aim.a<a>
  {
    public Bitmap mFirstFrameBitmap;
    FragmentShader.Filter mShaderFilter = FragmentShader.Filter.NORMAL;
    ajn mSnapWomb;
    nq mSnapbryoAnalytics;
    wu mTranscodingState = new wu();
    
    public final a a(ajm paramajm)
    {
      super.a(paramajm);
      mTranscodingState = ajm.a(paramajm);
      mShaderFilter = ajm.b(paramajm);
      mFirstFrameBitmap = ajm.c(paramajm);
      return this;
    }
    
    public final ajm c()
    {
      super.a();
      if (mSnapbryoAnalytics == null) {
        mSnapbryoAnalytics = new nq();
      }
      if (mSnapWomb == null) {
        mSnapWomb = ajn.a();
      }
      return new ajm(this);
    }
  }
}

/* Location:
 * Qualified Name:     ajm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */