import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class auc
{
  private static final SharedPreferences SHARED_PREFERENCES = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
  
  public static String a(String paramString)
  {
    return SHARED_PREFERENCES.getString(paramString, null);
  }
  
  public static void a(String paramString, int paramInt)
  {
    SHARED_PREFERENCES.edit().putInt(paramString, paramInt).apply();
  }
  
  public static void a(String paramString1, String paramString2)
  {
    SHARED_PREFERENCES.edit().putString(paramString1, paramString2).apply();
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    return SHARED_PREFERENCES.getBoolean(paramString, paramBoolean);
  }
  
  public static int b(String paramString)
  {
    return SHARED_PREFERENCES.getInt(paramString, 0);
  }
  
  public static void b(String paramString, boolean paramBoolean)
  {
    SHARED_PREFERENCES.edit().putBoolean(paramString, paramBoolean).apply();
  }
}

/* Location:
 * Qualified Name:     auc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */