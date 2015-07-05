import java.util.Comparator;
import javax.annotation.Nullable;

final class cw$1
  extends cw
{
  cw$1()
  {
    super((byte)0);
  }
  
  private static cw a(int paramInt)
  {
    if (paramInt < 0) {
      return cw.b;
    }
    if (paramInt > 0) {
      return cw.c;
    }
    return cw.a;
  }
  
  public final cw a(int paramInt1, int paramInt2)
  {
    return a(eg.a(paramInt1, paramInt2));
  }
  
  public final cw a(long paramLong1, long paramLong2)
  {
    int i;
    if (paramLong1 < paramLong2) {
      i = -1;
    }
    for (;;)
    {
      return a(i);
      if (paramLong1 > paramLong2) {
        i = 1;
      } else {
        i = 0;
      }
    }
  }
  
  public final cw a(Comparable paramComparable1, Comparable paramComparable2)
  {
    return a(paramComparable1.compareTo(paramComparable2));
  }
  
  public final <T> cw a(@Nullable T paramT1, @Nullable T paramT2, Comparator<T> paramComparator)
  {
    return a(paramComparator.compare(paramT1, paramT2));
  }
  
  public final cw a(boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(ef.a(paramBoolean2, paramBoolean1));
  }
  
  public final int b()
  {
    return 0;
  }
  
  public final cw b(boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(ef.a(paramBoolean1, paramBoolean2));
  }
}

/* Location:
 * Qualified Name:     cw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */