import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.d;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class ae$1
  implements Runnable
{
  ae$1(ae paramae, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (ae.b)localIterator.next();
      ae localae = b;
      RecyclerView.s locals = a;
      int k = b;
      int i = c;
      int m = d;
      int j = e;
      localObject = a;
      k = m - k;
      i = j - i;
      if (k != 0) {
        ViewCompat.animate((View)localObject).translationX(0.0F);
      }
      if (i != 0) {
        ViewCompat.animate((View)localObject).translationY(0.0F);
      }
      e.add(locals);
      localObject = ViewCompat.animate((View)localObject);
      ((ViewPropertyAnimatorCompat)localObject).setDuration(k).setListener(new ae.6(localae, locals, k, i, (ViewPropertyAnimatorCompat)localObject)).start();
    }
    a.clear();
    b.b.remove(a);
  }
}

/* Location:
 * Qualified Name:     ae.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */