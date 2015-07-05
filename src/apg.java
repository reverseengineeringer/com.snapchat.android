import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.android.ui.SwipeViewState.MotionState;
import com.snapchat.android.ui.SwipeViewState.SwipeDirection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class apg
{
  public final api a;
  public final SwipeImageView b;
  public final SwipeViewState c;
  public final List<apg.a> d;
  
  public apg(api paramapi, SwipeImageView paramSwipeImageView, SwipeViewState paramSwipeViewState)
  {
    a = paramapi;
    b = paramSwipeImageView;
    c = paramSwipeViewState;
    d = new ArrayList();
  }
  
  private void a()
  {
    c.i = SwipeViewState.MotionState.NOT_MOVING;
    Object localObject = c;
    e = 0;
    f = 0;
    g = 0.0F;
    boolean bool2 = a.a(c.e());
    localObject = d.iterator();
    if (((Iterator)localObject).hasNext())
    {
      apg.a locala = (apg.a)((Iterator)localObject).next();
      SwipeImageView localSwipeImageView = b;
      if ((!c.e()) && (bool2)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        locala.a(localSwipeImageView, bool1);
        break;
      }
    }
    int i = a.b.a;
    localObject = b.a.a(i);
    if (localObject != null) {
      ((arn)localObject).g();
    }
  }
  
  public final void a(final int paramInt)
  {
    int j = 1;
    int i = c.e;
    float f1 = c.g;
    float f2 = c.n;
    int k = (int)(i * (1.0F - f2) + f1 * f2);
    if (c.e != k)
    {
      i = 1;
      if (i == 0) {
        break label210;
      }
      if (k >= 0) {
        break label154;
      }
      c.k = SwipeViewState.SwipeDirection.LEFT;
      a();
      i = 1;
    }
    for (;;)
    {
      c.b();
      c.e = k;
      if (i != 0) {
        break label210;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext()) {
        ((apg.a)localIterator.next()).a(b);
      }
      i = 0;
      break;
      label154:
      if ((k != 0) && (k != paramInt))
      {
        if (k < paramInt)
        {
          b.invalidate();
          i = 0;
          continue;
        }
        if (k > paramInt)
        {
          c.k = SwipeViewState.SwipeDirection.RIGHT;
          a();
        }
      }
      i = 1;
    }
    label210:
    if (c.i == SwipeViewState.MotionState.AUTO_SCROLLING) {}
    for (i = j;; i = 0)
    {
      if (i != 0) {
        b.post(new Runnable()
        {
          public final void run()
          {
            a(paramInt);
          }
        });
      }
      return;
    }
  }
  
  public final void a(apg.a parama)
  {
    d.add(parama);
  }
  
  public static abstract interface a
  {
    public abstract void a(SwipeImageView paramSwipeImageView);
    
    public abstract void a(SwipeImageView paramSwipeImageView, boolean paramBoolean);
    
    public abstract void q();
  }
}

/* Location:
 * Qualified Name:     apg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */