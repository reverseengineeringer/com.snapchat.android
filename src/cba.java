public abstract class cba
  implements cbj
{
  private final cbj a;
  
  public cba(cbj paramcbj)
  {
    if (paramcbj == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    a = paramcbj;
  }
  
  public final cbl E_()
  {
    return a.E_();
  }
  
  public void a_(cav paramcav, long paramLong)
  {
    a.a_(paramcav, paramLong);
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
 * Qualified Name:     cba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */