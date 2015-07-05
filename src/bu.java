import com.google.android.gms.ads.AdSize;

@Deprecated
public final class bu
{
  public static final bu b = new bu(-1, -2);
  public static final bu c = new bu(320, 50);
  public static final bu d = new bu(300, 250);
  public static final bu e = new bu(468, 60);
  public static final bu f = new bu(728, 90);
  public static final bu g = new bu(160, 600);
  public final AdSize a;
  
  private bu(int paramInt1, int paramInt2)
  {
    this(new AdSize(paramInt1, paramInt2));
  }
  
  public bu(AdSize paramAdSize)
  {
    a = paramAdSize;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bu)) {
      return false;
    }
    paramObject = (bu)paramObject;
    return a.equals(a);
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */