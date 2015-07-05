public final class bxk
{
  public String a;
  public int b;
  
  public bxk(String paramString, int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1)) {
      throw new bxh("Invalid function result type.");
    }
    a = paramString;
    b = paramInt;
  }
}

/* Location:
 * Qualified Name:     bxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */