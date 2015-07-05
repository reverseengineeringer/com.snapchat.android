import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.widget.RecyclerView.d;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ae
  extends RecyclerView.d
{
  ArrayList<ArrayList<RecyclerView.s>> a = new ArrayList();
  ArrayList<ArrayList<ae.b>> b = new ArrayList();
  ArrayList<ArrayList<ae.a>> c = new ArrayList();
  ArrayList<RecyclerView.s> d = new ArrayList();
  ArrayList<RecyclerView.s> e = new ArrayList();
  ArrayList<RecyclerView.s> f = new ArrayList();
  ArrayList<RecyclerView.s> g = new ArrayList();
  private ArrayList<RecyclerView.s> n = new ArrayList();
  private ArrayList<RecyclerView.s> o = new ArrayList();
  private ArrayList<ae.b> p = new ArrayList();
  private ArrayList<ae.a> q = new ArrayList();
  
  private void a(ae.a parama)
  {
    if (a != null) {
      a(parama, a);
    }
    if (b != null) {
      a(parama, b);
    }
  }
  
  private static void a(List<RecyclerView.s> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ViewCompat.animate(geta).cancel();
      i -= 1;
    }
  }
  
  private void a(List<ae.a> paramList, RecyclerView.s params)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ae.a locala = (ae.a)paramList.get(i);
      if ((a(locala, params)) && (a == null) && (b == null)) {
        paramList.remove(locala);
      }
      i -= 1;
    }
  }
  
  private boolean a(ae.a parama, RecyclerView.s params)
  {
    if (b == params) {
      b = null;
    }
    for (;;)
    {
      ViewCompat.setAlpha(a, 1.0F);
      ViewCompat.setTranslationX(a, 0.0F);
      ViewCompat.setTranslationY(a, 0.0F);
      g(params);
      return true;
      if (a != params) {
        break;
      }
      a = null;
    }
    return false;
  }
  
  public final void a()
  {
    int i;
    int j;
    label24:
    int k;
    if (!n.isEmpty())
    {
      i = 1;
      if (p.isEmpty()) {
        break label72;
      }
      j = 1;
      if (q.isEmpty()) {
        break label77;
      }
      k = 1;
      label36:
      if (o.isEmpty()) {
        break label82;
      }
    }
    label72:
    label77:
    label82:
    for (int m = 1;; m = 0)
    {
      if ((i != 0) || (j != 0) || (m != 0) || (k != 0)) {
        break label88;
      }
      return;
      i = 0;
      break;
      j = 0;
      break label24;
      k = 0;
      break label36;
    }
    label88:
    final Object localObject1 = n.iterator();
    final Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (RecyclerView.s)((Iterator)localObject1).next();
      final ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = ViewCompat.animate(a);
      localViewPropertyAnimatorCompat.setDuration(this.j).alpha(0.0F).setListener(new ae.c((RecyclerView.s)localObject2)
      {
        public final void onAnimationEnd(View paramAnonymousView)
        {
          localViewPropertyAnimatorCompat.setListener(null);
          ViewCompat.setAlpha(paramAnonymousView, 1.0F);
          d(localObject2);
          f.remove(localObject2);
          c();
        }
        
        public final void onAnimationStart(View paramAnonymousView) {}
      }).start();
      f.add(localObject2);
    }
    n.clear();
    label260:
    label340:
    long l1;
    label415:
    long l2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(p);
      b.add(localObject1);
      p.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            Object localObject = (ae.b)localIterator.next();
            ae localae = ae.this;
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
          localObject1.clear();
          b.remove(localObject1);
        }
      };
      if (i != 0) {
        ViewCompat.postOnAnimationDelayed(get0a.a, (Runnable)localObject2, this.j);
      }
    }
    else
    {
      if (k != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(q);
        c.add(localObject1);
        q.clear();
        localObject2 = new Runnable()
        {
          public final void run()
          {
            Iterator localIterator = localObject1.iterator();
            if (localIterator.hasNext())
            {
              ae.a locala = (ae.a)localIterator.next();
              ae localae = ae.this;
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
            localObject1.clear();
            c.remove(localObject1);
          }
        };
        if (i == 0) {
          break label477;
        }
        ViewCompat.postOnAnimationDelayed(get0a.a, (Runnable)localObject2, this.j);
      }
      if (m == 0) {
        break label485;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(o);
      a.add(localObject1);
      o.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            RecyclerView.s locals = (RecyclerView.s)localIterator.next();
            ae localae = ae.this;
            Object localObject = a;
            d.add(locals);
            localObject = ViewCompat.animate((View)localObject);
            ((ViewPropertyAnimatorCompat)localObject).alpha(1.0F).setDuration(i).setListener(new ae.5(localae, locals, (ViewPropertyAnimatorCompat)localObject)).start();
          }
          localObject1.clear();
          localObject1.remove(localObject1);
        }
      };
      if ((i == 0) && (j == 0) && (k == 0)) {
        break label505;
      }
      if (i == 0) {
        break label487;
      }
      l1 = this.j;
      if (j == 0) {
        break label493;
      }
      l2 = this.k;
      label425:
      if (k == 0) {
        break label499;
      }
    }
    label477:
    label485:
    label487:
    label493:
    label499:
    for (long l3 = l;; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      ViewCompat.postOnAnimationDelayed(get0a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label260;
      ((Runnable)localObject2).run();
      break label340;
      break;
      l1 = 0L;
      break label415;
      l2 = 0L;
      break label425;
    }
    label505:
    ((Runnable)localObject2).run();
  }
  
  public final boolean a(RecyclerView.s params)
  {
    c(params);
    n.add(params);
    return true;
  }
  
  public final boolean a(RecyclerView.s params, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = a;
    paramInt1 = (int)(paramInt1 + ViewCompat.getTranslationX(a));
    paramInt2 = (int)(paramInt2 + ViewCompat.getTranslationY(a));
    c(params);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      e(params);
      return false;
    }
    if (i != 0) {
      ViewCompat.setTranslationX(localView, -i);
    }
    if (j != 0) {
      ViewCompat.setTranslationY(localView, -j);
    }
    p.add(new ae.b(params, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }
  
  public final boolean a(RecyclerView.s params1, RecyclerView.s params2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = ViewCompat.getTranslationX(a);
    float f2 = ViewCompat.getTranslationY(a);
    float f3 = ViewCompat.getAlpha(a);
    c(params1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    ViewCompat.setTranslationX(a, f1);
    ViewCompat.setTranslationY(a, f2);
    ViewCompat.setAlpha(a, f3);
    if ((params2 != null) && (a != null))
    {
      c(params2);
      ViewCompat.setTranslationX(a, -i);
      ViewCompat.setTranslationY(a, -j);
      ViewCompat.setAlpha(a, 0.0F);
    }
    q.add(new ae.a(params1, params2, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }
  
  public final boolean b()
  {
    return (!o.isEmpty()) || (!q.isEmpty()) || (!p.isEmpty()) || (!n.isEmpty()) || (!e.isEmpty()) || (!f.isEmpty()) || (!d.isEmpty()) || (!g.isEmpty()) || (!b.isEmpty()) || (!a.isEmpty()) || (!c.isEmpty());
  }
  
  public final boolean b(RecyclerView.s params)
  {
    c(params);
    ViewCompat.setAlpha(a, 0.0F);
    o.add(params);
    return true;
  }
  
  final void c()
  {
    if (!b()) {
      e();
    }
  }
  
  public final void c(RecyclerView.s params)
  {
    View localView = a;
    ViewCompat.animate(localView).cancel();
    int i = p.size() - 1;
    while (i >= 0)
    {
      if (p.get(i)).a == params)
      {
        ViewCompat.setTranslationY(localView, 0.0F);
        ViewCompat.setTranslationX(localView, 0.0F);
        e(params);
        p.remove(i);
      }
      i -= 1;
    }
    a(q, params);
    if (n.remove(params))
    {
      ViewCompat.setAlpha(localView, 1.0F);
      d(params);
    }
    if (o.remove(params))
    {
      ViewCompat.setAlpha(localView, 1.0F);
      f(params);
    }
    i = c.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)c.get(i);
      a(localArrayList, params);
      if (localArrayList.isEmpty()) {
        c.remove(i);
      }
      i -= 1;
    }
    i = b.size() - 1;
    if (i >= 0)
    {
      localArrayList = (ArrayList)b.get(i);
      int j = localArrayList.size() - 1;
      for (;;)
      {
        if (j >= 0)
        {
          if (geta != params) {
            break label293;
          }
          ViewCompat.setTranslationY(localView, 0.0F);
          ViewCompat.setTranslationX(localView, 0.0F);
          e(params);
          localArrayList.remove(j);
          if (localArrayList.isEmpty()) {
            b.remove(i);
          }
        }
        i -= 1;
        break;
        label293:
        j -= 1;
      }
    }
    i = a.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)a.get(i);
      if (localArrayList.remove(params))
      {
        ViewCompat.setAlpha(localView, 1.0F);
        f(params);
        if (localArrayList.isEmpty()) {
          a.remove(i);
        }
      }
      i -= 1;
    }
    f.remove(params);
    d.remove(params);
    g.remove(params);
    e.remove(params);
    c();
  }
  
  public final void d()
  {
    int i = p.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (ae.b)p.get(i);
      localObject2 = a.a;
      ViewCompat.setTranslationY((View)localObject2, 0.0F);
      ViewCompat.setTranslationX((View)localObject2, 0.0F);
      e(a);
      p.remove(i);
      i -= 1;
    }
    i = n.size() - 1;
    while (i >= 0)
    {
      d((RecyclerView.s)n.get(i));
      n.remove(i);
      i -= 1;
    }
    i = o.size() - 1;
    while (i >= 0)
    {
      localObject1 = (RecyclerView.s)o.get(i);
      ViewCompat.setAlpha(a, 1.0F);
      f((RecyclerView.s)localObject1);
      o.remove(i);
      i -= 1;
    }
    i = q.size() - 1;
    while (i >= 0)
    {
      a((ae.a)q.get(i));
      i -= 1;
    }
    q.clear();
    if (!b()) {
      return;
    }
    i = b.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)b.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (ae.b)((ArrayList)localObject1).get(j);
        View localView = a.a;
        ViewCompat.setTranslationY(localView, 0.0F);
        ViewCompat.setTranslationX(localView, 0.0F);
        e(a);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          b.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = a.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)a.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (RecyclerView.s)((ArrayList)localObject1).get(j);
        ViewCompat.setAlpha(a, 1.0F);
        f((RecyclerView.s)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          a.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = c.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)c.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        a((ae.a)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          c.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    a(f);
    a(e);
    a(d);
    a(g);
    e();
  }
  
  static final class a
  {
    public RecyclerView.s a;
    public RecyclerView.s b;
    public int c;
    public int d;
    public int e;
    public int f;
    
    private a(RecyclerView.s params1, RecyclerView.s params2)
    {
      a = params1;
      b = params2;
    }
    
    private a(RecyclerView.s params1, RecyclerView.s params2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(params1, params2);
      c = paramInt1;
      d = paramInt2;
      e = paramInt3;
      f = paramInt4;
    }
    
    public final String toString()
    {
      return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
    }
  }
  
  static final class b
  {
    public RecyclerView.s a;
    public int b;
    public int c;
    public int d;
    public int e;
    
    private b(RecyclerView.s params, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = params;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
  }
  
  static class c
    implements ViewPropertyAnimatorListener
  {
    public void onAnimationCancel(View paramView) {}
    
    public void onAnimationEnd(View paramView) {}
    
    public void onAnimationStart(View paramView) {}
  }
}

/* Location:
 * Qualified Name:     ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */