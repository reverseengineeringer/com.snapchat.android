public final class amc
{
  public final String a;
  public final String b;
  public final long c;
  public final int d;
  public final String e;
  
  public amc(@chc String paramString1, @chc String paramString2, @chc String paramString3, int paramInt, long paramLong)
  {
    a = paramString1;
    b = paramString2;
    e = paramString3;
    d = paramInt;
    c = paramLong;
  }
  
  public final String toString()
  {
    return cl.a(this).a("contentKey", a).a("requestId", b).a("type", e).a("sizeBytes", d).a("expiration", c).toString();
  }
}

/* Location:
 * Qualified Name:     amc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */