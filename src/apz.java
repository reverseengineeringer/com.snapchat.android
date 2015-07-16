import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;

public final class apz
{
  private static final apz a = new apz();
  private final Map<Integer, Queue<View>> b = new HashMap();
  private LayoutInflater c;
  private Resources d;
  
  public static apz a()
  {
    return a;
  }
  
  @cdn
  public final View a(int paramInt)
  {
    bhp.a();
    d.getResourceEntryName(paramInt);
    Queue localQueue = (Queue)b.get(Integer.valueOf(paramInt));
    if ((localQueue != null) && (!localQueue.isEmpty()))
    {
      localQueue.size();
      return (View)localQueue.poll();
    }
    return c.inflate(paramInt, null, false);
  }
  
  @cdn
  public final void a(int paramInt, View paramView)
  {
    bhp.a();
    Object localObject = (ViewGroup)paramView.getParent();
    if (localObject != null) {
      ((ViewGroup)localObject).removeView(paramView);
    }
    d.getResourceEntryName(paramInt);
    Queue localQueue = (Queue)b.get(Integer.valueOf(paramInt));
    localObject = localQueue;
    if (localQueue == null)
    {
      localObject = new LinkedList();
      b.put(Integer.valueOf(paramInt), localObject);
    }
    ((Queue)localObject).add(paramView);
    ((Queue)localObject).size();
  }
  
  @cdn
  public final void a(Context paramContext)
  {
    bhp.a();
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramContext.getResources();
  }
  
  @cdn
  public final void b()
  {
    bhp.a();
    b.clear();
    c = null;
    d = null;
  }
}

/* Location:
 * Qualified Name:     apz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */