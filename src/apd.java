import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.snapchat.android.Timber;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class apd
{
  private static final apd a = new apd();
  private final Map<Integer, Queue<View>> b = new HashMap();
  private LayoutInflater c;
  private Resources d;
  
  public static apd a()
  {
    return a;
  }
  
  @ccm
  public final View a(int paramInt)
  {
    bgp.a();
    String str = d.getResourceEntryName(paramInt);
    Queue localQueue = (Queue)b.get(Integer.valueOf(paramInt));
    if ((localQueue != null) && (!localQueue.isEmpty()))
    {
      Timber.c("PooledResourceInflater", "Inflate '%s': Using recycled view. There are %d views of this type in the pool", new Object[] { str, Integer.valueOf(localQueue.size()) });
      return (View)localQueue.poll();
    }
    Timber.c("PooledResourceInflater", "Inflate '%s': Inflating new view. There are no views of this type in the pool", new Object[] { str });
    return c.inflate(paramInt, null, false);
  }
  
  @ccm
  public final void a(int paramInt, View paramView)
  {
    bgp.a();
    Object localObject = (ViewGroup)paramView.getParent();
    if (localObject != null) {
      ((ViewGroup)localObject).removeView(paramView);
    }
    String str = d.getResourceEntryName(paramInt);
    Queue localQueue = (Queue)b.get(Integer.valueOf(paramInt));
    localObject = localQueue;
    if (localQueue == null)
    {
      localObject = new LinkedList();
      b.put(Integer.valueOf(paramInt), localObject);
    }
    ((Queue)localObject).add(paramView);
    Timber.c("PooledResourceInflater", "Recycle '%s': There are now %d views of this type in the pool", new Object[] { str, Integer.valueOf(((Queue)localObject).size()) });
  }
  
  @ccm
  public final void a(Context paramContext)
  {
    bgp.a();
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramContext.getResources();
  }
  
  @ccm
  public final void b()
  {
    bgp.a();
    Timber.c("PooledResourceInflater", "Shutting down... freeing all pooled views.", new Object[0]);
    b.clear();
    c = null;
    d = null;
  }
}

/* Location:
 * Qualified Name:     apd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */