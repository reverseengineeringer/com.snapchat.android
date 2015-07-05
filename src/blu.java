import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public final class blu
{
  public final String[] a;
  
  private blu(blu.a parama)
  {
    a = ((String[])a.toArray(new String[a.size()]));
  }
  
  private blu(String[] paramArrayOfString)
  {
    a = paramArrayOfString;
  }
  
  public static blu a(String... paramVarArgs)
  {
    paramVarArgs = (String[])paramVarArgs.clone();
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i] == null) {
        throw new IllegalArgumentException("Headers cannot be null");
      }
      paramVarArgs[i] = paramVarArgs[i].trim();
      i += 1;
    }
    i = 0;
    while (i < paramVarArgs.length)
    {
      String str1 = paramVarArgs[i];
      String str2 = paramVarArgs[(i + 1)];
      if ((str1.length() == 0) || (str1.indexOf(0) != -1) || (str2.indexOf(0) != -1)) {
        throw new IllegalArgumentException("Unexpected header: " + str1 + ": " + str2);
      }
      i += 2;
    }
    return new blu(paramVarArgs);
  }
  
  public final String a(int paramInt)
  {
    paramInt *= 2;
    if ((paramInt < 0) || (paramInt >= a.length)) {
      return null;
    }
    return a[paramInt];
  }
  
  public final String a(String paramString)
  {
    String[] arrayOfString = a;
    int i = arrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(arrayOfString[i])) {
        return arrayOfString[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public final Set<String> a()
  {
    TreeSet localTreeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
    int i = 0;
    int j = a.length / 2;
    while (i < j)
    {
      localTreeSet.add(a(i));
      i += 1;
    }
    return Collections.unmodifiableSet(localTreeSet);
  }
  
  public final blu.a b()
  {
    blu.a locala = new blu.a();
    Collections.addAll(a, a);
    return locala;
  }
  
  public final String b(int paramInt)
  {
    paramInt = paramInt * 2 + 1;
    if ((paramInt < 0) || (paramInt >= a.length)) {
      return null;
    }
    return a[paramInt];
  }
  
  public final Date b(String paramString)
  {
    paramString = a(paramString);
    if (paramString != null) {
      return bmv.a(paramString);
    }
    return null;
  }
  
  public final List<String> c(String paramString)
  {
    int j = a.length / 2;
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if (paramString.equalsIgnoreCase(a(i)))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(2);
        }
        ((List)localObject2).add(b(i));
      }
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      return Collections.unmodifiableList((List)localObject1);
    }
    return Collections.emptyList();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = a.length / 2;
    while (i < j)
    {
      localStringBuilder.append(a(i)).append(": ").append(b(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    final List<String> a = new ArrayList(20);
    
    private a c(String paramString1, String paramString2)
    {
      a.add(paramString1);
      a.add(paramString2.trim());
      return this;
    }
    
    final a a(String paramString)
    {
      int i = paramString.indexOf(":", 1);
      if (i != -1) {
        return c(paramString.substring(0, i), paramString.substring(i + 1));
      }
      if (paramString.startsWith(":")) {
        return c("", paramString.substring(1));
      }
      return c("", paramString);
    }
    
    public final a a(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new IllegalArgumentException("name == null");
      }
      if (paramString2 == null) {
        throw new IllegalArgumentException("value == null");
      }
      if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1)) {
        throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
      }
      return c(paramString1, paramString2);
    }
    
    public final blu a()
    {
      return new blu(this, (byte)0);
    }
    
    public final a b(String paramString)
    {
      int j;
      for (int i = 0; i < a.size(); i = j + 2)
      {
        j = i;
        if (paramString.equalsIgnoreCase((String)a.get(i)))
        {
          a.remove(i);
          a.remove(i);
          j = i - 2;
        }
      }
      return this;
    }
    
    public final a b(String paramString1, String paramString2)
    {
      b(paramString1);
      a(paramString1, paramString2);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     blu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */