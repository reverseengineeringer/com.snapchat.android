import java.util.Arrays;

final class cg$c
  extends cg
{
  private final char[] q;
  private final char[] r;
  
  cg$c(String paramString, char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    super(paramString);
    q = paramArrayOfChar1;
    r = paramArrayOfChar2;
    int i;
    if (paramArrayOfChar1.length == paramArrayOfChar2.length)
    {
      bool = true;
      ck.a(bool);
      i = 0;
      label33:
      if (i >= paramArrayOfChar1.length) {
        return;
      }
      if (paramArrayOfChar1[i] > paramArrayOfChar2[i]) {
        break label104;
      }
      bool = true;
      label54:
      ck.a(bool);
      if (i + 1 < paramArrayOfChar1.length) {
        if (paramArrayOfChar2[i] >= paramArrayOfChar1[(i + 1)]) {
          break label110;
        }
      }
    }
    label104:
    label110:
    for (boolean bool = true;; bool = false)
    {
      ck.a(bool);
      i += 1;
      break label33;
      bool = false;
      break;
      bool = false;
      break label54;
    }
  }
  
  public final boolean a(char paramChar)
  {
    int i = Arrays.binarySearch(q, paramChar);
    if (i >= 0) {}
    do
    {
      return true;
      i = (i ^ 0xFFFFFFFF) - 1;
    } while ((i >= 0) && (paramChar <= r[i]));
    return false;
  }
}

/* Location:
 * Qualified Name:     cg.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */