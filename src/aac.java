public final class aac
{
  final int a;
  final int b;
  final int c;
  private final boolean d;
  private final int e;
  private final int f;
  
  public aac(bkr parambkr, boolean paramBoolean)
  {
    d = paramBoolean;
    a = parambkr.c().intValue();
    Integer localInteger;
    if (parambkr.g())
    {
      localInteger = parambkr.f();
      e = localInteger.intValue();
      if (!parambkr.b()) {
        break label106;
      }
      i = parambkr.a().intValue();
      label57:
      f = i;
      if (!parambkr.e()) {
        break label111;
      }
      i = parambkr.d().intValue();
      label77:
      b = i;
      if (!paramBoolean) {
        break label116;
      }
    }
    label106:
    label111:
    label116:
    for (int i = f;; i = e)
    {
      c = i;
      return;
      localInteger = parambkr.c();
      break;
      i = 1;
      break label57;
      i = 0;
      break label77;
    }
  }
  
  public final String toString()
  {
    return cl.a(getClass()).a("isResume", d).a("interval", a).a("minSnapsAfterAd", b).a("firstAllowedIndex", c).toString();
  }
}

/* Location:
 * Qualified Name:     aac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */