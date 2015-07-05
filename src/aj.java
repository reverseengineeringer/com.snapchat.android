import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.p;
import android.view.View;

public final class aj
{
  public static int a(RecyclerView.p paramp, ah paramah, View paramView1, View paramView2, RecyclerView.h paramh, boolean paramBoolean)
  {
    if ((paramh.l() == 0) || (paramp.a() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return Math.abs(RecyclerView.h.a(paramView1) - RecyclerView.h.a(paramView2)) + 1;
    }
    int i = paramah.b(paramView2);
    int j = paramah.a(paramView1);
    return Math.min(paramah.e(), i - j);
  }
  
  public static int a(RecyclerView.p paramp, ah paramah, View paramView1, View paramView2, RecyclerView.h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    int j = i;
    if (paramh.l() != 0)
    {
      j = i;
      if (paramp.a() != 0)
      {
        j = i;
        if (paramView1 != null)
        {
          if (paramView2 != null) {
            break label45;
          }
          j = i;
        }
      }
    }
    return j;
    label45:
    i = Math.min(RecyclerView.h.a(paramView1), RecyclerView.h.a(paramView2));
    j = Math.max(RecyclerView.h.a(paramView1), RecyclerView.h.a(paramView2));
    if (paramBoolean2) {}
    for (i = Math.max(0, paramp.a() - j - 1);; i = Math.max(0, i))
    {
      j = i;
      if (!paramBoolean1) {
        break;
      }
      j = Math.abs(paramah.b(paramView2) - paramah.a(paramView1));
      int k = Math.abs(RecyclerView.h.a(paramView1) - RecyclerView.h.a(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (paramah.b() - paramah.a(paramView1)));
    }
  }
  
  public static int b(RecyclerView.p paramp, ah paramah, View paramView1, View paramView2, RecyclerView.h paramh, boolean paramBoolean)
  {
    if ((paramh.l() == 0) || (paramp.a() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return paramp.a();
    }
    int i = paramah.b(paramView2);
    int j = paramah.a(paramView1);
    int k = Math.abs(RecyclerView.h.a(paramView1) - RecyclerView.h.a(paramView2));
    return (int)((i - j) / (k + 1) * paramp.a());
  }
}

/* Location:
 * Qualified Name:     aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */