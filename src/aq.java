import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class aq
  extends ak
{
  static String[] g = new String[0];
  Properties b;
  Pattern c = Pattern.compile("(.*)\\((.*?)\\)");
  StringBuilder d = new StringBuilder();
  String e;
  String[] f;
  
  public aq(Properties paramProperties)
  {
    b = paramProperties;
  }
  
  public final as a(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    Object localObject1;
    Object localObject2;
    if (paramArrayOfByte != null)
    {
      if (!"uuid".equals(paramString1)) {
        throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
      }
      localObject1 = b.getProperty("uuid[" + am.a(paramArrayOfByte).toUpperCase() + "]");
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = b.getProperty(paramString2 + "-uuid[" + am.a(paramArrayOfByte).toUpperCase() + "]");
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = b.getProperty("uuid");
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = b.getProperty("default");
      }
      if (localObject2 != null) {
        break;
      }
      throw new RuntimeException("No box object found for " + paramString1);
      localObject2 = b.getProperty(paramString1);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = paramString2 + '-' + paramString1;
        d.setLength(0);
        localObject1 = b.getProperty((String)localObject1);
      }
    }
    if (!((String)localObject2).endsWith(")"))
    {
      f = g;
      e = ((String)localObject2);
    }
    for (;;)
    {
      int i;
      try
      {
        localObject1 = Class.forName(e);
        if (f.length > 0)
        {
          localObject2 = new Class[f.length];
          arrayOfObject = new Object[f.length];
          i = 0;
          if (i >= f.length)
          {
            paramString1 = (as)((Class)localObject1).getConstructor((Class[])localObject2).newInstance(arrayOfObject);
            return paramString1;
            localObject1 = c.matcher((CharSequence)localObject2);
            if (!((Matcher)localObject1).matches()) {
              throw new RuntimeException("Cannot work with that constructor: " + (String)localObject2);
            }
            e = ((Matcher)localObject1).group(1);
            if (((Matcher)localObject1).group(2).length() == 0)
            {
              f = g;
              continue;
            }
            if (((Matcher)localObject1).group(2).length() > 0)
            {
              localObject1 = ((Matcher)localObject1).group(2).split(",");
              f = ((String[])localObject1);
              continue;
            }
            localObject1 = new String[0];
            continue;
          }
          if ("userType".equals(f[i]))
          {
            arrayOfObject[i] = paramArrayOfByte;
            localObject2[i] = byte[].class;
          }
          else if ("type".equals(f[i]))
          {
            arrayOfObject[i] = paramString1;
            localObject2[i] = String.class;
          }
        }
      }
      catch (ClassNotFoundException paramString1)
      {
        Object[] arrayOfObject;
        throw new RuntimeException(paramString1);
        if ("parent".equals(f[i]))
        {
          arrayOfObject[i] = paramString2;
          localObject2[i] = String.class;
        }
      }
      catch (InstantiationException paramString1)
      {
        throw new RuntimeException(paramString1);
        throw new InternalError("No such param: " + f[i]);
      }
      catch (IllegalAccessException paramString1)
      {
        throw new RuntimeException(paramString1);
        paramString1 = (as)((Class)localObject1).newInstance();
        return paramString1;
      }
      catch (InvocationTargetException paramString1)
      {
        throw new RuntimeException(paramString1);
      }
      catch (NoSuchMethodException paramString1)
      {
        throw new RuntimeException(paramString1);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */