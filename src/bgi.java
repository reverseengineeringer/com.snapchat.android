import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class bgi
  extends bgj
{
  private final awp mCache;
  private final String mKey;
  
  public bgi(awp paramawp, String paramString)
  {
    mCache = paramawp;
    mKey = paramString;
  }
  
  public final fl a()
  {
    Object localObject = mCache.a(mKey);
    if (localObject == null) {
      return null;
    }
    localObject = new ByteArrayInputStream((byte[])localObject);
    fm localfm = new fm();
    a = ((InputStream)localObject);
    return localfm.a();
  }
}

/* Location:
 * Qualified Name:     bgi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */