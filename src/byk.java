import java.util.ArrayList;

public final class byk
{
  public static String a(String paramString, char paramChar)
  {
    paramString = paramString.trim();
    if (paramString.charAt(0) == paramChar)
    {
      paramString = paramString.substring(1, paramString.length());
      if (paramString.charAt(paramString.length() - 1) == paramChar) {
        return paramString.substring(0, paramString.length() - 1);
      }
    }
    else
    {
      throw new byi("Value does not start with a quote.");
    }
    throw new byi("Value does not end with a quote.");
  }
  
  public static ArrayList a(String paramString)
  {
    localArrayList = new ArrayList();
    try
    {
      paramString = new bxw(paramString);
      while (paramString.a()) {
        localArrayList.add(new Double(paramString.b().trim()));
      }
      return localArrayList;
    }
    catch (Exception paramString)
    {
      throw new byi("Invalid values in string.", paramString);
    }
  }
  
  public static ArrayList b(String paramString)
  {
    localArrayList = new ArrayList();
    try
    {
      paramString = new bxw(paramString);
      while (paramString.a()) {
        localArrayList.add(paramString.b());
      }
      return localArrayList;
    }
    catch (Exception paramString)
    {
      throw new byi("Invalid values in string.", paramString);
    }
  }
  
  public static ArrayList c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        paramString = new bxw(paramString);
        i = 0;
        if (!paramString.a()) {
          break label101;
        }
        if (i == 0) {
          localArrayList.add(paramString.b());
        } else if (i == 1) {
          localArrayList.add(new Integer(new Double(paramString.b().trim()).intValue()));
        }
      }
      catch (Exception paramString)
      {
        throw new byi("Invalid values in string.", paramString);
      }
      throw new byi("Invalid values in string.");
      label101:
      return localArrayList;
      i += 1;
    }
  }
  
  public static ArrayList d(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        paramString = new bxw(paramString);
        i = 0;
        if (!paramString.a()) {
          break label106;
        }
        if ((i == 0) || (i == 1)) {
          localArrayList.add(paramString.b());
        } else if (i == 2) {
          localArrayList.add(new Integer(new Double(paramString.b().trim()).intValue()));
        }
      }
      catch (Exception paramString)
      {
        throw new byi("Invalid values in string.", paramString);
      }
      throw new byi("Invalid values in string.");
      label106:
      return localArrayList;
      i += 1;
    }
  }
  
  public static ArrayList e(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        paramString = new bxw(paramString);
        i = 0;
        if (!paramString.a()) {
          break label99;
        }
        if (i != 0) {
          break label108;
        }
        localArrayList.add(paramString.b().trim());
      }
      catch (Exception paramString)
      {
        label45:
        throw new byi("Invalid values in string.", paramString);
      }
      localArrayList.add(new Integer(new Double(paramString.b().trim()).intValue()));
      label99:
      label108:
      do
      {
        throw new byi("Invalid values in string.");
        return localArrayList;
        i += 1;
        break;
        if (i == 1) {
          break label45;
        }
      } while (i != 2);
    }
  }
}

/* Location:
 * Qualified Name:     byk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */