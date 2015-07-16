public final class aat
  implements bvp<aas>
{
  private final bvk<aas> b;
  
  static
  {
    if (!aat.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private aat(bvk<aas> parambvk)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
  }
  
  public static bvp<aas> a(bvk<aas> parambvk)
  {
    return new aat(parambvk);
  }
}

/* Location:
 * Qualified Name:     aat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */