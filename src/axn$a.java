import java.util.Date;

public final class axn$a
{
  public final long mLastAccessMilliseconds;
  public final String mUri;
  
  public axn$a(@chc String paramString, long paramLong)
  {
    mUri = paramString;
    mLastAccessMilliseconds = paramLong;
  }
  
  public static a a(@chc String paramString)
  {
    return new a(paramString, System.currentTimeMillis());
  }
  
  public final String toString()
  {
    return cl.a(this).a("uri", mUri).a("lastAccess", new Date(mLastAccessMilliseconds)).toString();
  }
}

/* Location:
 * Qualified Name:     axn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */