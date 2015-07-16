package kkkkkk;

public class xxkkxk
  extends xkkxkk
{
  public static int b044E044E044Eю044E044E = 92;
  public static int b044Eюю044E044E044E = 0;
  public static int bю044Eю044E044E044E = 2;
  public static int bююю044E044E044E = 1;
  
  public static int b041A041AК041A041AК()
  {
    return 45;
  }
  
  public static int bКК041A041A041AК()
  {
    return 2;
  }
  
  public String bК041A041AККК(String paramString, char paramChar)
  {
    int m = 1;
    Object localObject = String.valueOf(paramChar);
    int[] arrayOfInt1 = new int['ā'];
    int[] arrayOfInt2 = new int['ā'];
    int j = ((String)localObject).length();
    int i = 0;
    while (i <= 255)
    {
      k = Integer.valueOf(localObject.substring(i % j, i % j + 1).toCharArray()[0]).intValue();
      switch (0)
      {
      case 1: 
      default: 
        for (;;)
        {
          switch (0)
          {
          }
        }
      }
      if ((b044E044E044Eю044E044E + bююю044E044E044E) * b044E044E044Eю044E044E % bю044Eю044E044E044E != b044Eюю044E044E044E)
      {
        int n = b044E044E044Eю044E044E;
        switch (n * (bююю044E044E044E + n) % bю044Eю044E044E044E)
        {
        default: 
          b044E044E044Eю044E044E = 1;
          b044Eюю044E044E044E = 28;
        }
        b044E044E044Eю044E044E = 84;
        b044Eюю044E044E044E = 64;
      }
      arrayOfInt2[i] = k;
      arrayOfInt1[i] = i;
      i += 1;
    }
    i = 0;
    j = 0;
    while (i <= 255)
    {
      j = (j + arrayOfInt1[i] + arrayOfInt2[i]) % 256;
      k = arrayOfInt1[i];
      arrayOfInt1[i] = arrayOfInt1[j];
      arrayOfInt1[j] = k;
      i += 1;
    }
    localObject = new StringBuilder();
    j = 0;
    int k = 0;
    i = m;
    while (i <= paramString.length())
    {
      k = (k + 1) % 256;
      j = (j + arrayOfInt1[k]) % 256;
      m = arrayOfInt1[k];
      arrayOfInt1[k] = arrayOfInt1[j];
      arrayOfInt1[j] = m;
      ((StringBuilder)localObject).append((char)(arrayOfInt1[((arrayOfInt1[k] + arrayOfInt1[j]) % 256)] ^ Integer.valueOf(paramString.substring(i - 1, i - 1 + 1).toCharArray()[0]).intValue()));
      i += 1;
    }
    paramString = ((StringBuilder)localObject).toString();
    ((StringBuilder)localObject).setLength(0);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     kkkkkk.xxkkxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */