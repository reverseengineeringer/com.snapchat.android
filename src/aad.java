import android.content.ContentValues;
import java.util.Map;

public final class aad
{
  public final ContentValues a;
  private final att b;
  
  public aad()
  {
    this(new att(), new ContentValues());
  }
  
  private aad(att paramatt, ContentValues paramContentValues)
  {
    a = paramContentValues;
    b = paramatt;
  }
  
  public final aad a(zw paramzw, double paramDouble)
  {
    a.put(paramzw.getColumnName(), Double.valueOf(paramDouble));
    return this;
  }
  
  public final aad a(zw paramzw, int paramInt)
  {
    a.put(paramzw.getColumnName(), Integer.valueOf(paramInt));
    return this;
  }
  
  public final aad a(zw paramzw, long paramLong)
  {
    a.put(paramzw.getColumnName(), Long.valueOf(paramLong));
    return this;
  }
  
  public final aad a(zw paramzw, String paramString)
  {
    a.put(paramzw.getColumnName(), paramString);
    return this;
  }
  
  public final aad a(zw paramzw, Map paramMap)
  {
    a.put(paramzw.getColumnName(), b.a(paramMap));
    return this;
  }
  
  public final aad a(zw paramzw, boolean paramBoolean)
  {
    ContentValues localContentValues = a;
    paramzw = paramzw.getColumnName();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put(paramzw, Integer.valueOf(i));
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     aad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */