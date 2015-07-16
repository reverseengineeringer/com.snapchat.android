import android.os.AsyncTask;
import com.snapchat.android.util.cache.CacheType;
import java.io.File;

final class axn$2
  extends AsyncTask<Void, Void, Void>
{
  axn$2(axn paramaxn) {}
  
  private Void a()
  {
    Object localObject2;
    int j;
    int i;
    try
    {
      Object localObject1 = this$0.mCacheType.getDirectory();
      if ((localObject1 != null) && (((File)localObject1).exists()))
      {
        localObject1 = ((File)localObject1).listFiles();
        if (localObject1 != null) {}
      }
      else
      {
        return null;
      }
    }
    catch (axq localaxq)
    {
      for (;;)
      {
        localObject2 = null;
      }
      j = localObject2.length;
      i = 0;
    }
    while (i < j)
    {
      File localFile = localObject2[i];
      this$0.mCacheType.name();
      localFile.getAbsolutePath();
      axr.a(localFile);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     axn.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */