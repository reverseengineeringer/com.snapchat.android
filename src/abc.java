import android.content.ContentValues;
import java.util.Map;

public final class abc
{
  public final ContentValues a;
  private final aur b;
  
  public abc()
  {
    this(new aur(), new ContentValues());
  }
  
  private abc(aur paramaur, ContentValues paramContentValues)
  {
    a = paramContentValues;
    b = paramaur;
  }
  
  public final abc a(aav paramaav, double paramDouble)
  {
    a.put(paramaav.getColumnName(), Double.valueOf(paramDouble));
    return this;
  }
  
  public final abc a(aav paramaav, int paramInt)
  {
    a.put(paramaav.getColumnName(), Integer.valueOf(paramInt));
    return this;
  }
  
  public final abc a(aav paramaav, long paramLong)
  {
    a.put(paramaav.getColumnName(), Long.valueOf(paramLong));
    return this;
  }
  
  public final abc a(aav paramaav, String paramString)
  {
    a.put(paramaav.getColumnName(), paramString);
    return this;
  }
  
  public final abc a(aav paramaav, Map paramMap)
  {
    a.put(paramaav.getColumnName(), b.a(paramMap));
    return this;
  }
  
  public final abc a(aav paramaav, boolean paramBoolean)
  {
    ContentValues localContentValues = a;
    paramaav = paramaav.getColumnName();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put(paramaav, Integer.valueOf(i));
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     abc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */