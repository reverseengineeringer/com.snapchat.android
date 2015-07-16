import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

public final class bmj
{
  final bnk a = new bnk()
  {
    public final bnd a(bnb paramAnonymousbnb)
    {
      return bmj.this.a(paramAnonymousbnb);
    }
    
    public final bns a(bnd paramAnonymousbnd)
    {
      return bmj.this.a(paramAnonymousbnd);
    }
    
    public final void a()
    {
      b();
    }
    
    public final void a(bnd paramAnonymousbnd1, bnd paramAnonymousbnd2)
    {
      bmj.c localc = new bmj.c(paramAnonymousbnd2);
      paramAnonymousbnd2 = bmj.b.a((bmj.b)g);
      paramAnonymousbnd1 = null;
      try
      {
        paramAnonymousbnd2 = bnh.a(d, a, b);
        if (paramAnonymousbnd2 != null)
        {
          paramAnonymousbnd1 = paramAnonymousbnd2;
          localc.a(paramAnonymousbnd2);
          paramAnonymousbnd1 = paramAnonymousbnd2;
          paramAnonymousbnd2.a();
        }
        return;
      }
      catch (IOException paramAnonymousbnd2)
      {
        bmj.a(paramAnonymousbnd1);
      }
    }
    
    public final void a(bnt paramAnonymousbnt)
    {
      bmj.this.a(paramAnonymousbnt);
    }
    
    public final void b(bnb paramAnonymousbnb)
    {
      bmj.this.b(paramAnonymousbnb);
    }
  };
  int b;
  int c;
  private final bnh d;
  private int e;
  private int f;
  private int g;
  
  public bmj(File paramFile, long paramLong)
  {
    d = bnh.a(boi.a, paramFile, paramLong);
  }
  
  static int a(cax paramcax)
  {
    long l;
    try
    {
      l = paramcax.k();
      paramcax = paramcax.n();
      if ((l < 0L) || (l > 2147483647L) || (!paramcax.isEmpty())) {
        throw new IOException("expected an int but was \"" + l + paramcax + "\"");
      }
    }
    catch (NumberFormatException paramcax)
    {
      throw new IOException(paramcax.getMessage());
    }
    return (int)l;
  }
  
  static void a(bnh.a parama)
  {
    if (parama != null) {}
    try
    {
      parama.b();
      return;
    }
    catch (IOException parama) {}
  }
  
  final bnd a(bnb parambnb)
  {
    int j = 0;
    Object localObject1 = bnq.b(a);
    try
    {
      localObject1 = d.a((String)localObject1);
      if (localObject1 == null) {
        return null;
      }
      try
      {
        bmj.c localc = new bmj.c(c[0]);
        String str1 = g.a("Content-Type");
        String str2 = g.a("Content-Length");
        Object localObject2 = new bnb.a().a(a).a(c, null).a(b).a();
        bnd.a locala = new bnd.a();
        a = ((bnb)localObject2);
        b = d;
        c = e;
        d = f;
        localObject2 = locala.a(g);
        g = new bmj.b((bnh.c)localObject1, str1, str2);
        e = h;
        localObject1 = ((bnd.a)localObject2).a();
        int i = j;
        if (a.equals(a))
        {
          i = j;
          if (c.equals(b))
          {
            i = j;
            if (boa.a((bnd)localObject1, b, parambnb)) {
              i = 1;
            }
          }
        }
        if (i == 0)
        {
          bnq.a(g);
          return null;
        }
      }
      catch (IOException parambnb)
      {
        bnq.a((Closeable)localObject1);
        return null;
      }
      return (bnd)localObject1;
    }
    catch (IOException parambnb) {}
    return null;
  }
  
  /* Error */
  final bns a(bnd parambnd)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 209	bnd:a	Lbnb;
    //   4: getfield 196	bnb:b	Ljava/lang/String;
    //   7: astore_2
    //   8: aload_1
    //   9: getfield 209	bnd:a	Lbnb;
    //   12: getfield 196	bnb:b	Ljava/lang/String;
    //   15: invokestatic 214	bny:a	(Ljava/lang/String;)Z
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: aload_1
    //   23: getfield 209	bnd:a	Lbnb;
    //   26: invokevirtual 217	bmj:b	(Lbnb;)V
    //   29: aconst_null
    //   30: areturn
    //   31: aload_2
    //   32: ldc -37
    //   34: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq -8 -> 29
    //   40: aload_1
    //   41: invokestatic 222	boa:b	(Lbnd;)Z
    //   44: ifne -15 -> 29
    //   47: new 18	bmj$c
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 225	bmj$c:<init>	(Lbnd;)V
    //   55: astore_2
    //   56: aload_0
    //   57: getfield 48	bmj:d	Lbnh;
    //   60: aload_1
    //   61: getfield 209	bnd:a	Lbnb;
    //   64: getfield 106	bnb:a	Ljava/lang/String;
    //   67: invokestatic 111	bnq:b	(Ljava/lang/String;)Ljava/lang/String;
    //   70: ldc2_w 226
    //   73: invokevirtual 230	bnh:a	(Ljava/lang/String;J)Lbnh$a;
    //   76: astore_1
    //   77: aload_1
    //   78: ifnull -49 -> 29
    //   81: aload_2
    //   82: aload_1
    //   83: invokevirtual 232	bmj$c:a	(Lbnh$a;)V
    //   86: new 8	bmj$a
    //   89: dup
    //   90: aload_0
    //   91: aload_1
    //   92: invokespecial 235	bmj$a:<init>	(Lbmj;Lbnh$a;)V
    //   95: astore_2
    //   96: aload_2
    //   97: areturn
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: invokestatic 236	bmj:a	(Lbnh$a;)V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_2
    //   108: goto -7 -> 101
    //   111: astore_1
    //   112: aconst_null
    //   113: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	bmj
    //   0	114	1	parambnd	bnd
    //   7	90	2	localObject	Object
    //   107	1	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   56	77	98	java/io/IOException
    //   81	96	107	java/io/IOException
    //   21	29	111	java/io/IOException
  }
  
  public final void a()
  {
    d.close();
  }
  
  /* Error */
  final void a(bnt parambnt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 242	bmj:g	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 242	bmj:g	I
    //   12: aload_1
    //   13: getfield 245	bnt:a	Lbnb;
    //   16: ifnull +16 -> 32
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 246	bmj:e	I
    //   24: iconst_1
    //   25: iadd
    //   26: putfield 246	bmj:e	I
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_1
    //   33: getfield 249	bnt:b	Lbnd;
    //   36: ifnull -7 -> 29
    //   39: aload_0
    //   40: aload_0
    //   41: getfield 251	bmj:f	I
    //   44: iconst_1
    //   45: iadd
    //   46: putfield 251	bmj:f	I
    //   49: goto -20 -> 29
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	bmj
    //   0	57	1	parambnt	bnt
    // Exception table:
    //   from	to	target	type
    //   2	29	52	finally
    //   32	49	52	finally
  }
  
  final void b()
  {
    try
    {
      f += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void b(bnb parambnb)
  {
    d.b(bnq.b(a));
  }
  
  final class a
    implements bns
  {
    boolean a;
    private final bnh.a c;
    private cbj d;
    private cbj e;
    
    public a(final bnh.a parama)
    {
      c = parama;
      d = parama.a(1);
      e = new cba(d)
      {
        public final void close()
        {
          synchronized (bmj.this)
          {
            if (a) {
              return;
            }
            a = true;
            bmj localbmj2 = bmj.this;
            b += 1;
            super.close();
            parama.a();
            return;
          }
        }
      };
    }
    
    public final void a()
    {
      synchronized (bmj.this)
      {
        if (a) {
          return;
        }
        a = true;
        bmj localbmj2 = bmj.this;
        c += 1;
        bnq.a(d);
        try
        {
          c.b();
          return;
        }
        catch (IOException localIOException) {}
      }
    }
    
    public final cbj b()
    {
      return e;
    }
  }
  
  static final class b
    extends bne
  {
    private final bnh.c a;
    private final cax b;
    private final String c;
    private final String d;
    
    public b(final bnh.c paramc, String paramString1, String paramString2)
    {
      a = paramc;
      c = paramString1;
      d = paramString2;
      b = cbe.a(new cbb(c[1])
      {
        public final void close()
        {
          paramc.close();
          super.close();
        }
      });
    }
    
    public final long a()
    {
      long l = -1L;
      try
      {
        if (d != null) {
          l = Long.parseLong(d);
        }
        return l;
      }
      catch (NumberFormatException localNumberFormatException) {}
      return -1L;
    }
    
    public final cax b()
    {
      return b;
    }
  }
  
  static final class c
  {
    final String a;
    final bmv b;
    final String c;
    final bna d;
    final int e;
    final String f;
    final bmv g;
    final bmu h;
    
    public c(bnd parambnd)
    {
      a = a.a;
      b = boa.c(parambnd);
      c = a.b;
      d = b;
      e = c;
      f = d;
      g = f;
      h = e;
    }
    
    public c(cbk paramcbk)
    {
      try
      {
        cax localcax1 = cbe.a(paramcbk);
        a = localcax1.n();
        c = localcax1.n();
        localObject = new bmv.a();
        int k = bmj.a(localcax1);
        int i = 0;
        while (i < k)
        {
          ((bmv.a)localObject).a(localcax1.n());
          i += 1;
        }
        b = ((bmv.a)localObject).a();
        localObject = bog.a(localcax1.n());
        d = a;
        e = b;
        f = c;
        localObject = new bmv.a();
        k = bmj.a(localcax1);
        i = j;
        while (i < k)
        {
          ((bmv.a)localObject).a(localcax1.n());
          i += 1;
        }
        g = ((bmv.a)localObject).a();
        if (!a()) {
          break label312;
        }
        localObject = localcax1.n();
        if (((String)localObject).length() > 0) {
          throw new IOException("expected \"\" but was \"" + (String)localObject + "\"");
        }
      }
      finally
      {
        paramcbk.close();
      }
      Object localObject = localcax2.n();
      List localList2 = a(localcax2);
      List localList1 = a(localcax2);
      if (localObject == null) {
        throw new IllegalArgumentException("cipherSuite == null");
      }
      label312:
      for (h = new bmu((String)localObject, bnq.a(localList2), bnq.a(localList1));; h = null)
      {
        paramcbk.close();
        return;
      }
    }
    
    /* Error */
    private static List<Certificate> a(cax paramcax)
    {
      // Byte code:
      //   0: aload_0
      //   1: invokestatic 84	bmj:a	(Lcax;)I
      //   4: istore_2
      //   5: iload_2
      //   6: iconst_m1
      //   7: if_icmpne +9 -> 16
      //   10: invokestatic 159	java/util/Collections:emptyList	()Ljava/util/List;
      //   13: astore_3
      //   14: aload_3
      //   15: areturn
      //   16: ldc -95
      //   18: invokestatic 167	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
      //   21: astore 5
      //   23: new 169	java/util/ArrayList
      //   26: dup
      //   27: iload_2
      //   28: invokespecial 172	java/util/ArrayList:<init>	(I)V
      //   31: astore 4
      //   33: iconst_0
      //   34: istore_1
      //   35: aload 4
      //   37: astore_3
      //   38: iload_1
      //   39: iload_2
      //   40: if_icmpge -26 -> 14
      //   43: aload_0
      //   44: invokeinterface 78 1 0
      //   49: astore_3
      //   50: new 174	cav
      //   53: dup
      //   54: invokespecial 175	cav:<init>	()V
      //   57: astore 6
      //   59: aload 6
      //   61: aload_3
      //   62: invokestatic 180	cay:b	(Ljava/lang/String;)Lcay;
      //   65: invokevirtual 183	cav:a	(Lcay;)Lcav;
      //   68: pop
      //   69: aload 4
      //   71: aload 5
      //   73: aload 6
      //   75: invokevirtual 186	cav:e	()Ljava/io/InputStream;
      //   78: invokevirtual 190	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
      //   81: invokeinterface 196 2 0
      //   86: pop
      //   87: iload_1
      //   88: iconst_1
      //   89: iadd
      //   90: istore_1
      //   91: goto -56 -> 35
      //   94: astore_0
      //   95: new 111	java/io/IOException
      //   98: dup
      //   99: aload_0
      //   100: invokevirtual 199	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
      //   103: invokespecial 128	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   106: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	107	0	paramcax	cax
      //   34	57	1	i	int
      //   4	37	2	j	int
      //   13	49	3	localObject	Object
      //   31	39	4	localArrayList	java.util.ArrayList
      //   21	51	5	localCertificateFactory	java.security.cert.CertificateFactory
      //   57	17	6	localcav	cav
      // Exception table:
      //   from	to	target	type
      //   16	33	94	java/security/cert/CertificateException
      //   43	87	94	java/security/cert/CertificateException
    }
    
    private static void a(caw paramcaw, List<Certificate> paramList)
    {
      try
      {
        paramcaw.j(paramList.size());
        paramcaw.g(10);
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          paramcaw.b(cau.a(agetgetEncodedc));
          paramcaw.g(10);
          i += 1;
        }
        return;
      }
      catch (CertificateEncodingException paramcaw)
      {
        throw new IOException(paramcaw.getMessage());
      }
    }
    
    private boolean a()
    {
      return a.startsWith("https://");
    }
    
    public final void a(bnh.a parama)
    {
      int j = 0;
      parama = cbe.a(parama.a(0));
      parama.b(a);
      parama.g(10);
      parama.b(c);
      parama.g(10);
      parama.j(b.a.length / 2);
      parama.g(10);
      int k = b.a.length / 2;
      int i = 0;
      while (i < k)
      {
        parama.b(b.a(i));
        parama.b(": ");
        parama.b(b.b(i));
        parama.g(10);
        i += 1;
      }
      parama.b(new bog(d, e, f).toString());
      parama.g(10);
      parama.j(g.a.length / 2);
      parama.g(10);
      k = g.a.length / 2;
      i = j;
      while (i < k)
      {
        parama.b(g.a(i));
        parama.b(": ");
        parama.b(g.b(i));
        parama.g(10);
        i += 1;
      }
      if (a())
      {
        parama.g(10);
        parama.b(h.a);
        parama.g(10);
        a(parama, h.b);
        a(parama, h.c);
      }
      parama.close();
    }
  }
}

/* Location:
 * Qualified Name:     bmj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */