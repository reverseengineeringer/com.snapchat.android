import com.google.gson.Gson;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.util.cache.DiscoverShareCache;
import com.snapchat.android.util.cache.DiscoverShareCache.DiscoverShareFileType;

public final class awr
{
  public final DiscoverShareCache mCache;
  final abk mCompressor;
  
  private awr()
  {
    this(localDiscoverShareCache, abk.a);
  }
  
  private awr(DiscoverShareCache paramDiscoverShareCache, abk paramabk)
  {
    mCache = paramDiscoverShareCache;
    mCompressor = paramabk;
  }
  
  public final abo a(String paramString)
  {
    Object localObject = null;
    byte[] arrayOfByte = mCache.a(paramString, DiscoverShareCache.DiscoverShareFileType.METADATA);
    paramString = (String)localObject;
    if (arrayOfByte != null)
    {
      paramString = new String(arrayOfByte);
      paramString = (abo)atn.a().fromJson(paramString, abo.class);
    }
    return paramString;
  }
  
  public final byte[] a(aim paramaim)
  {
    paramaim = mClientId;
    return mCache.a(paramaim, DiscoverShareCache.DiscoverShareFileType.BLOB);
  }
  
  public static enum a
  {
    private static awr sInstance = new awr((byte)0);
  }
}

/* Location:
 * Qualified Name:     awr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */