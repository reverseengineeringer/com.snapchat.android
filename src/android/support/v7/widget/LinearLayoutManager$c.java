package android.support.v7.widget;

import android.view.View;
import java.util.List;

final class LinearLayoutManager$c
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  boolean i = false;
  List<RecyclerView.s> j = null;
  
  final View a(RecyclerView.l paraml)
  {
    int m;
    if (j != null)
    {
      int i1 = j.size();
      int k = Integer.MAX_VALUE;
      m = 0;
      paraml = null;
      if (m < i1)
      {
        RecyclerView.s locals = (RecyclerView.s)j.get(m);
        if ((!i) && (locals.m())) {
          break label158;
        }
        int n = (locals.c() - d) * e;
        if ((n < 0) || (n >= k)) {
          break label158;
        }
        paraml = locals;
        if (n != 0)
        {
          paraml = locals;
          k = n;
        }
      }
    }
    label158:
    for (;;)
    {
      m += 1;
      break;
      if (paraml != null)
      {
        d = (paraml.c() + e);
        return a;
      }
      return null;
      paraml = paraml.b(d);
      d += e;
      return paraml;
    }
  }
  
  final boolean a(RecyclerView.p paramp)
  {
    return (d >= 0) && (d < paramp.a());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */