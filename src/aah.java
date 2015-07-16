import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class aah
{
  private final alw a;
  
  public aah()
  {
    this(alw.a());
  }
  
  private aah(alw paramalw)
  {
    a = paramalw;
  }
  
  private void a(Collection<akl> paramCollection, String paramString, Object paramObject, aah.a parama)
  {
    Object localObject = paramCollection.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((akl)((Iterator)localObject).next()).au();
    }
    localObject = du.c();
    StringBuilder localStringBuilder = new StringBuilder("Thumbnails-[");
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      akl localakl = (akl)paramCollection.next();
      localStringBuilder.append(String.format("%s-%s;", new Object[] { mUsername, localakl.d() }));
      ((Map)localObject).put(mMediaId, localakl.at());
    }
    localStringBuilder.append("]");
    a((Map)localObject, paramString, paramObject, localStringBuilder.toString(), parama);
  }
  
  public final void a(@chc akl paramakl, aah.a parama)
  {
    if (mNeedsAuth)
    {
      a(Collections.singletonList(paramakl), parama);
      return;
    }
    a(Collections.singletonList(paramakl), paramakl.ax(), null, parama);
  }
  
  public final void a(Collection<akl> paramCollection, aah.a parama)
  {
    String str = akl.as();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(nextmMediaId);
    }
    a(paramCollection, str, ui.buildAuthPayload(new aah.b().a(localArrayList)), parama);
  }
  
  public final void a(Map<String, String> paramMap, String paramString1, Object paramObject, String paramString2, final aah.a parama)
  {
    if ((paramMap != null) && (!paramMap.isEmpty())) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool);
      Object localObject1 = new StringBuilder().append(paramString1);
      Object localObject2 = ck.a(";");
      Iterator localIterator = paramMap.keySet().iterator();
      localObject1 = ((ck)localObject2).a(new StringBuilder(), localIterator).toString();
      localObject2 = new aly.a();
      a = DownloadPriority.HIGH;
      b = DownloadPriority.BACKGROUND_HIGH;
      d = paramString1;
      e = ((String)localObject1);
      h = new String[] { "STORIES" };
      g = paramString2;
      i = paramObject;
      paramString1 = ((aly.a)localObject2).a();
      a.a(paramString1, new aai(paramMap)
      {
        public final void a(int paramAnonymousInt)
        {
          parama.a(paramAnonymousInt);
        }
      });
      return;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
  
  @ud
  public final class b
    extends bkp
  {
    public b() {}
  }
}

/* Location:
 * Qualified Name:     aah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */