import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public final class arq
{
  private static final String[] c = { "_id", "datetaken", "_data" };
  private static final String[] d = { "image_id", "_data" };
  public arq.a[] a;
  public boolean[] b;
  
  public arq(@chc ContentResolver paramContentResolver)
  {
    a(paramContentResolver);
    b(paramContentResolver);
  }
  
  private void a(@chc ContentResolver paramContentResolver)
  {
    paramContentResolver = MediaStore.Images.Media.query(paramContentResolver, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, c, null, null, "datetaken DESC");
    if (paramContentResolver == null) {
      return;
    }
    int j = paramContentResolver.getColumnIndex("_id");
    int k = paramContentResolver.getColumnIndex("_data");
    a = new arq.a[paramContentResolver.getCount()];
    b = new boolean[paramContentResolver.getCount()];
    int i = 0;
    while (i < paramContentResolver.getCount())
    {
      paramContentResolver.moveToPosition(i);
      long l = paramContentResolver.getLong(j);
      String str = paramContentResolver.getString(k);
      a[i] = new arq.a(l, str);
      b[i] = false;
      i += 1;
    }
    paramContentResolver.close();
  }
  
  private void b(@chc ContentResolver paramContentResolver)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = a;
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = localObject1[i];
      localHashMap.put(Long.valueOf(a), localObject2);
      i += 1;
    }
    paramContentResolver = MediaStore.Images.Thumbnails.queryMiniThumbnails(paramContentResolver, MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, 1, d);
    if (paramContentResolver == null) {
      return;
    }
    j = paramContentResolver.getColumnIndex("image_id");
    int k = paramContentResolver.getColumnIndex("_data");
    i = 0;
    while (i < paramContentResolver.getCount())
    {
      paramContentResolver.moveToPosition(i);
      long l = paramContentResolver.getLong(j);
      localObject1 = paramContentResolver.getString(k);
      localObject2 = (arq.a)localHashMap.get(Long.valueOf(l));
      if (localObject2 != null) {
        c = new File((String)localObject1);
      }
      i += 1;
    }
    paramContentResolver.close();
  }
  
  public final arq.a a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < a.length)) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool);
      return a[paramInt];
    }
  }
  
  public final void b(int paramInt)
  {
    try
    {
      b[paramInt] = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final class a
  {
    final long a;
    public final Uri b;
    @r
    public File c;
    private final String e;
    
    public a(long paramLong, @chc String paramString)
    {
      a = paramLong;
      e = ((String)co.a(paramString));
      b = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, String.valueOf(paramLong));
    }
  }
}

/* Location:
 * Qualified Name:     arq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */