public final class byd
{
  private Object a = null;
  private Object b = null;
  private car c = null;
  private car d = null;
  private bya e = null;
  
  public byd(bya parambya, Object paramObject1, Object paramObject2, car paramcar1, car paramcar2)
  {
    e = parambya;
    a = paramObject1;
    b = paramObject2;
    c = paramcar1;
    d = paramcar2;
  }
  
  public final String a(boolean paramBoolean)
  {
    Object localObject9 = null;
    Object localObject5;
    if ((a instanceof byd)) {
      localObject5 = ((byd)a).a(paramBoolean);
    }
    for (;;)
    {
      try
      {
        localObject4 = new Double((String)localObject5);
        localObject5 = null;
      }
      catch (NumberFormatException localNumberFormatException1)
      {
        String str1;
        label77:
        localObject4 = null;
        continue;
      }
      if (!(b instanceof byd)) {
        break label611;
      }
      str1 = ((byd)b).a(paramBoolean);
      try
      {
        localObject6 = new Double(str1);
        str1 = null;
      }
      catch (NumberFormatException localNumberFormatException6)
      {
        Object localObject6;
        double d2;
        double d1;
        String str2;
        localObject7 = localObject9;
        continue;
      }
      if ((localObject4 == null) || (localObject6 == null)) {
        break label1056;
      }
      d2 = c.a(((Double)localObject4).doubleValue(), ((Double)localObject6).doubleValue());
      d1 = d2;
      if (d != null) {
        d1 = d.a(d2);
      }
      return new Double(d1).toString();
      if (!(a instanceof byb)) {
        break label290;
      }
      localObject5 = (byb)a;
      str2 = a;
      str2 = e.b(str2);
      if (!e.a(str2)) {
        try
        {
          localObject4 = new Double(str2);
          if (b == null) {
            break label1190;
          }
          localObject4 = new Double(b.a(((Double)localObject4).doubleValue()));
          localObject5 = null;
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          throw new bxy("Expression is invalid.", localNumberFormatException2);
        }
      }
    }
    if (b != null) {
      throw new bxy("Invalid operand for unary operator.");
    }
    Object localObject4 = null;
    for (;;)
    {
      localObject5 = localNumberFormatException2;
      break;
      label290:
      Object localObject1;
      if ((a instanceof byf))
      {
        localObject5 = (byf)a;
        localObject6 = a;
        localObject1 = b;
        localObject4 = e.b((String)localObject1);
        localObject1 = localObject4;
        if (e.b) {
          localObject1 = e.c((String)localObject4);
        }
      }
      label575:
      label611:
      label1056:
      label1159:
      label1162:
      label1169:
      label1187:
      for (;;)
      {
        try
        {
          localObject6 = ((byh)localObject6).a(e, (String)localObject1);
          localObject4 = a;
          if (b == 0)
          {
            localObject1 = new Double((String)localObject4);
            if (c == null) {
              break label1187;
            }
            localObject1 = new Double(c.a(((Double)localObject1).doubleValue()));
            localObject1 = ((Double)localObject1).toString();
            if (e.a((String)localObject1)) {
              break label575;
            }
          }
        }
        catch (byi localbyi1)
        {
          throw new bxy(localbyi1.getMessage(), localbyi1);
        }
        try
        {
          localObject4 = new Double((String)localObject1);
          localObject5 = null;
        }
        catch (NumberFormatException localNumberFormatException3)
        {
          throw new bxy("Expression is invalid.", localNumberFormatException3);
        }
        localObject1 = localObject4;
        if (b == 1)
        {
          localObject1 = localObject4;
          if (paramBoolean) {
            localObject1 = e.a + (String)localObject4 + e.a;
          }
          if (c != null)
          {
            throw new bxy("Invalid operand for unary operator.");
            localObject4 = null;
            localObject5 = localNumberFormatException3;
            break;
            if (a != null)
            {
              throw new bxy("Expression is invalid.");
              Object localObject8;
              if ((b instanceof byb))
              {
                localObject8 = (byb)b;
                String str3 = b).a;
                str3 = e.b(str3);
                if (!e.a(str3)) {
                  try
                  {
                    localObject7 = new Double(str3);
                    if (b == null) {
                      break label1169;
                    }
                    localObject7 = new Double(b.a(((Double)localObject7).doubleValue()));
                    str3 = null;
                  }
                  catch (NumberFormatException localNumberFormatException4)
                  {
                    throw new bxy("Expression is invalid.", localNumberFormatException4);
                  }
                }
                if (b == null) {
                  break label1162;
                }
                throw new bxy("Invalid operand for unary operator.");
              }
              Object localObject10;
              Object localObject2;
              if ((b instanceof byf))
              {
                localObject8 = (byf)b;
                localObject10 = a;
                localObject2 = b;
                localObject7 = e.b((String)localObject2);
                localObject2 = localObject7;
                if (e.b) {
                  localObject2 = e.c((String)localObject7);
                }
              }
              for (;;)
              {
                try
                {
                  localObject10 = ((byh)localObject10).a(e, (String)localObject2);
                  localObject7 = a;
                  if (b == 0)
                  {
                    localObject2 = new Double((String)localObject7);
                    if (c == null) {
                      break label1159;
                    }
                    localObject2 = new Double(c.a(((Double)localObject2).doubleValue()));
                    localObject8 = ((Double)localObject2).toString();
                    localObject2 = localObject8;
                    localObject7 = localObject9;
                    if (e.a((String)localObject8)) {
                      break;
                    }
                  }
                }
                catch (byi localbyi2)
                {
                  throw new bxy(localbyi2.getMessage(), localbyi2);
                }
                try
                {
                  localObject7 = new Double((String)localObject8);
                  localObject2 = null;
                }
                catch (NumberFormatException localNumberFormatException5)
                {
                  throw new bxy("Expression is invalid.", localNumberFormatException5);
                }
                localObject2 = localObject7;
                if (b == 1)
                {
                  localObject2 = localObject7;
                  if (paramBoolean) {
                    localObject2 = e.a + (String)localObject7 + e.a;
                  }
                  if (c != null)
                  {
                    throw new bxy("Invalid operand for unary operator.");
                    if (b != null)
                    {
                      throw new bxy("Expression is invalid.");
                      if ((localObject5 != null) && (localNumberFormatException5 != null)) {
                        return c.a((String)localObject5, localNumberFormatException5);
                      }
                      if ((localObject4 != null) && (localObject7 == null))
                      {
                        if (d != null) {
                          return new Double(d.a(((Double)localObject4).doubleValue())).toString();
                        }
                        throw new bxy("Expression is invalid.");
                      }
                      throw new bxy("Expression is invalid.");
                    }
                    localObject3 = null;
                    localObject7 = localObject9;
                    break;
                  }
                }
                localObject8 = localObject3;
              }
              Object localObject7 = localObject9;
              break label77;
              localObject3 = null;
              break label77;
            }
            localObject4 = null;
            localObject5 = null;
            break;
          }
        }
      }
      label1190:
      Object localObject3 = null;
    }
  }
}

/* Location:
 * Qualified Name:     byd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */