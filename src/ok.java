import android.os.Build;
import android.os.Build.VERSION;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;

public final class ok
  extends Exception
{
  public ok(avc paramavc)
  {
    super(TranscodingPreferencesWrapper.b().name() + "," + paramavc.b() + "x" + paramavc.a() + "," + Build.MODEL + "," + Build.VERSION.SDK_INT);
  }
}

/* Location:
 * Qualified Name:     ok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */