import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.snapchat.android.database.SharedPreferenceKey;
import java.util.Observable;

public final class bam
  extends Observable
{
  private static final bam INSTANCE = new bam();
  public SharedPreferences mSharedPreferences;
  
  public static bam a()
  {
    return INSTANCE;
  }
  
  public final void a(int paramInt)
  {
    if (mSharedPreferences == null) {
      return;
    }
    SharedPreferences.Editor localEditor = mSharedPreferences.edit();
    localEditor.putInt(SharedPreferenceKey.DEVELOPER_OPTIONS_NUM_STORIES_PER_THUMBNAIL.getKey(), paramInt);
    localEditor.apply();
    setChanged();
    notifyObservers();
  }
  
  public final void a(String paramString)
  {
    if (mSharedPreferences == null) {
      return;
    }
    SharedPreferences.Editor localEditor = mSharedPreferences.edit();
    localEditor.putString(SharedPreferenceKey.DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT.getKey(), paramString);
    localEditor.apply();
    setChanged();
    notifyObservers(SharedPreferenceKey.DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT.getKey());
  }
  
  public final void a(boolean paramBoolean)
  {
    if (mSharedPreferences == null) {
      return;
    }
    SharedPreferences.Editor localEditor = mSharedPreferences.edit();
    localEditor.putBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SHOULD_SHOW_DEVICE_TOKEN_TOASTS.getKey(), paramBoolean);
    localEditor.apply();
    setChanged();
    notifyObservers();
  }
  
  @chd
  public final String b()
  {
    if (mSharedPreferences == null) {
      return null;
    }
    return mSharedPreferences.getString(SharedPreferenceKey.DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT.getKey(), null);
  }
  
  public final void b(boolean paramBoolean)
  {
    if (mSharedPreferences == null) {
      return;
    }
    SharedPreferences.Editor localEditor = mSharedPreferences.edit();
    localEditor.putBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SHOW_DIAGNOSTIC_OVERLAY.getKey(), paramBoolean);
    localEditor.apply();
    setChanged();
    notifyObservers();
  }
  
  public final boolean c()
  {
    if (mSharedPreferences == null) {
      return false;
    }
    return mSharedPreferences.getBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SHOULD_SHOW_DEVICE_TOKEN_TOASTS.getKey(), false);
  }
  
  public final int d()
  {
    if (mSharedPreferences == null) {
      return -1;
    }
    return mSharedPreferences.getInt(SharedPreferenceKey.DEVELOPER_OPTIONS_NUM_STORIES_PER_THUMBNAIL.getKey(), -1);
  }
  
  public final boolean e()
  {
    if (mSharedPreferences == null) {
      return false;
    }
    return mSharedPreferences.getBoolean(SharedPreferenceKey.DEVELOPER_OPTIONS_SHOW_DIAGNOSTIC_OVERLAY.getKey(), false);
  }
}

/* Location:
 * Qualified Name:     bam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */