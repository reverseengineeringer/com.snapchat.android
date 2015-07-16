import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ex
  implements Iterator<ew>
{
  private static final Pattern a;
  private static final Pattern b = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
  private static final Pattern c = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
  private static final Pattern d = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
  private static final Pattern e = Pattern.compile(":[0-5]\\d");
  private static final Pattern f;
  private static final Pattern[] g = { Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)") };
  private static final Pattern h;
  private final ey i;
  private final CharSequence j;
  private final String k;
  private final ey.a l;
  private long m;
  private int n = ex.b.a;
  private ew o = null;
  private int p = 0;
  
  static
  {
    String str1 = String.valueOf(String.valueOf("(\\[（［"));
    String str2 = String.valueOf(String.valueOf(")\\]）］"));
    String str8 = str1.length() + 3 + str2.length() + "[^" + str1 + str2 + "]";
    String str9 = a(0, 3);
    str1 = String.valueOf(String.valueOf("(\\[（［"));
    str2 = String.valueOf(String.valueOf(str8));
    String str3 = String.valueOf(String.valueOf(")\\]）］"));
    String str4 = String.valueOf(String.valueOf(str8));
    String str5 = String.valueOf(String.valueOf("(\\[（［"));
    String str6 = String.valueOf(String.valueOf(str8));
    String str7 = String.valueOf(String.valueOf(")\\]）］"));
    str9 = String.valueOf(String.valueOf(str9));
    str8 = String.valueOf(String.valueOf(str8));
    f = Pattern.compile(str1.length() + 26 + str2.length() + str3.length() + str4.length() + str5.length() + str6.length() + str7.length() + str9.length() + str8.length() + "(?:[" + str1 + "])?(?:" + str2 + "+[" + str3 + "])?" + str4 + "+(?:[" + str5 + "]" + str6 + "+[" + str7 + "])" + str9 + str8 + "*");
    str5 = a(0, 2);
    str2 = a(0, 4);
    str4 = a(0, 20);
    str1 = String.valueOf("[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～]");
    str2 = String.valueOf(str2);
    if (str2.length() != 0)
    {
      str1 = str1.concat(str2);
      str2 = String.valueOf(a(1, 20));
      if (str2.length() == 0) {
        break label750;
      }
      str2 = "\\p{Nd}".concat(str2);
      label462:
      str3 = String.valueOf("(\\[（［");
      str6 = String.valueOf("+＋");
      if (str6.length() == 0) {
        break label763;
      }
    }
    label750:
    label763:
    for (str3 = str3.concat(str6);; str3 = new String(str3))
    {
      str3 = String.valueOf(String.valueOf(str3));
      str3 = str3.length() + 2 + "[" + str3 + "]";
      h = Pattern.compile(str3);
      str3 = String.valueOf(String.valueOf(str3));
      str6 = String.valueOf(String.valueOf(str1));
      str5 = String.valueOf(String.valueOf(str5));
      str7 = String.valueOf(String.valueOf(str2));
      str1 = String.valueOf(String.valueOf(str1));
      str2 = String.valueOf(String.valueOf(str2));
      str4 = String.valueOf(String.valueOf(str4));
      str8 = String.valueOf(String.valueOf(ey.f));
      a = Pattern.compile(str3.length() + 13 + str6.length() + str5.length() + str7.length() + str1.length() + str2.length() + str4.length() + str8.length() + "(?:" + str3 + str6 + ")" + str5 + str7 + "(?:" + str1 + str2 + ")" + str4 + "(?:" + str8 + ")?", 66);
      return;
      str1 = new String(str1);
      break;
      str2 = new String("\\p{Nd}");
      break label462;
    }
  }
  
  ex(ey paramey, CharSequence paramCharSequence, String paramString, ey.a parama, long paramLong)
  {
    if ((paramey == null) || (parama == null)) {
      throw new NullPointerException();
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException();
    }
    i = paramey;
    if (paramCharSequence != null) {}
    for (;;)
    {
      j = paramCharSequence;
      k = paramString;
      l = parama;
      m = paramLong;
      return;
      paramCharSequence = "";
    }
  }
  
  private ew a(String paramString, int paramInt)
  {
    try
    {
      if ((!f.matcher(paramString).matches()) || (b.matcher(paramString).find())) {
        break label285;
      }
      if (l.compareTo(ey.a.b) >= 0)
      {
        char c1;
        if ((paramInt > 0) && (!h.matcher(paramString).lookingAt()))
        {
          c1 = j.charAt(paramInt - 1);
          if ((b(c1)) || (a(c1))) {
            break label287;
          }
        }
        int i1 = paramString.length() + paramInt;
        if (i1 < j.length())
        {
          c1 = j.charAt(i1);
          if ((b(c1)) || (a(c1))) {
            break label289;
          }
        }
      }
      ey localey = i;
      String str = k;
      fa.a locala = new fa.a();
      localey.a(paramString, str, true, true, locala);
      if ((i.b(a).equals("IL")) && (ey.a(locala).length() == 4) && ((paramInt == 0) || ((paramInt > 0) && (j.charAt(paramInt - 1) != '*')))) {
        break label291;
      }
      if (l.a(locala, paramString, i))
      {
        locala.c();
        locala.b();
        locala.d();
        paramString = new ew(paramInt, paramString, locala);
        return paramString;
      }
    }
    catch (ev paramString) {}
    return null;
    label285:
    return null;
    label287:
    return null;
    label289:
    return null;
    label291:
    return null;
  }
  
  private static CharSequence a(Pattern paramPattern, CharSequence paramCharSequence)
  {
    Matcher localMatcher = paramPattern.matcher(paramCharSequence);
    paramPattern = paramCharSequence;
    if (localMatcher.find()) {
      paramPattern = paramCharSequence.subSequence(0, localMatcher.start());
    }
    return paramPattern;
  }
  
  private static String a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 <= 0) || (paramInt2 < paramInt1)) {
      throw new IllegalArgumentException();
    }
    return 25 + "{" + paramInt1 + "," + paramInt2 + "}";
  }
  
  private static boolean a(char paramChar)
  {
    if ((!Character.isLetter(paramChar)) && (Character.getType(paramChar) != 6)) {}
    Character.UnicodeBlock localUnicodeBlock;
    do
    {
      return false;
      localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    } while ((!localUnicodeBlock.equals(Character.UnicodeBlock.BASIC_LATIN)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_A)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.LATIN_EXTENDED_B)) && (!localUnicodeBlock.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS)));
    return true;
  }
  
  static boolean a(ey paramey, fa.a parama, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    Object localObject;
    if (i != fa.a.a.d)
    {
      localObject = Integer.toString(a);
      i1 = paramStringBuilder.indexOf((String)localObject);
    }
    for (int i1 = ((String)localObject).length() + i1;; i1 = 0)
    {
      int i3 = 0;
      int i2 = i1;
      i1 = i3;
      while (i1 < paramArrayOfString.length)
      {
        i2 = paramStringBuilder.indexOf(paramArrayOfString[i1], i2);
        if (i2 < 0) {
          return false;
        }
        i2 += paramArrayOfString[i1].length();
        if ((i1 == 0) && (i2 < paramStringBuilder.length()))
        {
          String str = paramey.b(a);
          localObject = paramey.c(str);
          if (localObject == null)
          {
            Logger localLogger = ey.b;
            Level localLevel = Level.WARNING;
            localObject = str;
            if (str == null) {
              localObject = "null";
            }
            localObject = String.valueOf(String.valueOf(localObject));
            localLogger.log(localLevel, ((String)localObject).length() + 43 + "Invalid or missing region code (" + (String)localObject + ") provided.");
            localObject = null;
          }
          while ((localObject != null) && (Character.isDigit(paramStringBuilder.charAt(i2))))
          {
            paramey = ey.a(parama);
            return paramStringBuilder.substring(i2 - paramArrayOfString[i1].length()).startsWith(paramey);
            localObject = n;
            if (((String)localObject).length() == 0) {
              localObject = null;
            } else {
              localObject = ((String)localObject).replace("~", "");
            }
          }
        }
        i1 += 1;
      }
      return paramStringBuilder.substring(i2).contains(d);
    }
  }
  
  static boolean a(fa.a parama, ey paramey)
  {
    if (i != fa.a.a.d) {}
    ez.b localb;
    Object localObject;
    do
    {
      do
      {
        return true;
        localb = paramey.c(paramey.b(a));
      } while (localb == null);
      localObject = ey.a(parama);
      localObject = paramey.a(t, (String)localObject);
    } while ((localObject == null) || (d.length() <= 0) || (e) || (ey.b(d)));
    return paramey.a(new StringBuilder(ey.a(h)), localb, null);
  }
  
  static boolean a(fa.a parama, String paramString)
  {
    int i2 = paramString.indexOf('/');
    if (i2 < 0) {}
    int i3;
    do
    {
      return false;
      i3 = paramString.indexOf('/', i2 + 1);
    } while (i3 < 0);
    if ((i == fa.a.a.a) || (i == fa.a.a.c)) {}
    for (int i1 = 1; (i1 != 0) && (ey.a(paramString.substring(0, i2)).equals(Integer.toString(a))); i1 = 0) {
      return paramString.substring(i3 + 1).contains("/");
    }
    return true;
  }
  
  static boolean a(fa.a parama, String paramString, ey paramey)
  {
    int i2;
    for (int i1 = 0; i1 < paramString.length() - 1; i1 = i2 + 1)
    {
      int i3 = paramString.charAt(i1);
      if (i3 != 120)
      {
        i2 = i1;
        if (i3 != 88) {}
      }
      else
      {
        i2 = paramString.charAt(i1 + 1);
        if ((i2 == 120) || (i2 == 88))
        {
          i1 += 1;
          i2 = i1;
          if (paramey.a(parama, paramString.substring(i1)) == ey.b.d) {}
        }
        else
        {
          while (!ey.a(paramString.substring(i1)).equals(d)) {
            return false;
          }
          i2 = i1;
        }
      }
    }
    return true;
  }
  
  static boolean a(fa.a parama, String paramString, ey paramey, ex.a parama1)
  {
    paramString = ey.a(paramString, true);
    if (parama1.a(paramey, parama, paramString, a(paramey, parama, null))) {
      return true;
    }
    Object localObject = eu.a(a);
    if (localObject != null)
    {
      localObject = t.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (parama1.a(paramey, parama, paramString, a(paramey, parama, (ez.a)((Iterator)localObject).next()))) {
          return true;
        }
      }
    }
    return false;
  }
  
  static boolean a(fa.a parama, StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    paramStringBuilder = ey.g.split(paramStringBuilder.toString());
    if (c) {}
    for (int i1 = paramStringBuilder.length - 2; (paramStringBuilder.length == 1) || (paramStringBuilder[i1].contains(ey.a(parama))); i1 = paramStringBuilder.length - 1) {
      return true;
    }
    int i2 = paramArrayOfString.length - 1;
    while ((i2 > 0) && (i1 >= 0))
    {
      if (!paramStringBuilder[i1].equals(paramArrayOfString[i2])) {
        return false;
      }
      i2 -= 1;
      i1 -= 1;
    }
    return (i1 >= 0) && (paramStringBuilder[i1].endsWith(paramArrayOfString[0]));
  }
  
  private static String[] a(ey paramey, fa.a parama, ez.a parama1)
  {
    if (parama1 == null)
    {
      int i1 = ey.c.d;
      if ((b == 0L) && (g))
      {
        parama1 = h;
        if (parama1.length() > 0)
        {
          paramey = parama1;
          i2 = paramey.indexOf(';');
          i1 = i2;
          if (i2 < 0) {
            i1 = paramey.length();
          }
          return paramey.substring(paramey.indexOf('-') + 1, i1).split("-");
        }
      }
      StringBuilder localStringBuilder = new StringBuilder(20);
      localStringBuilder.setLength(0);
      int i2 = a;
      String str = ey.a(parama);
      if (i1 == ey.c.a)
      {
        localStringBuilder.append(str);
        ey.a(i2, ey.c.a, localStringBuilder);
      }
      for (;;)
      {
        paramey = localStringBuilder.toString();
        break;
        if (paramey.a(i2)) {
          break label162;
        }
        localStringBuilder.append(str);
      }
      label162:
      ez.b localb = paramey.a(i2, paramey.b(i2));
      if ((u.size() == 0) || (i1 == ey.c.c))
      {
        parama1 = t;
        label202:
        parama1 = paramey.a(parama1, str);
        if (parama1 != null) {
          break label253;
        }
      }
      label253:
      for (paramey = str;; paramey = paramey.a(str, parama1, i1))
      {
        localStringBuilder.append(paramey);
        ey.a(parama, localb, i1, localStringBuilder);
        ey.a(i2, i1, localStringBuilder);
        break;
        parama1 = u;
        break label202;
      }
    }
    return paramey.a(ey.a(parama), parama1, ey.c.d).split("-");
  }
  
  private static boolean b(char paramChar)
  {
    return (paramChar == '%') || (Character.getType(paramChar) == 26);
  }
  
  public final boolean hasNext()
  {
    int i1;
    int i4;
    Object localObject;
    CharSequence localCharSequence;
    String str;
    if (n == ex.b.a)
    {
      i1 = p;
      Matcher localMatcher1 = a.matcher(j);
      if ((m <= 0L) || (!localMatcher1.find(i1))) {
        break label404;
      }
      i4 = localMatcher1.start();
      localObject = j.subSequence(i4, localMatcher1.end());
      localCharSequence = a(ey.d, (CharSequence)localObject);
      if (c.matcher(localCharSequence).find()) {
        break label374;
      }
      if (d.matcher(localCharSequence).find())
      {
        localObject = j.toString().substring(localCharSequence.length() + i4);
        if (e.matcher((CharSequence)localObject).lookingAt()) {
          break label374;
        }
      }
      str = localCharSequence.toString();
      localObject = a(str, i4);
      if (localObject == null) {
        break label207;
      }
      label170:
      if (localObject == null) {
        break label380;
      }
      label175:
      o = ((ew)localObject);
      if (o != null) {
        break label410;
      }
    }
    for (n = ex.b.c;; n = ex.b.b)
    {
      if (n != ex.b.b) {
        break label431;
      }
      return true;
      label207:
      Pattern[] arrayOfPattern = g;
      int i5 = arrayOfPattern.length;
      i1 = 0;
      for (;;)
      {
        if (i1 >= i5) {
          break label374;
        }
        Matcher localMatcher2 = arrayOfPattern[i1].matcher(str);
        int i3;
        for (int i2 = 1;; i2 = i3)
        {
          if ((!localMatcher2.find()) || (m <= 0L)) {
            break label367;
          }
          i3 = i2;
          if (i2 != 0)
          {
            ew localew = a(a(ey.e, str.substring(0, localMatcher2.start())).toString(), i4);
            localObject = localew;
            if (localew != null) {
              break;
            }
            m -= 1L;
            i3 = 0;
          }
          localObject = a(a(ey.e, localMatcher2.group(1)).toString(), localMatcher2.start(1) + i4);
          if (localObject != null) {
            break;
          }
          m -= 1L;
        }
        label367:
        i1 += 1;
      }
      label374:
      localObject = null;
      break label170;
      label380:
      i1 = localCharSequence.length() + i4;
      m -= 1L;
      break;
      label404:
      localObject = null;
      break label175;
      label410:
      p = o.a();
    }
    label431:
    return false;
  }
  
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
  
  static abstract interface a
  {
    public abstract boolean a(ey paramey, fa.a parama, StringBuilder paramStringBuilder, String[] paramArrayOfString);
  }
  
  static enum b {}
}

/* Location:
 * Qualified Name:     ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */