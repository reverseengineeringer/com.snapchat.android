import java.util.List;

final class blk$a
  implements blv.a
{
  private final int b;
  private final bma c;
  private final boolean d;
  
  blk$a(blk paramblk, int paramInt, bma parambma, boolean paramBoolean)
  {
    b = paramInt;
    c = parambma;
    d = paramBoolean;
  }
  
  public final bmc a(bma parambma)
  {
    if (b < a.a.h.size())
    {
      new a(a, b + 1, parambma, d);
      return ((blv)a.a.h.get(b)).a();
    }
    return a.a(parambma, d);
  }
}

/* Location:
 * Qualified Name:     blk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */