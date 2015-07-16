import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class adb
{
  private static adb b = new adb();
  public final SharedPreferences a;
  
  private adb()
  {
    this(PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()));
  }
  
  private adb(SharedPreferences paramSharedPreferences)
  {
    a = paramSharedPreferences;
  }
  
  public static adb a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     adb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */