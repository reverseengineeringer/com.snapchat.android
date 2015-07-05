import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class auo
{
  private static auo sInstance;
  public SharedPreferences mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
  public SharedPreferences.Editor mSharedPreferencesEditor = mSharedPreferences.edit();
  public int numAccounts = mSharedPreferences.getInt("SnapKidzLoginManager_numAccounts", 0);
  
  public static auo a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new auo();
      }
      auo localauo = sInstance;
      return localauo;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      sInstance = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean a(String paramString)
  {
    return b(paramString) != -1;
  }
  
  public final int b(String paramString)
  {
    int i = 0;
    while (i < numAccounts)
    {
      String str = mSharedPreferences.getString("SnapKidzLoginManager_username_" + i, null);
      if ((str != null) && (paramString.equals(str))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     auo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */