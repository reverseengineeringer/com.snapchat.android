import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class als
{
  private final Handler a;
  private final alb b;
  
  public als()
  {
    this(alb.a(), new Handler(Looper.getMainLooper()));
  }
  
  private als(alb paramalb, Handler paramHandler)
  {
    b = paramalb;
    a = paramHandler;
  }
  
  private void a(Map<String, aje> paramMap, String paramString1, Object paramObject, awp paramawp, String paramString2, String paramString3, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, final als.a parama)
  {
    boolean bool;
    StringBuilder localStringBuilder;
    String str;
    label47:
    aje localaje;
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      bool = true;
      ck.a(bool);
      localStringBuilder = new StringBuilder(paramString1);
      str = null;
      localObject = paramMap.entrySet().iterator();
      if (!((Iterator)localObject).hasNext()) {
        break label141;
      }
      localaje = (aje)((Map.Entry)((Iterator)localObject).next()).getValue();
      if (str != null) {
        break label127;
      }
      str = localaje.j();
    }
    for (;;)
    {
      localStringBuilder.append(localaje.d() + ";");
      break label47;
      bool = false;
      break;
      label127:
      str.equals(localaje.j());
    }
    label141:
    Object localObject = new alc.a();
    a = paramDownloadPriority1;
    b = paramDownloadPriority2;
    d = paramString1;
    e = localStringBuilder.toString();
    h = new String[] { paramString2, str };
    g = paramString3;
    i = paramObject;
    paramString1 = ((alc.a)localObject).a();
    b.a(paramString1, new alr(paramMap, paramawp)
    {
      public final void a(uc paramAnonymousuc, Exception paramAnonymousException, int paramAnonymousInt)
      {
        als.a(als.this, parama, paramAnonymousuc, paramAnonymousException, paramAnonymousInt);
      }
    });
  }
  
  public final void a(aje paramaje, String paramString1, Object paramObject, awp paramawp, String paramString2, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, final als.a parama)
  {
    TextUtils.isEmpty(paramString1);
    paramaje.L();
    String str = String.format("%s-%s-%s", new Object[] { paramaje.getClass().getSimpleName(), paramaje.j(), paramaje.d() });
    alc.a locala = new alc.a();
    a = paramDownloadPriority1;
    b = paramDownloadPriority2;
    d = paramString1;
    e = (paramString1 + paramaje.d());
    h = new String[] { paramString2, paramaje.j() };
    g = str;
    i = paramObject;
    paramString1 = locala.a(paramaje.ac(), paramaje.i(), 1).a();
    b.a(paramString1, new alr(df.b(paramaje.i(), paramaje), paramawp)
    {
      public final void a(uc paramAnonymousuc, Exception paramAnonymousException, int paramAnonymousInt)
      {
        als.a(als.this, parama, paramAnonymousuc, paramAnonymousException, paramAnonymousInt);
      }
    });
  }
  
  public final void a(Collection<ajr> paramCollection, String paramString, Object paramObject, als.a parama)
  {
    Object localObject = paramCollection.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ajr)((Iterator)localObject).next()).az();
    }
    localObject = dl.c();
    StringBuilder localStringBuilder = new StringBuilder("Thumbnails-[");
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      ajr localajr = (ajr)paramCollection.next();
      localStringBuilder.append(String.format("%s-%s;", new Object[] { mUsername, localajr.d() }));
      ((Map)localObject).put(localajr.av(), localajr);
    }
    localStringBuilder.append("]");
    a((Map)localObject, paramString, paramObject, awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE, "STORIES", localStringBuilder.toString(), DownloadPriority.HIGH, DownloadPriority.BACKGROUND_HIGH, parama);
  }
  
  public static abstract interface a
  {
    public abstract void a(als.b paramb);
  }
  
  public static final class b
  {
    public final uc a;
    public final Exception b;
    public final int c;
    
    public b(uc paramuc, Exception paramException, int paramInt)
    {
      a = paramuc;
      b = paramException;
      c = paramInt;
    }
    
    public final boolean a()
    {
      return (b == null) && (a.d());
    }
  }
}

/* Location:
 * Qualified Name:     als
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */