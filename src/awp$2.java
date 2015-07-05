import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.util.cache.CacheType;
import java.io.File;

final class awp$2
  extends AsyncTask<Void, Void, Void>
{
  awp$2(awp paramawp) {}
  
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
    catch (aws localaws)
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
      Timber.c("Cache", "!!! [%s] deleting [Uri: %s]", new Object[] { this$0.mCacheType.name(), localFile.getAbsolutePath() });
      awt.a(localFile);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     awp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */