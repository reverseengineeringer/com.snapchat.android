import com.google.gson.Gson;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;

public final class axp
{
  public final DiscoverShareCache mCache;
  final ack mCompressor;
  
  private axp()
  {
    this(localDiscoverShareCache, ack.a);
  }
  
  private axp(DiscoverShareCache paramDiscoverShareCache, ack paramack)
  {
    mCache = paramDiscoverShareCache;
    mCompressor = paramack;
  }
  
  public final aco a(String paramString)
  {
    Object localObject = null;
    byte[] arrayOfByte = mCache.a(paramString, DiscoverShareCache.DiscoverShareFileType.METADATA);
    paramString = (String)localObject;
    if (arrayOfByte != null)
    {
      paramString = new String(arrayOfByte);
      paramString = (aco)aul.a().fromJson(paramString, aco.class);
    }
    return paramString;
  }
  
  public final byte[] a(aji paramaji)
  {
    paramaji = mClientId;
    return mCache.a(paramaji, DiscoverShareCache.DiscoverShareFileType.BLOB);
  }
  
  public static enum a
  {
    private static axp sInstance = new axp((byte)0);
  }
}

/* Location:
 * Qualified Name:     axp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */