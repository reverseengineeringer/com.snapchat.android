import android.util.Pair;

public final class akt
{
  private final Pair<String, String> pair;
  
  public akt(String paramString1, String paramString2)
  {
    pair = new Pair(paramString1, paramString2);
  }
  
  public final String a()
  {
    return (String)pair.first;
  }
  
  public final String b()
  {
    return (String)pair.second;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof akt)) {
      return pair.equals(pair);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return pair.hashCode();
  }
}

/* Location:
 * Qualified Name:     akt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */