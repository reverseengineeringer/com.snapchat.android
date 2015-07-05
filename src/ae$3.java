import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.d;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class ae$3
  implements Runnable
{
  ae$3(ae paramae, ArrayList paramArrayList) {}
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.s locals = (RecyclerView.s)localIterator.next();
      ae localae = b;
      Object localObject = a;
      d.add(locals);
      localObject = ViewCompat.animate((View)localObject);
      ((ViewPropertyAnimatorCompat)localObject).alpha(1.0F).setDuration(i).setListener(new ae.5(localae, locals, (ViewPropertyAnimatorCompat)localObject)).start();
    }
    a.clear();
    b.a.remove(a);
  }
}

/* Location:
 * Qualified Name:     ae.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */