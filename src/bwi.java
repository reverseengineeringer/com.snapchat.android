import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

public final class bwi
{
  public SharedPreferences a;
  public SharedPreferences.Editor b;
  private SharedPreferences c;
  private SharedPreferences.Editor d;
  
  private static Boolean a()
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 9) {}
      for (boolean bool = true;; bool = false) {
        return Boolean.valueOf(bool);
      }
      return Boolean.valueOf(false);
    }
    catch (NoClassDefFoundError localNoClassDefFoundError) {}
  }
  
  public static void a(SharedPreferences.Editor paramEditor)
  {
    if (a().booleanValue())
    {
      paramEditor.apply();
      return;
    }
    paramEditor.commit();
  }
  
  public final String a(Context paramContext)
  {
    if (paramContext == null) {}
    do
    {
      return null;
      c = paramContext.getSharedPreferences("net.hockeyapp.android.prefs_feedback_token", 0);
    } while (c == null);
    return c.getString("net.hockeyapp.android.prefs_key_feedback_token", null);
  }
  
  public final void a(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      c = paramContext.getSharedPreferences("net.hockeyapp.android.prefs_feedback_token", 0);
      if (c != null)
      {
        d = c.edit();
        d.putString("net.hockeyapp.android.prefs_key_feedback_token", paramString);
        a(d);
      }
    }
  }
  
  public static final class a
  {
    public static final bwi a = new bwi((byte)0);
  }
}

/* Location:
 * Qualified Name:     bwi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */