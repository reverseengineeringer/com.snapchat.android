package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

public abstract class RecyclerView$s
{
  public final View a;
  int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  int f = -1;
  s g = null;
  s h = null;
  int i;
  RecyclerView.l j = null;
  private int k = 0;
  
  public RecyclerView$s(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    a = paramView;
  }
  
  final void a()
  {
    c = -1;
    f = -1;
  }
  
  final void a(int paramInt)
  {
    i |= paramInt;
  }
  
  final void a(int paramInt1, int paramInt2)
  {
    i = (i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  final void a(int paramInt, boolean paramBoolean)
  {
    if (c == -1) {
      c = b;
    }
    if (f == -1) {
      f = b;
    }
    if (paramBoolean) {
      f += paramInt;
    }
    b += paramInt;
    if (a.getLayoutParams() != null) {
      a.getLayoutParams()).e = true;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int m;
    if (paramBoolean)
    {
      m = k - 1;
      k = m;
      if (k >= 0) {
        break label53;
      }
      k = 0;
      new StringBuilder("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ").append(this);
    }
    label53:
    do
    {
      return;
      m = k + 1;
      break;
      if ((!paramBoolean) && (k == 1))
      {
        i |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (k != 0));
    i &= 0xFFFFFFEF;
  }
  
  final boolean b()
  {
    return (i & 0x80) != 0;
  }
  
  public final int c()
  {
    if (f == -1) {
      return b;
    }
    return f;
  }
  
  final boolean d()
  {
    return j != null;
  }
  
  final void e()
  {
    j.b(this);
  }
  
  final boolean f()
  {
    return (i & 0x20) != 0;
  }
  
  final void g()
  {
    i &= 0xFFFFFFDF;
  }
  
  final void h()
  {
    i &= 0xFEFF;
  }
  
  final boolean i()
  {
    return (i & 0x4) != 0;
  }
  
  final boolean j()
  {
    return (i & 0x2) != 0;
  }
  
  final boolean k()
  {
    return (i & 0x40) != 0;
  }
  
  final boolean l()
  {
    return (i & 0x1) != 0;
  }
  
  final boolean m()
  {
    return (i & 0x8) != 0;
  }
  
  final boolean n()
  {
    return (i & 0x100) != 0;
  }
  
  final void o()
  {
    i = 0;
    b = -1;
    c = -1;
    d = -1L;
    f = -1;
    k = 0;
    g = null;
    h = null;
  }
  
  public final boolean p()
  {
    return ((i & 0x10) == 0) && (!ViewCompat.hasTransientState(a));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + b + " id=" + d + ", oldPos=" + c + ", pLpos:" + f);
    if (d()) {
      localStringBuilder.append(" scrap");
    }
    if (i()) {
      localStringBuilder.append(" invalid");
    }
    if (!l()) {
      localStringBuilder.append(" unbound");
    }
    if (j()) {
      localStringBuilder.append(" update");
    }
    if (m()) {
      localStringBuilder.append(" removed");
    }
    if (b()) {
      localStringBuilder.append(" ignored");
    }
    if (k()) {
      localStringBuilder.append(" changed");
    }
    if (n()) {
      localStringBuilder.append(" tmpDetached");
    }
    if (!p()) {
      localStringBuilder.append(" not recyclable(" + k + ")");
    }
    if (a.getParent() == null) {
      localStringBuilder.append(" no parent");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */