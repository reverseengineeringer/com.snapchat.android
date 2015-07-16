public abstract class cbb
  implements cbk
{
  private final cbk delegate;
  
  public cbb(cbk paramcbk)
  {
    if (paramcbk == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    delegate = paramcbk;
  }
  
  public final cbl E_()
  {
    return delegate.E_();
  }
  
  public long a(cav paramcav, long paramLong)
  {
    return delegate.a(paramcav, paramLong);
  }
  
  public void close()
  {
    delegate.close();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + delegate.toString() + ")";
  }
}

/* Location:
 * Qualified Name:     cbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */