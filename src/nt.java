import android.os.Build;
import android.os.Build.VERSION;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper.TranscodingEnabled;

public final class nt
  extends Exception
{
  public nt(aue paramaue)
  {
    super(TranscodingPreferencesWrapper.b().name() + "," + paramaue.b() + "x" + paramaue.a() + "," + Build.MODEL + "," + Build.VERSION.SDK_INT);
  }
}

/* Location:
 * Qualified Name:     nt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */