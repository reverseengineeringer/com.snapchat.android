public final class aip
{
  private static final aip c = new aip();
  final Object a = new Object();
  akv b;
  
  public static aip a()
  {
    return c;
  }
  
  public final akv b()
  {
    synchronized (a)
    {
      akv localakv = b;
      return localakv;
    }
  }
}

/* Location:
 * Qualified Name:     aip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */