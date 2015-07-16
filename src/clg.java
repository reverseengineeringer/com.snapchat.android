import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;

public final class clg
{
  public List<Object> a;
  private int b = 1;
  private int c = 2;
  private int d = 10;
  private boolean e = false;
  private clg.e f = null;
  private boolean g;
  private boolean h;
  private clg.c[] i;
  
  public clg()
  {
    if (a == null) {
      a = new ArrayList();
    }
    for (;;)
    {
      g = false;
      h = false;
      i = new clg.c[10];
      return;
      a.clear();
    }
  }
  
  private static clf a(List<Object> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (paramBoolean2)) {
      throw new IllegalStateException("Builder has created neither a printer nor a parser");
    }
    int j = paramList.size();
    if ((j >= 2) && ((paramList.get(0) instanceof clg.f)))
    {
      clg.f localf = (clg.f)paramList.get(0);
      if ((b == null) && (a == null))
      {
        Object localObject = a(paramList.subList(2, j), paramBoolean1, paramBoolean2);
        paramList = a;
        localObject = b;
        a = paramList;
        b = ((clh)localObject);
        return new clf(localf, localf);
      }
    }
    paramList = a(paramList);
    if (paramBoolean1) {
      return new clf(null, (clh)paramList[1]);
    }
    if (paramBoolean2) {
      return new clf((cli)paramList[0], null);
    }
    return new clf((cli)paramList[0], (clh)paramList[1]);
  }
  
  public static Object[] a(List<Object> paramList)
  {
    switch (paramList.size())
    {
    default: 
      paramList = new clg.a(paramList);
      return new Object[] { paramList, paramList };
    case 0: 
      return new Object[] { clg.d.a, clg.d.a };
    }
    return new Object[] { paramList.get(0), paramList.get(1) };
  }
  
  public final clf a()
  {
    clf localclf = a(a, g, h);
    i = ((clg.c[])i.clone());
    return localclf;
  }
  
  public final clg a(cli paramcli, clh paramclh)
  {
    a.add(paramcli);
    a.add(paramclh);
    g |= false;
    h |= false;
    return this;
  }
  
  public final clg a(String paramString)
  {
    Object localObject1 = null;
    clg.g localg = new clg.g(paramString);
    if (a.size() > 0) {
      paramString = a.get(a.size() - 2);
    }
    Object localObject2;
    for (localObject1 = a.get(a.size() - 1); (paramString == null) || (localObject1 == null) || (paramString != localObject1) || (!(paramString instanceof clg.c)); localObject1 = localObject2)
    {
      throw new IllegalStateException("No field to apply suffix to");
      localObject2 = null;
      paramString = (String)localObject1;
    }
    b();
    paramString = new clg.c((clg.c)paramString, localg);
    a.set(a.size() - 2, paramString);
    a.set(a.size() - 1, paramString);
    i[a] = paramString;
    return this;
  }
  
  public final void a(int paramInt)
  {
    clg.c localc = new clg.c(b, c, d, e, paramInt, i, f);
    a(localc, localc);
    i[paramInt] = localc;
    f = null;
  }
  
  public final void b()
  {
    if (f != null) {
      throw new IllegalStateException("Prefix not followed by field");
    }
    f = null;
  }
  
  static final class a
    implements clh, cli
  {
    private final cli[] a;
    private final clh[] b;
    
    a(List<Object> paramList)
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      a(paramList, localArrayList1, localArrayList2);
      if (localArrayList1.size() <= 0) {}
      for (a = null; localArrayList2.size() <= 0; a = ((cli[])localArrayList1.toArray(new cli[localArrayList1.size()])))
      {
        b = null;
        return;
      }
      b = ((clh[])localArrayList2.toArray(new clh[localArrayList2.size()]));
    }
    
    private static void a(List<Object> paramList1, List<Object> paramList2, List<Object> paramList3)
    {
      int j = paramList1.size();
      int i = 0;
      if (i < j)
      {
        Object localObject = paramList1.get(i);
        if ((localObject instanceof cli))
        {
          if ((localObject instanceof a)) {
            a(paramList2, a);
          }
        }
        else
        {
          label53:
          localObject = paramList1.get(i + 1);
          if ((localObject instanceof clh))
          {
            if (!(localObject instanceof a)) {
              break label111;
            }
            a(paramList3, b);
          }
        }
        for (;;)
        {
          i += 2;
          break;
          paramList2.add(localObject);
          break label53;
          label111:
          paramList3.add(localObject);
        }
      }
    }
    
    private static void a(List<Object> paramList, Object[] paramArrayOfObject)
    {
      if (paramArrayOfObject != null)
      {
        int i = 0;
        while (i < paramArrayOfObject.length)
        {
          paramList.add(paramArrayOfObject[i]);
          i += 1;
        }
      }
    }
  }
  
  static final class b
    implements clg.e
  {
    private final clg.e a;
    private final clg.e b;
    
    b(clg.e parame1, clg.e parame2)
    {
      a = parame1;
      b = parame2;
    }
  }
  
  static final class c
    implements clh, cli
  {
    final int a;
    private final int b;
    private final int c;
    private final int d;
    private final boolean e;
    private final c[] f;
    private final clg.e g;
    private final clg.e h;
    
    c(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, c[] paramArrayOfc, clg.e parame)
    {
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramBoolean;
      a = paramInt4;
      f = paramArrayOfc;
      g = parame;
      h = null;
    }
    
    c(c paramc, clg.e parame)
    {
      b = b;
      c = c;
      d = d;
      e = e;
      a = a;
      f = f;
      g = g;
      Object localObject = parame;
      if (h != null) {
        localObject = new clg.b(h, parame);
      }
      h = ((clg.e)localObject);
    }
  }
  
  public static final class d
    implements clh, cli
  {
    public static final d a = new d("");
    private final String b;
    
    public d(String paramString)
    {
      b = paramString;
    }
  }
  
  static abstract interface e {}
  
  public static final class f
    implements clh, cli
  {
    volatile cli a;
    volatile clh b;
    private final String c;
    private final String d;
    private final String[] e;
    private final boolean f;
    private final boolean g;
    private final cli h;
    private final clh i;
    
    public f(String paramString1, String paramString2, cli paramcli, clh paramclh)
    {
      c = paramString1;
      d = paramString2;
      if (paramString1.equals(paramString2)) {}
      for (e = new String[] { paramString1 };; e = ((String[])paramString1.toArray(new String[paramString1.size()])))
      {
        h = paramcli;
        i = paramclh;
        f = false;
        g = true;
        return;
        TreeSet localTreeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        localTreeSet.add(paramString1);
        localTreeSet.add(paramString2);
        paramString1 = new ArrayList(localTreeSet);
        Collections.reverse(paramString1);
      }
    }
  }
  
  static final class g
    implements clg.e
  {
    private final String a;
    
    g(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     clg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */