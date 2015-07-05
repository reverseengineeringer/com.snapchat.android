import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bla
  extends Error
{
  private bla(String paramString)
  {
    super(paramString);
  }
  
  static final class a
  {
    private static final Pattern c = Pattern.compile("\\((.*?)\\)");
    private static final Pattern d = Pattern.compile("\\s+at\\s.+");
    String a;
    StackTraceElement[] b;
    
    a() {}
    
    a(@cgc String paramString)
    {
      a(paramString);
    }
    
    private a a(@cgc String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        a = "NO STACK TRACE PROVIDED";
      }
      String[] arrayOfString;
      do
      {
        return this;
        a = paramString;
        arrayOfString = TextUtils.split(paramString, "\n");
      } while (arrayOfString.length <= 1);
      Object localObject1 = null;
      paramString = null;
      ArrayList localArrayList = new ArrayList();
      int i = 1;
      Object localObject3;
      Object localObject2;
      if (i < arrayOfString.length)
      {
        if (TextUtils.isEmpty(arrayOfString[i])) {
          break label444;
        }
        localObject3 = arrayOfString[i];
        localObject2 = c.matcher((CharSequence)localObject3);
        if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (d.matcher((CharSequence)localObject3).matches()) && (((Matcher)localObject2).find()))
        {
          localObject3 = ((String)localObject3).replaceFirst("\\s+at\\s+", "");
          String str = ((Matcher)localObject2).group();
          localObject3 = ((String)localObject3).replace(str, "");
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            localObject2 = new String[0];
            label156:
            if (localObject2.length != 1) {
              break label300;
            }
            localObject2 = "";
            label167:
            localObject2 = Pair.create(localObject3, localObject2);
            localObject3 = b(str);
            localObject2 = new StackTraceElement((String)first, (String)second, (String)first, ((Integer)second).intValue());
            label227:
            if ((localObject1 != null) || (!arrayOfString[i].contains("com.snapchat"))) {
              break label430;
            }
            localObject1 = localObject2;
            label246:
            if (paramString != null) {
              break label427;
            }
            localObject3 = arrayOfString[i];
            if (!d.matcher((CharSequence)localObject3).matches()) {
              break label427;
            }
            paramString = (String)localObject2;
            label273:
            localArrayList.add(localObject2);
          }
        }
      }
      label300:
      label427:
      label430:
      label444:
      for (;;)
      {
        i += 1;
        break;
        localObject2 = ((String)localObject3).split("\\.");
        break label156;
        if (localObject2.length >= 2)
        {
          localObject2 = localObject2[(localObject2.length - 1)];
          localObject3 = ((String)localObject3).substring(0, ((String)localObject3).length() - ((String)localObject2).length() - 1);
          break label167;
          localObject2 = new StackTraceElement((String)localObject3, "", null, -1);
          break label227;
          localObject2 = arrayOfString[0];
          if (localObject1 != null) {
            localObject1 = ((StackTraceElement)localObject1).toString();
          }
          for (;;)
          {
            a = ((String)localObject1);
            if (localArrayList.isEmpty()) {
              break;
            }
            b = ((StackTraceElement[])localArrayList.toArray(new StackTraceElement[0]));
            return this;
            localObject1 = localObject2;
            if (paramString != null) {
              localObject1 = paramString.toString();
            }
          }
          b = null;
          return this;
          break label273;
          break label246;
        }
        localObject2 = "";
        localObject3 = "";
        break label167;
      }
    }
    
    private static Pair<String, Integer> b(@cgb String paramString)
    {
      int i = -1;
      String str = paramString;
      if (paramString.length() >= 2) {
        str = paramString.substring(1, paramString.length() - 1);
      }
      StringTokenizer localStringTokenizer = new StringTokenizer(str, ":~");
      if (localStringTokenizer.countTokens() == 2)
      {
        paramString = localStringTokenizer.nextToken();
        str = localStringTokenizer.nextToken();
      }
      for (;;)
      {
        try
        {
          boolean bool = TextUtils.isEmpty(str);
          if (!bool) {
            continue;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          int j;
          localNumberFormatException.printStackTrace();
          continue;
        }
        return Pair.create(paramString, Integer.valueOf(i));
        j = Integer.parseInt(str);
        i = j;
        continue;
        paramString = localNumberFormatException;
        if ("Native Method".equalsIgnoreCase(localNumberFormatException))
        {
          i = -2;
          paramString = localNumberFormatException;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */