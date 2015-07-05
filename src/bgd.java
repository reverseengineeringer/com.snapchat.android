import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.task.ImageFileMediaSource;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public final class bgd
  extends bfm
{
  private static final String TAG = "MediaSourceFactory";
  private final Context mContext;
  private List<String> mDecryptedSnapImageKeysToRemove = new ArrayList();
  public List<aip> mDecryptedSnapVideosToRelease = new ArrayList();
  public final ImageTransformationMatrix mImageTransformationMatrix;
  private final Random mRandom;
  public final awz mSnapVideoDecryptor;
  
  public bgd(@cgb Context paramContext)
  {
    this(paramContext, new Random(), new awz(), new ImageTransformationMatrix());
  }
  
  private bgd(@cgb Context paramContext, @cgb Random paramRandom, @cgb awz paramawz, @cgb ImageTransformationMatrix paramImageTransformationMatrix)
  {
    if (paramContext == null) {
      throw new NullPointerException("context is null");
    }
    mContext = paramContext;
    mRandom = paramRandom;
    mSnapVideoDecryptor = paramawz;
    mImageTransformationMatrix = paramImageTransformationMatrix;
  }
  
  public final MediaSource a(@cgb ajr paramajr)
  {
    Object localObject = paramajr.a(mContext);
    if (localObject == null) {
      throw new SetupException("Bitmap was null");
    }
    String str = "SaveStoryToGalleryImage" + mRandom.nextLong();
    try
    {
      awq.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.a(str, (Bitmap)localObject, Bitmap.CompressFormat.PNG);
      mDecryptedSnapImageKeysToRemove.add(str);
      localObject = awq.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.b(str);
      if (localObject == null) {
        throw new SetupException("Key not found in cache: " + str);
      }
    }
    catch (aws paramajr)
    {
      throw new SetupException("External storage not available to write bitmap: " + paramajr.toString(), paramajr);
    }
    return new ImageFileMediaSource((String)localObject, (int)paramajr.F() * 1000);
  }
  
  public final void c()
  {
    Iterator localIterator = mDecryptedSnapImageKeysToRemove.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      awq.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.c(str);
    }
    localIterator = mDecryptedSnapVideosToRelease.iterator();
    while (localIterator.hasNext()) {
      ((aip)localIterator.next()).e();
    }
    mDecryptedSnapImageKeysToRemove.clear();
    mDecryptedSnapVideosToRelease.clear();
  }
  
  public final void finalize()
  {
    if ((!mDecryptedSnapImageKeysToRemove.isEmpty()) || (!mDecryptedSnapVideosToRelease.isEmpty()))
    {
      Timber.f("MediaSourceFactory", "Failed to call release() on MediaSourceFactory", new Object[0]);
      e();
    }
  }
}

/* Location:
 * Qualified Name:     bgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */