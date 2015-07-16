public final class zj
{
  private static zj a;
  
  public static zj a()
  {
    try
    {
      if (a == null) {
        a = new zj();
      }
      zj localzj = a;
      return localzj;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     zj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */