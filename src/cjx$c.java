final class cjx$c
  extends cjx.g
{
  protected cjx$c(cgi paramcgi, int paramInt)
  {
    super(paramcgi, paramInt, false, paramInt);
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    int k = super.a(paramcjz, paramString, paramInt);
    if (k < 0) {}
    int i;
    do
    {
      int j;
      do
      {
        return k;
        j = b + paramInt;
      } while (k == j);
      i = j;
      if (c)
      {
        paramInt = paramString.charAt(paramInt);
        if (paramInt != 45)
        {
          i = j;
          if (paramInt != 43) {}
        }
        else
        {
          i = j + 1;
        }
      }
      if (k > i) {
        return i + 1 ^ 0xFFFFFFFF;
      }
    } while (k >= i);
    return k ^ 0xFFFFFFFF;
  }
}

/* Location:
 * Qualified Name:     cjx.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */