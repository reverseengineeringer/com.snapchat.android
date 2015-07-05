import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;
import java.io.File;
import java.io.FileOutputStream;

public class bgb
  extends AsyncTask<Void, Void, String>
{
  private static final int JPEG_COMPRESSION = 95;
  private static final String TAG = "SaveImageToGalleryTask";
  @cgc
  private final Bitmap mBitmap;
  private final CameraEventAnalytics mCameraEventAnalytics;
  protected final Context mContext;
  private final bgc mNotifications;
  private final SaveMediaNotificationsToShow mNotificationsToShow;
  private final CameraEventAnalytics.SaveSnapContext mSaveSnapContext;
  private final boolean mSaveToSnapchatDirectory;
  @cgc
  private final ajr mStorySnap;
  
  private bgb(@cgb Context paramContext, @cgc ajr paramajr, @cgc Bitmap paramBitmap, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, boolean paramBoolean)
  {
    if ((paramajr == null) && (paramBitmap == null)) {
      throw new NullPointerException("storySnap and bitmap are both null");
    }
    mContext = ((Context)ck.a(paramContext));
    mStorySnap = paramajr;
    mBitmap = paramBitmap;
    mSaveSnapContext = paramSaveSnapContext;
    mNotificationsToShow = ((SaveMediaNotificationsToShow)ck.a(paramSaveMediaNotificationsToShow));
    mCameraEventAnalytics = CameraEventAnalytics.a();
    mNotifications = bgc.a();
    mSaveToSnapchatDirectory = paramBoolean;
  }
  
  public bgb(@cgb Context paramContext, @cgb ajr paramajr, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, paramajr, null, paramSaveSnapContext, paramSaveMediaNotificationsToShow, true);
  }
  
  public bgb(@cgb Context paramContext, @cgb Bitmap paramBitmap)
  {
    this(paramContext, null, paramBitmap, null, SaveMediaNotificationsToShow.NONE, false);
  }
  
  public bgb(@cgb Context paramContext, @cgb Bitmap paramBitmap, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, null, paramBitmap, paramSaveSnapContext, paramSaveMediaNotificationsToShow, true);
  }
  
  private String b()
  {
    String str = awt.b() + ".jpg";
    Bitmap localBitmap;
    if (mStorySnap != null)
    {
      localBitmap = mStorySnap.a(mContext);
      if (localBitmap != null) {
        break label66;
      }
      Timber.f("SaveImageToGalleryTask", "Failed to get image bitmap from story snap", new Object[0]);
    }
    for (;;)
    {
      return null;
      localBitmap = mBitmap;
      break;
      label66:
      File localFile;
      if (mSaveToSnapchatDirectory) {
        localFile = new File(awt.a(), str);
      }
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 95, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        if (mContext != null)
        {
          awt.a(mContext, localFile);
          return MediaStore.Images.Media.insertImage(mContext.getContentResolver(), localBitmap, str, null);
        }
      }
      catch (Exception localException)
      {
        new ErrorMetric("failed to save image").a(localException).d();
      }
    }
    return null;
  }
  
  public void a()
  {
    if (mNotificationsToShow != SaveMediaNotificationsToShow.NONE) {
      mNotifications.d();
    }
    if (mSaveSnapContext != null) {
      CameraEventAnalytics.b(false, mSaveSnapContext);
    }
  }
  
  public void a(@cgb String paramString)
  {
    if (mNotificationsToShow == SaveMediaNotificationsToShow.ALL) {
      mNotifications.c();
    }
    if (mSaveSnapContext != null) {
      CameraEventAnalytics.a(false, mSaveSnapContext);
    }
  }
  
  public void b(String paramString)
  {
    if (mBitmap != null) {
      mBitmap.recycle();
    }
    if (!TextUtils.isEmpty(paramString))
    {
      a(paramString);
      return;
    }
    a();
  }
  
  public void onPreExecute()
  {
    if (mNotificationsToShow == SaveMediaNotificationsToShow.ALL) {
      mNotifications.b();
    }
  }
}

/* Location:
 * Qualified Name:     bgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */