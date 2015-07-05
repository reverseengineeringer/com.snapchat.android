import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public final class arh
{
  public long a = -1L;
  public int b = 0;
  public boolean c = false;
  private final bgk d;
  private final SharedPreferences e;
  
  public arh(Context paramContext)
  {
    this(new bgk(), PreferenceManager.getDefaultSharedPreferences(paramContext));
  }
  
  private arh(bgk parambgk, SharedPreferences paramSharedPreferences)
  {
    d = parambgk;
    e = paramSharedPreferences;
  }
}

/* Location:
 * Qualified Name:     arh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */