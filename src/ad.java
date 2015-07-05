import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public final class ad
{
  public final ad.b a;
  public final ad.a b;
  public final List<View> c;
  
  public ad(ad.b paramb)
  {
    a = paramb;
    b = new ad.a();
    c = new ArrayList();
  }
  
  public final int a()
  {
    return a.a() - c.size();
  }
  
  public final int a(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - b.d(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!b.b(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  public final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = a(paramInt))
    {
      a.a(paramView, paramInt, paramLayoutParams);
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        c.add(paramView);
      }
      return;
    }
  }
  
  public final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = a(paramInt))
    {
      a.a(paramView, paramInt);
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        c.add(paramView);
      }
      return;
    }
  }
  
  public final int b()
  {
    return a.a();
  }
  
  public final View b(int paramInt)
  {
    paramInt = a(paramInt);
    return a.b(paramInt);
  }
  
  public final View c(int paramInt)
  {
    return a.b(paramInt);
  }
  
  public final String toString()
  {
    return b.toString() + ", hidden list:" + c.size();
  }
  
  public static final class a
  {
    public long a = 0L;
    public a b;
    
    private void a()
    {
      if (b == null) {
        b = new a();
      }
    }
    
    public final void a(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = b;
        paramInt -= 64;
      }
      a |= 1L << paramInt;
    }
    
    final void a(int paramInt, boolean paramBoolean)
    {
      a locala1 = this;
      boolean bool = paramBoolean;
      while (paramInt >= 64)
      {
        locala1.a();
        locala1 = b;
        paramInt -= 64;
      }
      if ((a & 0x8000000000000000) != 0L)
      {
        paramBoolean = true;
        label47:
        long l1 = (1L << paramInt) - 1L;
        long l2 = a;
        a = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & a) << 1 | l2 & l1);
        if (!bool) {
          break label132;
        }
        locala1.a(paramInt);
      }
      for (;;)
      {
        if ((!paramBoolean) && (b == null)) {
          return;
        }
        locala1.a();
        locala1 = b;
        paramInt = 0;
        bool = paramBoolean;
        break;
        paramBoolean = false;
        break label47;
        label132:
        a locala2 = locala1;
        for (;;)
        {
          if (paramInt < 64) {
            break label165;
          }
          if (b == null) {
            break;
          }
          locala2 = b;
          paramInt -= 64;
        }
        label165:
        a &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
      }
    }
    
    public final boolean b(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = b;
        paramInt -= 64;
      }
      return (a & 1L << paramInt) != 0L;
    }
    
    public final boolean c(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.a();
        locala = b;
        paramInt -= 64;
      }
      long l1 = 1L << paramInt;
      if ((a & l1) != 0L) {}
      for (boolean bool = true;; bool = false)
      {
        a &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
        l1 -= 1L;
        long l2 = a;
        a = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & a, 1) | l2 & l1);
        if (b != null)
        {
          if (b.b(0)) {
            locala.a(63);
          }
          b.c(0);
        }
        return bool;
      }
    }
    
    public final int d(int paramInt)
    {
      if (b == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(a);
        }
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(a & (1L << paramInt) - 1L);
      }
      return b.d(paramInt - 64) + Long.bitCount(a);
    }
    
    public final String toString()
    {
      if (b == null) {
        return Long.toBinaryString(a);
      }
      return b.toString() + "xx" + Long.toBinaryString(a);
    }
  }
  
  public static abstract interface b
  {
    public abstract int a();
    
    public abstract int a(View paramView);
    
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView, int paramInt);
    
    public abstract void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract RecyclerView.s b(View paramView);
    
    public abstract View b(int paramInt);
    
    public abstract void b();
    
    public abstract void c(int paramInt);
  }
}

/* Location:
 * Qualified Name:     ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */