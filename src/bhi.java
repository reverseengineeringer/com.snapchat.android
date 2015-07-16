import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class bhi
  extends bhj
{
  private final axn mCache;
  private final String mKey;
  
  public bhi(axn paramaxn, String paramString)
  {
    mCache = paramaxn;
    mKey = paramString;
  }
  
  public final fu a()
  {
    Object localObject = mCache.a(mKey);
    if (localObject == null) {
      return null;
    }
    localObject = new ByteArrayInputStream((byte[])localObject);
    fv localfv = new fv();
    a = ((InputStream)localObject);
    return localfv.a();
  }
}

/* Location:
 * Qualified Name:     bhi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */