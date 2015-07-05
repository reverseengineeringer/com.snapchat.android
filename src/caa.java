public abstract class caa
  implements caj
{
  private final caj a;
  
  public caa(caj paramcaj)
  {
    if (paramcaj == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramcaj;
  }
  
  public final cak E_()
  {
    return a.E_();
  }
  
  public long a(bzu parambzu, long paramLong)
  {
    return a.a(parambzu, paramLong);
  }
  
  public void close()
  {
    a.close();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + a.toString() + ")";
  }
}

/* Location:
 * Qualified Name:     caa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */