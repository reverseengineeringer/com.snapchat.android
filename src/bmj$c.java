import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

final class bmj$c
{
  final String a;
  final bmv b;
  final String c;
  final bna d;
  final int e;
  final String f;
  final bmv g;
  final bmu h;
  
  public bmj$c(bnd parambnd)
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
  
  public bmj$c(cbk paramcbk)
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

/* Location:
 * Qualified Name:     bmj.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */