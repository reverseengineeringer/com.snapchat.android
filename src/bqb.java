public enum bqb
{
  final int d;
  
  private bqb(int paramInt)
  {
    d = paramInt;
  }
  
  public static boolean a(int paramInt)
  {
    return (ad & paramInt) == 0;
  }
  
  public static boolean b(int paramInt)
  {
    return (bd & paramInt) == 0;
  }
  
  public static boolean c(int paramInt)
  {
    return (cd & paramInt) != 0;
  }
}

/* Location:
 * Qualified Name:     bqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */