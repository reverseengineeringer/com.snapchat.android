import android.os.Build.VERSION;
import android.text.TextUtils;

public final class axj
{
  private static final int SUPPLEMENTARY_ENDING_INDEX = 65039;
  private static final int SUPPLEMENTARY_STARTING_INDEX = 65024;
  private static final int[][] emojiRanges;
  
  static
  {
    int[] arrayOfInt = { 1041637, 1041646 };
    emojiRanges = new int[][] { { 126976, 131071 }, { 8352, 11263 }, arrayOfInt };
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
  
  public static boolean a(@cgc String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    label48:
    label143:
    for (;;)
    {
      return false;
      int j = 0;
      int k = 0;
      if (j >= paramString.length()) {
        break;
      }
      int m = paramString.codePointAt(j);
      int[][] arrayOfInt = emojiRanges;
      int n = arrayOfInt.length;
      int i = 0;
      if (i < n)
      {
        int[] arrayOfInt1 = arrayOfInt[i];
        if ((m < arrayOfInt1[0]) || (m > arrayOfInt1[1])) {}
      }
      for (i = 1;; i = 0)
      {
        if ((i == 0) && ((!paramBoolean) || (!Character.isWhitespace(m))) && ((j <= 0) || (m < 65024) || (m > 65039) || (k == 0))) {
          break label143;
        }
        j += Character.charCount(m);
        k = i;
        break;
        i += 1;
        break label48;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     axj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */