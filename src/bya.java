import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public final class bya
{
  public char a = '\'';
  boolean b;
  private List c = new ArrayList();
  private Map d = new HashMap();
  private Map e = new HashMap();
  private car f = new caq();
  private car g = new cag();
  private boolean h;
  private boolean i;
  private boolean j;
  private String k = null;
  private Stack l = null;
  private Stack m = null;
  private Stack n = null;
  private Stack o = null;
  private byg p = null;
  
  public bya()
  {
    this('\'', true, true, true, true);
  }
  
  public bya(char paramChar, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    c.add(f);
    c.add(g);
    c.add(new cac());
    c.add(new cas());
    c.add(new cao());
    c.add(new cah());
    c.add(new cai());
    c.add(new cap());
    c.add(new cam());
    c.add(new cal());
    c.add(new cak());
    c.add(new caj());
    c.add(new cad());
    c.add(new caf());
    c.add(new cae());
    c.add(new can());
    h = paramBoolean1;
    if (h)
    {
      a("E", new Double(2.718281828459045D).toString());
      a("PI", new Double(3.141592653589793D).toString());
    }
    i = paramBoolean2;
    j = paramBoolean3;
    if (i) {
      new byx().a(this);
    }
    if (j) {
      new bzw().a(this);
    }
    if ((paramChar == '\'') || (paramChar == '"'))
    {
      a = paramChar;
      b = paramBoolean4;
      return;
    }
    throw new IllegalArgumentException("Invalid quote character.");
  }
  
  private int a(String paramString, int paramInt, car paramcar1, Stack paramStack1, Stack paramStack2, boolean paramBoolean, car paramcar2)
  {
    int i1 = paramInt;
    car localcar = paramcar1;
    if (paramBoolean)
    {
      i1 = paramInt;
      localcar = paramcar1;
      if ((paramcar1 instanceof caq))
      {
        paramcar1 = a(paramString, paramInt, paramStack2);
        localcar = a;
        paramInt = b + localcar.c();
        paramString = a(paramString, paramInt);
        if (paramString == null) {
          break label111;
        }
        localcar = a;
        i1 = b;
      }
    }
    if ((localcar instanceof caq))
    {
      paramStack1.push(new byc(localcar, paramcar2));
      paramInt = localcar.c() + i1;
      label111:
      return paramInt;
    }
    if ((localcar instanceof cag))
    {
      if (paramStack1.size() <= 0) {
        break label360;
      }
      paramString = (byc)paramStack1.peek();
    }
    for (;;)
    {
      if ((paramString != null) && (!(a instanceof caq)))
      {
        a(paramStack2, paramStack1);
        if (paramStack1.size() > 0) {
          paramString = (byc)paramStack1.peek();
        } else {
          paramString = null;
        }
      }
      else
      {
        if (paramStack1.isEmpty()) {
          throw new bxy("Expression is invalid.");
        }
        paramString = (byc)paramStack1.pop();
        if (!(a instanceof caq)) {
          throw new bxy("Expression is invalid.");
        }
        if (b == null) {
          break;
        }
        paramStack2.push(new byd(this, paramStack2.pop(), null, null, b));
        break;
        if (paramStack1.size() > 0)
        {
          paramString = (byc)paramStack1.peek();
          while ((paramString != null) && (a.b() >= localcar.b()))
          {
            a(paramStack2, paramStack1);
            if (paramStack1.size() > 0) {
              paramString = (byc)paramStack1.peek();
            } else {
              paramString = null;
            }
          }
        }
        paramStack1.push(new byc(localcar, paramcar2));
        break;
        label360:
        paramString = null;
      }
    }
  }
  
  private bye a(String paramString, int paramInt)
  {
    int i4 = paramString.length();
    int i2 = 0;
    int i1 = paramInt;
    paramInt = i2;
    if (i1 < i4)
    {
      if (paramString.charAt(i1) != a) {
        break label194;
      }
      paramInt += 1;
    }
    label194:
    for (;;)
    {
      if (paramInt % 2 != 1)
      {
        int i5 = c.size();
        i2 = 0;
        while (i2 < i5)
        {
          car localcar = (car)c.get(i2);
          if (localcar.c() == 2)
          {
            if (i1 + 2 <= paramString.length()) {}
            for (int i3 = i1 + 2; paramString.substring(i1, i3).equals(localcar.a()); i3 = paramString.length()) {
              return new bye(localcar, i1);
            }
          }
          if (paramString.charAt(i1) == localcar.a().charAt(0)) {
            return new bye(localcar, i1);
          }
          i2 += 1;
        }
      }
      i1 += 1;
      break;
      return null;
    }
  }
  
  private bye a(String paramString, int paramInt, Stack paramStack)
  {
    bye localbye = null;
    int i2 = 1;
    int i1 = paramInt;
    if (i2 > 0)
    {
      localbye = a(paramString, i1 + 1);
      if (localbye == null) {
        throw new bxy("Function is not closed.");
      }
      if ((a instanceof caq)) {
        i1 = i2 + 1;
      }
      for (;;)
      {
        int i3 = b;
        i2 = i1;
        i1 = i3;
        break;
        i1 = i2;
        if ((a instanceof cag)) {
          i1 = i2 - 1;
        }
      }
    }
    paramString = paramString.substring(paramInt + 1, i1);
    Object localObject = (byb)paramStack.pop();
    car localcar = b;
    localObject = a;
    try
    {
      e((String)localObject);
      localObject = (byh)d.get(localObject);
      if (localObject == null) {
        throw new bxy("A function is not defined (index=" + paramInt + ").");
      }
    }
    catch (IllegalArgumentException paramString)
    {
      throw new bxy("Invalid function name of \"" + (String)localObject + "\".", paramString);
    }
    paramStack.push(new byf((byh)localObject, paramString, localcar));
    return localbye;
  }
  
  private void a(String paramString1, String paramString2)
  {
    e(paramString1);
    e.put(paramString1, paramString2);
  }
  
  private void a(Stack paramStack1, Stack paramStack2)
  {
    if (paramStack1.size() > 0) {}
    for (Object localObject1 = paramStack1.pop();; localObject1 = null)
    {
      if (paramStack1.size() > 0) {}
      for (Object localObject2 = paramStack1.pop();; localObject2 = null)
      {
        paramStack1.push(new byd(this, localObject2, localObject1, popa, null));
        return;
      }
    }
  }
  
  private String b(Stack paramStack1, Stack paramStack2)
  {
    while (paramStack1.size() > 0) {
      a(paramStack2, paramStack1);
    }
    if (paramStack2.size() != 1) {
      throw new bxy("Expression is invalid.");
    }
    paramStack1 = paramStack2.pop();
    if ((paramStack1 instanceof byd))
    {
      paramStack1 = ((byd)paramStack1).a(true);
      return paramStack1;
    }
    if ((paramStack1 instanceof byb))
    {
      paramStack2 = (byb)paramStack1;
      paramStack1 = b(a);
      if (a(paramStack1)) {}
    }
    label354:
    label356:
    label359:
    for (;;)
    {
      try
      {
        paramStack1 = new Double(paramStack1);
        if (b == null) {
          break label359;
        }
        paramStack1 = new Double(b.a(paramStack1.doubleValue()));
        return paramStack1.toString();
      }
      catch (Exception paramStack1)
      {
        throw new bxy("Expression is invalid.", paramStack1);
      }
      if (b == null) {
        break;
      }
      throw new bxy("Invalid operand for unary operator.");
      byf localbyf;
      Object localObject;
      if ((paramStack1 instanceof byf))
      {
        localbyf = (byf)paramStack1;
        localObject = a;
        paramStack2 = b;
        paramStack1 = paramStack2;
        if (b) {
          paramStack1 = c(paramStack2);
        }
        paramStack1 = b(paramStack1);
      }
      for (;;)
      {
        try
        {
          localObject = ((byh)localObject).a(this, paramStack1);
          paramStack2 = a;
          if (b == 0)
          {
            paramStack1 = new Double(paramStack2);
            if (c == null) {
              break label356;
            }
            paramStack1 = new Double(c.a(paramStack1.doubleValue()));
            return paramStack1.toString();
          }
          paramStack1 = paramStack2;
          if (b != 1) {
            break label354;
          }
          paramStack1 = a + paramStack2 + a;
          if (c == null) {
            break label354;
          }
          throw new bxy("Invalid operand for unary operator.");
        }
        catch (byi paramStack1)
        {
          throw new bxy(paramStack1.getMessage(), paramStack1);
        }
        throw new bxy("Expression is invalid.");
        return paramStack1;
      }
    }
  }
  
  private String d(String paramString)
  {
    String str1 = null;
    if (p != null) {}
    String str2;
    try
    {
      str1 = p.a();
      str2 = str1;
      if (str1 == null) {
        str2 = (String)e.get(paramString);
      }
      if (str2 == null) {
        throw new bxy("Can not resolve variable with name equal to \"" + paramString + "\".");
      }
    }
    catch (byi paramString)
    {
      throw new bxy(paramString.getMessage(), paramString);
    }
    return str2;
  }
  
  private void e(String paramString)
  {
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("Variable is empty.");
    }
    int i1 = paramString.charAt(0);
    if ((i1 >= 48) && (i1 <= 57)) {
      throw new IllegalArgumentException("A variable or function name can not start with a number.");
    }
    if (paramString.indexOf('\'') >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a quote character.");
    }
    if (paramString.indexOf('"') >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a quote character.");
    }
    if (paramString.indexOf('{') >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain an open brace character.");
    }
    if (paramString.indexOf('}') >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a closed brace character.");
    }
    if (paramString.indexOf('#') >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a pound sign character.");
    }
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      if (paramString.indexOf(((car)localIterator.next()).a()) >= 0) {
        throw new IllegalArgumentException("A variable or function name can not contain an operator symbol.");
      }
    }
    if (paramString.indexOf("!") >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a special character.");
    }
    if (paramString.indexOf("~") >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a special character.");
    }
    if (paramString.indexOf("^") >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a special character.");
    }
    if (paramString.indexOf(",") >= 0) {
      throw new IllegalArgumentException("A variable or function name can not contain a special character.");
    }
  }
  
  public final String a(String paramString, boolean paramBoolean)
  {
    int i1 = 1;
    if (!paramString.equals(k))
    {
      k = paramString;
      if (i1 == 0) {
        break label496;
      }
    }
    label468:
    label496:
    label555:
    label577:
    for (;;)
    {
      Object localObject1;
      car localcar;
      int i4;
      int i3;
      bye localbye;
      try
      {
        o = new Stack();
        n = new Stack();
        bool = false;
        i2 = 0;
        localObject1 = null;
        int i6 = paramString.length();
        i1 = 0;
        if (i1 >= i6) {
          break label468;
        }
        localcar = null;
        i4 = -1;
        i3 = paramString.charAt(i1);
        if ((i3 == 32) || (i3 == 9) || (i3 == 10) || (i3 == 13) || (i3 == 12))
        {
          i3 = 1;
          if (i3 == 0) {
            continue;
          }
          i1 += 1;
          continue;
          n = ((Stack)l.clone());
          o = ((Stack)m.clone());
          i1 = 0;
          break;
        }
        i3 = 0;
        continue;
        localbye = a(paramString, i1);
        i3 = i4;
        if (localbye == null) {
          break label555;
        }
        localcar = a;
        i3 = b;
      }
      catch (Exception paramString)
      {
        k = "";
        throw new bxy(paramString.getMessage(), paramString);
      }
      Object localObject3 = o;
      if (i3 == -1)
      {
        localObject2 = paramString.substring(i1).trim();
        i4 = paramString.length();
        if (((String)localObject2).length() == 0) {
          throw new bxy("Expression is invalid.");
        }
      }
      else
      {
        localObject2 = paramString.substring(i1, i3).trim();
        i4 = i3;
        continue;
      }
      ((Stack)localObject3).push(new byb((String)localObject2, (car)localObject1));
      boolean bool = true;
      int i2 = 0;
      Object localObject2 = null;
      do
      {
        int i5 = i4;
        localObject3 = localObject2;
        if (i3 == i4)
        {
          if ((a.d()) && ((i2 != 0) || (i4 == 0)))
          {
            i1 = a.a().length() + i3;
            if (localObject2 != null) {}
          }
          for (localObject1 = a;; localObject1 = null)
          {
            i5 = i1;
            localObject3 = localObject1;
            if ((a instanceof cag)) {
              break;
            }
            bool = false;
            i2 = 1;
            break label577;
            throw new bxy("Consecutive unary operators are not allowed (index=" + i1 + ").");
            i1 = a(paramString, i3, localcar, n, o, bool, (car)localObject2);
          }
          l = ((Stack)n.clone());
          m = ((Stack)o.clone());
          localObject1 = b(n, o);
          paramString = (String)localObject1;
          if (a((String)localObject1))
          {
            paramString = (String)localObject1;
            if (!paramBoolean) {
              paramString = ((String)localObject1).substring(1, ((String)localObject1).length() - 1);
            }
          }
          return paramString;
        }
        i1 = i5;
        localObject1 = localObject3;
        break label577;
        if (i3 > i1) {
          break;
        }
        i4 = i1;
        localObject2 = localObject1;
      } while (i3 != -1);
    }
  }
  
  public final void a(byh parambyh)
  {
    e(parambyh.a());
    if ((byh)d.get(parambyh.a()) == null)
    {
      d.put(parambyh.a(), parambyh);
      return;
    }
    throw new IllegalArgumentException("A function with the same name already exists.");
  }
  
  protected final boolean a(String paramString)
  {
    if ((paramString.length() > 1) && (paramString.charAt(0) == a) && (paramString.charAt(paramString.length() - 1) == a)) {
      return true;
    }
    if (paramString.indexOf(a) >= 0) {
      throw new bxy("Invalid use of quotes.");
    }
    return false;
  }
  
  public final String b(String paramString)
  {
    int i1 = paramString.indexOf(bxx.a);
    if (i1 < 0) {
      return paramString;
    }
    for (;;)
    {
      if (i1 >= 0)
      {
        String str1 = paramString;
        if (i1 >= 0)
        {
          int i2 = paramString.indexOf(bxx.b, i1 + 1);
          if (i2 > i1) {
            str1 = paramString.substring(i1 + bxx.a.length(), i2);
          }
        }
        else
        {
          try
          {
            e(str1);
            String str2 = d(str1);
            str1 = bxz.a(paramString, bxx.a + str1 + bxx.b, str2);
            i1 = str1.indexOf(bxx.a);
            paramString = str1;
          }
          catch (IllegalArgumentException paramString)
          {
            throw new bxy("Invalid variable name of \"" + str1 + "\".", paramString);
          }
        }
      }
      i1 = paramString.indexOf(bxx.a);
      if (i1 >= 0) {
        throw new bxy("A variable has not been closed (index=" + i1 + ").");
      }
      return paramString;
    }
  }
  
  protected final String c(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString.length() > 0)
    {
      bya localbya = new bya(a, h, i, j, b);
      d = d;
      e = e;
      p = p;
      paramString = new bxw(paramString);
      ArrayList localArrayList = new ArrayList();
      while (paramString.a())
      {
        String str = paramString.b().trim();
        try
        {
          str = localbya.a(str, true);
          localArrayList.add(str);
        }
        catch (Exception paramString)
        {
          throw new bxy(paramString.getMessage(), paramString);
        }
      }
      paramString = localArrayList.iterator();
      while (paramString.hasNext())
      {
        if (localStringBuffer.length() > 0) {
          localStringBuffer.append(',');
        }
        localStringBuffer.append((String)paramString.next());
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     bya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */