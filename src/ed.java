import java.math.RoundingMode;

@cd
public final class ed
{
  @cf
  static final byte[] a = { 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0 };
  @cf
  static final int[] b = { 1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000 };
  @cf
  static final int[] c = { 3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE };
  @cf
  static int[] d = { Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33 };
  private static final int[] e = { 1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600 };
  
  public static int a(int paramInt1, int paramInt2, RoundingMode paramRoundingMode)
  {
    int i = 1;
    boolean bool = true;
    int j = 0;
    ck.a(paramRoundingMode);
    if (paramInt2 == 0) {
      throw new ArithmeticException("/ by zero");
    }
    int k = paramInt1 / paramInt2;
    int n = paramInt1 - paramInt2 * k;
    if (n == 0) {
      return k;
    }
    int m = (paramInt1 ^ paramInt2) >> 31 | 0x1;
    paramInt1 = i;
    switch (ed.1.a[paramRoundingMode.ordinal()])
    {
    default: 
      throw new AssertionError();
    case 1: 
      if (n == 0) {
        ee.a(bool);
      }
      break;
    case 2: 
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 == 0) {
        break label255;
      }
      return k + m;
      bool = false;
      break;
      paramInt1 = i;
      if (m <= 0)
      {
        paramInt1 = 0;
        continue;
        paramInt1 = i;
        if (m >= 0)
        {
          paramInt1 = 0;
          continue;
          paramInt1 = Math.abs(n);
          paramInt2 = paramInt1 - (Math.abs(paramInt2) - paramInt1);
          if (paramInt2 == 0)
          {
            if (paramRoundingMode != RoundingMode.HALF_UP)
            {
              if (paramRoundingMode != RoundingMode.HALF_EVEN) {
                break label234;
              }
              paramInt2 = 1;
              label211:
              if ((k & 0x1) == 0) {
                break label239;
              }
            }
            label234:
            label239:
            for (i = 1;; i = 0)
            {
              paramInt1 = j;
              if ((i & paramInt2) != 0) {
                paramInt1 = 1;
              }
              break;
              paramInt2 = 0;
              break label211;
            }
          }
          paramInt1 = i;
          if (paramInt2 <= 0) {
            paramInt1 = 0;
          }
        }
      }
    }
    label255:
    return k;
  }
  
  public static int a(int paramInt, RoundingMode paramRoundingMode)
  {
    int j = 1;
    if (paramInt <= 0)
    {
      paramRoundingMode = String.valueOf(String.valueOf("x"));
      throw new IllegalArgumentException(paramRoundingMode.length() + 26 + paramRoundingMode + " (" + paramInt + ") must be > 0");
    }
    switch (ed.1.a[paramRoundingMode.ordinal()])
    {
    default: 
      throw new AssertionError();
    case 1: 
      if (paramInt > 0)
      {
        i = 1;
        if ((paramInt - 1 & paramInt) != 0) {
          break label153;
        }
      }
    case 2: 
    case 3: 
      for (;;)
      {
        ee.a(j & i);
        return 31 - Integer.numberOfLeadingZeros(paramInt);
        i = 0;
        break;
        j = 0;
      }
    case 4: 
    case 5: 
      label153:
      return 32 - Integer.numberOfLeadingZeros(paramInt - 1);
    }
    int i = Integer.numberOfLeadingZeros(paramInt);
    return 31 - i + (((-1257966797 >>> i) - paramInt ^ 0xFFFFFFFF ^ 0xFFFFFFFF) >>> 31);
  }
}

/* Location:
 * Qualified Name:     ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */