import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class acb
{
  private static acb b = new acb();
  public final SharedPreferences a;
  
  private acb()
  {
    this(PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()));
  }
  
  private acb(SharedPreferences paramSharedPreferences)
  {
    a = paramSharedPreferences;
  }
  
  public static acb a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     acb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */