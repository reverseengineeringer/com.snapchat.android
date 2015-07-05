import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.d;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class ae$2
  implements Runnable
{
  ae$2(ae paramae, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    if (localIterator.hasNext())
    {
      ae.a locala = (ae.a)localIterator.next();
      ae localae = b;
      Object localObject1 = a;
      if (localObject1 == null)
      {
        localObject1 = null;
        label46:
        localObject2 = b;
        if (localObject2 == null) {
          break label223;
        }
      }
      label223:
      for (Object localObject2 = a;; localObject2 = null)
      {
        if (localObject1 != null)
        {
          g.add(a);
          localObject1 = ViewCompat.animate((View)localObject1).setDuration(l);
          ((ViewPropertyAnimatorCompat)localObject1).translationX(e - c);
          ((ViewPropertyAnimatorCompat)localObject1).translationY(f - d);
          ((ViewPropertyAnimatorCompat)localObject1).alpha(0.0F).setListener(new ae.7(localae, locala, (ViewPropertyAnimatorCompat)localObject1)).start();
        }
        if (localObject2 == null) {
          break;
        }
        g.add(b);
        localObject1 = ViewCompat.animate((View)localObject2);
        ((ViewPropertyAnimatorCompat)localObject1).translationX(0.0F).translationY(0.0F).setDuration(l).alpha(1.0F).setListener(new ae.8(localae, locala, (ViewPropertyAnimatorCompat)localObject1, (View)localObject2)).start();
        break;
        localObject1 = a;
        break label46;
      }
    }
    a.clear();
    b.c.remove(a);
  }
}

/* Location:
 * Qualified Name:     ae.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */