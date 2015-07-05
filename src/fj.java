import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class fj
{
  static Pattern a;
  
  static
  {
    if (!fj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");
      return;
    }
  }
  
  public static <T extends as> T a(au paramau, String paramString)
  {
    paramau = a(paramau, paramString, true);
    if (paramau.isEmpty()) {
      return null;
    }
    return (as)paramau.get(0);
  }
  
  public static <T extends as> T a(eu parameu, String paramString)
  {
    parameu = a(parameu, paramString, true);
    if (parameu.isEmpty()) {
      return null;
    }
    return (as)parameu.get(0);
  }
  
  public static String a(as paramas)
  {
    Object localObject = "";
    as localas1 = paramas;
    paramas = (as)localObject;
    localObject = localas1.getParent();
    Iterator localIterator = ((au)localObject).getBoxes().iterator();
    int i = 0;
    for (;;)
    {
      label29:
      if (!localIterator.hasNext()) {}
      as localas2;
      do
      {
        paramas = String.format("/%s[%d]", new Object[] { localas1.getType(), Integer.valueOf(i) }) + paramas;
        if (!(localObject instanceof as)) {
          return paramas;
        }
        localas1 = (as)localObject;
        break;
        localas2 = (as)localIterator.next();
        if (!localas2.getType().equals(localas1.getType())) {
          break label29;
        }
      } while (localas2 == localas1);
      i += 1;
    }
    return paramas;
  }
  
  private static <T extends as> List<T> a(as paramas, String paramString, boolean paramBoolean)
  {
    return a(paramas, paramString, paramBoolean);
  }
  
  private static <T extends as> List<T> a(au paramau, String paramString, boolean paramBoolean)
  {
    return a(paramau, paramString, paramBoolean);
  }
  
  private static <T extends as> List<T> a(Object paramObject, String paramString, boolean paramBoolean)
  {
    int i = 0;
    if (paramString.startsWith("/"))
    {
      paramString = paramString.substring(1);
      if ((paramObject instanceof as)) {}
    }
    for (;;)
    {
      if (paramString.length() == 0)
      {
        if ((paramObject instanceof as))
        {
          return Collections.singletonList((as)paramObject);
          paramObject = ((as)paramObject).getParent();
          break;
        }
        throw new RuntimeException("Result of path expression seems to be the root container. This is not allowed!");
      }
      String str;
      if (paramString.contains("/"))
      {
        str = paramString.substring(paramString.indexOf('/') + 1);
        paramString = paramString.substring(0, paramString.indexOf('/'));
      }
      Object localObject;
      for (;;)
      {
        localObject = a.matcher(paramString);
        if (!((Matcher)localObject).matches()) {
          break label317;
        }
        paramString = ((Matcher)localObject).group(1);
        if (!"..".equals(paramString)) {
          break label171;
        }
        if (!(paramObject instanceof as)) {
          break;
        }
        return a(((as)paramObject).getParent(), str, paramBoolean);
        str = "";
      }
      return Collections.emptyList();
      label171:
      if ((paramObject instanceof au)) {
        if (((Matcher)localObject).group(2) == null) {
          break label350;
        }
      }
      label317:
      label350:
      for (int j = Integer.parseInt(((Matcher)localObject).group(3));; j = -1)
      {
        localObject = new LinkedList();
        paramObject = ((au)paramObject).getBoxes().iterator();
        if (!((Iterator)paramObject).hasNext()) {
          return (List<T>)localObject;
        }
        as localas = (as)((Iterator)paramObject).next();
        if (localas.getType().matches(paramString))
        {
          if ((j == -1) || (j == i)) {
            ((List)localObject).addAll(a(localas, str, paramBoolean));
          }
          i += 1;
        }
        for (;;)
        {
          if (((paramBoolean) || (j >= 0)) && (!((List)localObject).isEmpty()))
          {
            return (List<T>)localObject;
            return Collections.emptyList();
            throw new RuntimeException(paramString + " is invalid path.");
          }
          break;
        }
      }
    }
  }
  
  public static <T extends as> List<T> b(au paramau, String paramString)
  {
    return a(paramau, paramString, false);
  }
}

/* Location:
 * Qualified Name:     fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */