public abstract class bzz
  implements cai
{
  private final cai a;
  
  public bzz(cai paramcai)
  {
    if (paramcai == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramcai;
  }
  
  public final cak E_()
  {
    return a.E_();
  }
  
  public void a_(bzu parambzu, long paramLong)
  {
    a.a_(parambzu, paramLong);
  }
  
  public void close()
  {
    a.close();
  }
  
  public void flush()
  {
    a.flush();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + a.toString() + ")";
  }
}

/* Location:
 * Qualified Name:     bzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */