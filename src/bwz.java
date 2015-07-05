import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

public final class bwz
{
  public char a = '\'';
  boolean b;
  private List c = new ArrayList();
  private Map d = new HashMap();
  private Map e = new HashMap();
  private bzq f = new bzp();
  private bzq g = new bzf();
  private boolean h;
  private boolean i;
  private boolean j;
  private String k = null;
  private Stack l = null;
  private Stack m = null;
  private Stack n = null;
  private Stack o = null;
  private bxf p = null;
  
  public bwz()
  {
    this('\'', true, true, true, true);
  }
  
  public bwz(char paramChar, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    c.add(f);
    c.add(g);
    c.add(new bzb());
    c.add(new bzr());
    c.add(new bzn());
    c.add(new bzg());
    c.add(new bzh());
    c.add(new bzo());
    c.add(new bzl());
    c.add(new bzk());
    c.add(new bzj());
    c.add(new bzi());
    c.add(new bzc());
    c.add(new bze());
    c.add(new bzd());
    c.add(new bzm());
    h = paramBoolean1;
    if (h)
    {
      a("E", new Double(2.718281828459045D).toString());
      a("PI", new Double(3.141592653589793D).toString());
    }
    i = paramBoolean2;
    j = paramBoolean3;
    if (i) {
      new bxw().a(this);
    }
    if (j) {
      new byv().a(this);
    }
    if ((paramChar == '\'') || (paramChar == '"'))
    {
      a = paramChar;
      b = paramBoolean4;
      return;
    }
    throw new IllegalArgumentException("Invalid quote character.");
  }
  
  private int a(String paramString, int paramInt, bzq parambzq1, Stack paramStack1, Stack paramStack2, boolean paramBoolean, bzq parambzq2)
  {
    int i1 = paramInt;
    bzq localbzq = parambzq1;
    if (paramBoolean)
    {
      i1 = paramInt;
      localbzq = parambzq1;
      if ((parambzq1 instanceof bzp))
      {
        parambzq1 = a(paramString, paramInt, paramStack2);
        localbzq = a;
        paramInt = b + localbzq.c();
        paramString = a(paramString, paramInt);
        if (paramString == null) {
          break label111;
        }
        localbzq = a;
        i1 = b;
      }
    }
    if ((localbzq instanceof bzp))
    {
      paramStack1.push(new bxb(localbzq, parambzq2));
      paramInt = localbzq.c() + i1;
      label111:
      return paramInt;
    }
    if ((localbzq instanceof bzf))
    {
      if (paramStack1.size() <= 0) {
        break label360;
      }
      paramString = (bxb)paramStack1.peek();
    }
    for (;;)
    {
      if ((paramString != null) && (!(a instanceof bzp)))
      {
        a(paramStack2, paramStack1);
        if (paramStack1.size() > 0) {
          paramString = (bxb)paramStack1.peek();
        } else {
          paramString = null;
        }
      }
      else
      {
        if (paramStack1.isEmpty()) {
          throw new bwx("Expression is invalid.");
        }
        paramString = (bxb)paramStack1.pop();
        if (!(a instanceof bzp)) {
          throw new bwx("Expression is invalid.");
        }
        if (b == null) {
          break;
        }
        paramStack2.push(new bxc(this, paramStack2.pop(), null, null, b));
        break;
        if (paramStack1.size() > 0)
        {
          paramString = (bxb)paramStack1.peek();
          while ((paramString != null) && (a.b() >= localbzq.b()))
          {
            a(paramStack2, paramStack1);
            if (paramStack1.size() > 0) {
              paramString = (bxb)paramStack1.peek();
            } else {
              paramString = null;
            }
          }
        }
        paramStack1.push(new bxb(localbzq, parambzq2));
        break;
        label360:
        paramString = null;
      }
    }
  }
  
  private bxd a(String paramString, int paramInt)
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
          bzq localbzq = (bzq)c.get(i2);
          if (localbzq.c() == 2)
          {
            if (i1 + 2 <= paramString.length()) {}
            for (int i3 = i1 + 2; paramString.substring(i1, i3).equals(localbzq.a()); i3 = paramString.length()) {
              return new bxd(localbzq, i1);
            }
          }
          if (paramString.charAt(i1) == localbzq.a().charAt(0)) {
            return new bxd(localbzq, i1);
          }
          i2 += 1;
        }
      }
      i1 += 1;
      break;
      return null;
    }
  }
  
  private bxd a(String paramString, int paramInt, Stack paramStack)
  {
    bxd localbxd = null;
    int i2 = 1;
    int i1 = paramInt;
    if (i2 > 0)
    {
      localbxd = a(paramString, i1 + 1);
      if (localbxd == null) {
        throw new bwx("Function is not closed.");
      }
      if ((a instanceof bzp)) {
        i1 = i2 + 1;
      }
      for (;;)
      {
        int i3 = b;
        i2 = i1;
        i1 = i3;
        break;
        i1 = i2;
        if ((a instanceof bzf)) {
          i1 = i2 - 1;
        }
      }
    }
    paramString = paramString.substring(paramInt + 1, i1);
    Object localObject = (bxa)paramStack.pop();
    bzq localbzq = b;
    localObject = a;
    try
    {
      e((String)localObject);
      localObject = (bxg)d.get(localObject);
      if (localObject == null) {
        throw new bwx("A function is not defined (index=" + paramInt + ").");
      }
    }
    catch (IllegalArgumentException paramString)
    {
      throw new bwx("Invalid function name of \"" + (String)localObject + "\".", paramString);
    }
    paramStack.push(new bxe((bxg)localObject, paramString, localbzq));
    return localbxd;
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
        paramStack1.push(new bxc(this, localObject2, localObject1, popa, null));
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
      throw new bwx("Expression is invalid.");
    }
    paramStack1 = paramStack2.pop();
    if ((paramStack1 instanceof bxc))
    {
      paramStack1 = ((bxc)paramStack1).a(true);
      return paramStack1;
    }
    if ((paramStack1 instanceof bxa))
    {
      paramStack2 = (bxa)paramStack1;
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
        throw new bwx("Expression is invalid.", paramStack1);
      }
      if (b == null) {
        break;
      }
      throw new bwx("Invalid operand for unary operator.");
      bxe localbxe;
      Object localObject;
      if ((paramStack1 instanceof bxe))
      {
        localbxe = (bxe)paramStack1;
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
          localObject = ((bxg)localObject).a(this, paramStack1);
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
          throw new bwx("Invalid operand for unary operator.");
        }
        catch (bxh paramStack1)
        {
          throw new bwx(paramStack1.getMessage(), paramStack1);
        }
        throw new bwx("Expression is invalid.");
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
        throw new bwx("Can not resolve variable with name equal to \"" + paramString + "\".");
      }
    }
    catch (bxh paramString)
    {
      throw new bwx(paramString.getMessage(), paramString);
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
      if (paramString.indexOf(((bzq)localIterator.next()).a()) >= 0) {
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
      bzq localbzq;
      int i4;
      int i3;
      bxd localbxd;
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
        localbzq = null;
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
        localbxd = a(paramString, i1);
        i3 = i4;
        if (localbxd == null) {
          break label555;
        }
        localbzq = a;
        i3 = b;
      }
      catch (Exception paramString)
      {
        k = "";
        throw new bwx(paramString.getMessage(), paramString);
      }
      Object localObject3 = o;
      if (i3 == -1)
      {
        localObject2 = paramString.substring(i1).trim();
        i4 = paramString.length();
        if (((String)localObject2).length() == 0) {
          throw new bwx("Expression is invalid.");
        }
      }
      else
      {
        localObject2 = paramString.substring(i1, i3).trim();
        i4 = i3;
        continue;
      }
      ((Stack)localObject3).push(new bxa((String)localObject2, (bzq)localObject1));
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
            if ((a instanceof bzf)) {
              break;
            }
            bool = false;
            i2 = 1;
            break label577;
            throw new bwx("Consecutive unary operators are not allowed (index=" + i1 + ").");
            i1 = a(paramString, i3, localbzq, n, o, bool, (bzq)localObject2);
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
  
  public final void a(bxg parambxg)
  {
    e(parambxg.a());
    if ((bxg)d.get(parambxg.a()) == null)
    {
      d.put(parambxg.a(), parambxg);
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
      throw new bwx("Invalid use of quotes.");
    }
    return false;
  }
  
  public final String b(String paramString)
  {
    int i1 = paramString.indexOf(bww.a);
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
          int i2 = paramString.indexOf(bww.b, i1 + 1);
          if (i2 > i1) {
            str1 = paramString.substring(i1 + bww.a.length(), i2);
          }
        }
        else
        {
          try
          {
            e(str1);
            String str2 = d(str1);
            str1 = bwy.a(paramString, bww.a + str1 + bww.b, str2);
            i1 = str1.indexOf(bww.a);
            paramString = str1;
          }
          catch (IllegalArgumentException paramString)
          {
            throw new bwx("Invalid variable name of \"" + str1 + "\".", paramString);
          }
        }
      }
      i1 = paramString.indexOf(bww.a);
      if (i1 >= 0) {
        throw new bwx("A variable has not been closed (index=" + i1 + ").");
      }
      return paramString;
    }
  }
  
  protected final String c(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString.length() > 0)
    {
      bwz localbwz = new bwz(a, h, i, j, b);
      d = d;
      e = e;
      p = p;
      paramString = new bwv(paramString);
      ArrayList localArrayList = new ArrayList();
      while (paramString.a())
      {
        String str = paramString.b().trim();
        try
        {
          str = localbwz.a(str, true);
          localArrayList.add(str);
        }
        catch (Exception paramString)
        {
          throw new bwx(paramString.getMessage(), paramString);
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
 * Qualified Name:     bwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */