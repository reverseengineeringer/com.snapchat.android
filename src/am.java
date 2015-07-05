public final class am
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  
  public static String a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0);
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    int k = 0;
    int m = paramArrayOfByte.length;
    if (paramInt > 0) {}
    char[] arrayOfChar;
    int j;
    for (int i = m / paramInt;; i = 0)
    {
      arrayOfChar = new char[i + (m << 1)];
      j = 0;
      i = k;
      if (j < m) {
        break;
      }
      return new String(arrayOfChar);
    }
    if ((paramInt > 0) && (j % paramInt == 0) && (i > 0))
    {
      k = i + 1;
      arrayOfChar[i] = '-';
      i = k;
    }
    for (;;)
    {
      k = i + 1;
      arrayOfChar[i] = a[((paramArrayOfByte[j] & 0xF0) >>> 4)];
      i = k + 1;
      arrayOfChar[k] = a[(paramArrayOfByte[j] & 0xF)];
      j += 1;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */