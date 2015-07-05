public final class zf
{
  final int a;
  final int b;
  final int c;
  private final boolean d;
  private final int e;
  private final int f;
  
  public zf(bjq parambjq, boolean paramBoolean)
  {
    d = paramBoolean;
    a = parambjq.c().intValue();
    Integer localInteger;
    if (parambjq.g())
    {
      localInteger = parambjq.f();
      e = localInteger.intValue();
      if (!parambjq.b()) {
        break label106;
      }
      i = parambjq.a().intValue();
      label57:
      f = i;
      if (!parambjq.e()) {
        break label111;
      }
      i = parambjq.d().intValue();
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
      localInteger = parambjq.c();
      break;
      i = 1;
      break label57;
      i = 0;
      break label77;
    }
  }
  
  public final String toString()
  {
    return ci.a(getClass()).a("isResume", d).a("interval", a).a("minSnapsAfterAd", b).a("firstAllowedIndex", c).toString();
  }
}

/* Location:
 * Qualified Name:     zf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */