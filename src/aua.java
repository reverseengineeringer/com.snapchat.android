import javax.inject.Inject;

public final class aua
{
  public static final int MAX_CARD_LENGTH_WITHOUT_SPACES = 16;
  
  public static boolean a(String paramString)
  {
    if (paramString.length() != 16) {
      return false;
    }
    int j = paramString.length() - 1;
    int i = 0;
    if (j >= 0)
    {
      int k = Character.getNumericValue(paramString.charAt(j));
      if (j % 2 == 0)
      {
        int m = k * 2;
        k = m;
        if (m > 9) {
          k = m % 10 + m / 10;
        }
      }
      for (i = k + i;; i = k + i)
      {
        j -= 1;
        break;
      }
    }
    return i % 10 == 0;
  }
}

/* Location:
 * Qualified Name:     aua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */