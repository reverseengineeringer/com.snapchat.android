import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;
import java.io.File;
import java.io.FileOutputStream;

public class bhb
  extends AsyncTask<Void, Void, String>
{
  private static final int JPEG_COMPRESSION = 95;
  private static final String TAG = "SaveImageToGalleryTask";
  @chd
  private final Bitmap mBitmap;
  private final CameraEventAnalytics mCameraEventAnalytics;
  protected final Context mContext;
  private final bhc mNotifications;
  private final SaveMediaNotificationsToShow mNotificationsToShow;
  private final CameraEventAnalytics.SaveSnapContext mSaveSnapContext;
  private final boolean mSaveToSnapchatDirectory;
  @chd
  private final akl mStorySnap;
  
  private bhb(@chc Context paramContext, @chd akl paramakl, @chd Bitmap paramBitmap, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, boolean paramBoolean)
  {
    if ((paramakl == null) && (paramBitmap == null)) {
      throw new NullPointerException("storySnap and bitmap are both null");
    }
    mContext = ((Context)co.a(paramContext));
    mStorySnap = paramakl;
    mBitmap = paramBitmap;
    mSaveSnapContext = paramSaveSnapContext;
    mNotificationsToShow = ((SaveMediaNotificationsToShow)co.a(paramSaveMediaNotificationsToShow));
    mCameraEventAnalytics = CameraEventAnalytics.a();
    mNotifications = bhc.a();
    mSaveToSnapchatDirectory = paramBoolean;
  }
  
  public bhb(@chc Context paramContext, @chc akl paramakl, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, paramakl, null, paramSaveSnapContext, paramSaveMediaNotificationsToShow, true);
  }
  
  public bhb(@chc Context paramContext, @chc Bitmap paramBitmap)
  {
    this(paramContext, null, paramBitmap, null, SaveMediaNotificationsToShow.NONE, false);
  }
  
  public bhb(@chc Context paramContext, @chc Bitmap paramBitmap, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, null, paramBitmap, paramSaveSnapContext, paramSaveMediaNotificationsToShow, true);
  }
  
  private String b()
  {
    String str = axr.b() + ".jpg";
    Bitmap localBitmap;
    if (mStorySnap != null)
    {
      localBitmap = mStorySnap.a(mContext);
      if (localBitmap != null) {
        break label55;
      }
    }
    for (;;)
    {
      return null;
      localBitmap = mBitmap;
      break;
      label55:
      File localFile;
      if (mSaveToSnapchatDirectory) {
        localFile = new File(axr.a(), str);
      }
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 95, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        if (mContext != null)
        {
          axr.a(mContext, localFile);
          return MediaStore.Images.Media.insertImage(mContext.getContentResolver(), localBitmap, str, null);
        }
      }
      catch (Exception localException)
      {
        new ErrorMetric("failed to save image").a(localException).e();
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
  
  public void a(@chc String paramString)
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
 * Qualified Name:     bhb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */