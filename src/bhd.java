import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.snapchat.videotranscoder.task.ImageFileMediaSource;
import com.snapchat.videotranscoder.task.MediaSource;
import com.snapchat.videotranscoder.task.SetupException;
import com.snapchat.videotranscoder.utils.ImageTransformationMatrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public final class bhd
  extends bgm
{
  private static final String TAG = "MediaSourceFactory";
  private final Context mContext;
  private List<String> mDecryptedSnapImageKeysToRemove = new ArrayList();
  public List<ajl> mDecryptedSnapVideosToRelease = new ArrayList();
  public final ImageTransformationMatrix mImageTransformationMatrix;
  private final Random mRandom;
  public final axx mSnapVideoDecryptor;
  
  public bhd(@chc Context paramContext)
  {
    this(paramContext, new Random(), new axx(), new ImageTransformationMatrix());
  }
  
  private bhd(@chc Context paramContext, @chc Random paramRandom, @chc axx paramaxx, @chc ImageTransformationMatrix paramImageTransformationMatrix)
  {
    if (paramContext == null) {
      throw new NullPointerException("context is null");
    }
    mContext = paramContext;
    mRandom = paramRandom;
    mSnapVideoDecryptor = paramaxx;
    mImageTransformationMatrix = paramImageTransformationMatrix;
  }
  
  public final MediaSource a(@chc akl paramakl)
  {
    Object localObject = paramakl.a(mContext);
    if (localObject == null) {
      throw new SetupException("Bitmap was null");
    }
    String str = "SaveStoryToGalleryImage" + mRandom.nextLong();
    try
    {
      axo.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.a(str, (Bitmap)localObject, Bitmap.CompressFormat.PNG);
      mDecryptedSnapImageKeysToRemove.add(str);
      localObject = axo.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.b(str);
      if (localObject == null) {
        throw new SetupException("Key not found in cache: " + str);
      }
    }
    catch (axq paramakl)
    {
      throw new SetupException("External storage not available to write bitmap: " + paramakl.toString(), paramakl);
    }
    return new ImageFileMediaSource((String)localObject, (int)paramakl.G() * 1000);
  }
  
  public final void c()
  {
    Iterator localIterator = mDecryptedSnapImageKeysToRemove.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      axo.SAVE_STORY_TO_GALLERY_IMAGE_CACHE.c(str);
    }
    localIterator = mDecryptedSnapVideosToRelease.iterator();
    while (localIterator.hasNext()) {
      ((ajl)localIterator.next()).e();
    }
    mDecryptedSnapImageKeysToRemove.clear();
    mDecryptedSnapVideosToRelease.clear();
  }
  
  public final void finalize()
  {
    if ((!mDecryptedSnapImageKeysToRemove.isEmpty()) || (!mDecryptedSnapVideosToRelease.isEmpty())) {
      e();
    }
  }
}

/* Location:
 * Qualified Name:     bhd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */