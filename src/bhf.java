import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;

public class bhf
  extends AsyncTask<Void, Void, Boolean>
{
  private static final String TAG = "SaveVideoToGalleryTask";
  private final CameraEventAnalytics mCameraEventAnalytics;
  private final Context mContext;
  private ajl mDecryptedSnapVideo = null;
  private final bhc mNotifications;
  private final SaveMediaNotificationsToShow mNotificationsToShow;
  private final CameraEventAnalytics.SaveSnapContext mSaveSnapContext;
  private final axx mSnapVideoDecryptor;
  private final akl mStorySnap;
  private final Uri mUri;
  
  private bhf(@chc Context paramContext, @chc akl paramakl, @chc Uri paramUri, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow, @chc axx paramaxx, @chc bhc parambhc)
  {
    if ((paramakl == null) && (paramUri == null)) {
      throw new NullPointerException("storySnap and videoUri are both null");
    }
    mContext = ((Context)co.a(paramContext));
    mStorySnap = paramakl;
    mUri = paramUri;
    mSaveSnapContext = paramSaveSnapContext;
    mNotificationsToShow = paramSaveMediaNotificationsToShow;
    mSnapVideoDecryptor = paramaxx;
    mCameraEventAnalytics = CameraEventAnalytics.a();
    mNotifications = parambhc;
  }
  
  public bhf(@chc Context paramContext, @chc akl paramakl, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, paramakl, null, paramSaveSnapContext, paramSaveMediaNotificationsToShow, new axx(), bhc.a());
  }
  
  public bhf(@chc Context paramContext, @chc Uri paramUri, @chd CameraEventAnalytics.SaveSnapContext paramSaveSnapContext, @chc SaveMediaNotificationsToShow paramSaveMediaNotificationsToShow)
  {
    this(paramContext, null, paramUri, paramSaveSnapContext, paramSaveMediaNotificationsToShow, new axx(), bhc.a());
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
 * Qualified Name:     bhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */