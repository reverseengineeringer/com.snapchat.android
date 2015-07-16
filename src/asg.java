import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public final class asg
{
  public long a = -1L;
  public int b = 0;
  public boolean c = false;
  private final bhk d;
  private final SharedPreferences e;
  
  public asg(Context paramContext)
  {
    this(new bhk(), PreferenceManager.getDefaultSharedPreferences(paramContext));
  }
  
  private asg(bhk parambhk, SharedPreferences paramSharedPreferences)
  {
    d = parambhk;
    e = paramSharedPreferences;
  }
}

/* Location:
 * Qualified Name:     asg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */