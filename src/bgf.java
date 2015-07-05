import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

public class bgf
  extends AsyncTask<Void, Void, Boolean>
{
  private static final String TAG = "SaveVideoToGalleryTask";
  private final CameraEventAnalytics mCameraEventAnalytics;
  private final Context mContext;
  private aip mDecryptedSnapVideo = null;
  private final bgc mNotifications;
  private final SaveMediaNotificationsToShow mNotificationsToShow;
  private final CameraEventAnalytics.SaveSnapContext mSaveSnapContext;
  private final awz mSnapVideoDecryptor;
  private final ajr mStorySnap;
  private final Uri mUri;
  
  private bgf(@cgb Context paramContext, @cgb ajr paramajr, @cgb Uri paramUri, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, @cgb awz paramawz, @cgb bgc parambgc)
  {
    if ((paramajr == null) && (paramUri == null)) {
      throw new NullPointerException("storySnap and videoUri are both null");
    }
    mContext = ((Context)ck.a(paramContext));
    mStorySnap = paramajr;
    mUri = paramUri;
    mSaveSnapContext = paramSaveSnapContext;
    mNotificationsToShow = paramSaveMediaNotificationsToShow;
    mSnapVideoDecryptor = paramawz;
    mCameraEventAnalytics = CameraEventAnalytics.a();
    mNotifications = parambgc;
  }
  
  public bgf(@cgb Context paramContext, @cgb ajr paramajr, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, paramajr, null, paramSaveSnapContext, paramSaveMediaNotificationsToShow, new awz(), bgc.a());
  }
  
  public bgf(@cgb Context paramContext, @cgb Uri paramUri, @cgc CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @cgb SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, null, paramUri, paramSaveSnapContext, paramSaveMediaNotificationsToShow, new awz(), bgc.a());
  }
  
  public void a()
  {
    if (mSaveSnapContext != null) {
      CameraEventAnalytics.a(true, mSaveSnapContext);
    }
  }
  
  public void a(Boolean paramBoolean)
  {
    if (mDecryptedSnapVideo != null) {
      mDecryptedSnapVideo.e();
    }
    if (paramBoolean.booleanValue())
    {
      a();
      if (mNotificationsToShow == SaveMediaNotificationsToShow.ALL) {
        mNotifications.c();
      }
    }
    do
    {
      return;
      b();
    } while (mNotificationsToShow == SaveMediaNotificationsToShow.NONE);
    mNotifications.d();
  }
  
  public void b()
  {
    if (mSaveSnapContext != null) {
      CameraEventAnalytics.b(true, mSaveSnapContext);
    }
  }
  
  public void onPreExecute()
  {
    if (mNotificationsToShow == SaveMediaNotificationsToShow.ALL) {
      mNotifications.b();
    }
  }
}

/* Location:
 * Qualified Name:     bgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */