import java.util.HashMap;
import java.util.Map;

public final class chu
  extends chj
{
  private static final cgh E = new chq("BE");
  private static final Map<cgk, chu> F = new HashMap();
  private static final chu G = b(cgk.a);
  
  private chu(cgf paramcgf, Object paramObject)
  {
    super(paramcgf, paramObject);
  }
  
  /* Error */
  public static chu b(cgk paramcgk)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_1
    //   5: aload_0
    //   6: ifnonnull +7 -> 13
    //   9: invokestatic 48	cgk:a	()Lcgk;
    //   12: astore_1
    //   13: getstatic 29	chu:F	Ljava/util/Map;
    //   16: astore_3
    //   17: aload_3
    //   18: monitorenter
    //   19: getstatic 29	chu:F	Ljava/util/Map;
    //   22: aload_1
    //   23: invokeinterface 54 2 0
    //   28: checkcast 2	chu
    //   31: astore_2
    //   32: aload_2
    //   33: astore_0
    //   34: aload_2
    //   35: ifnonnull +50 -> 85
    //   38: new 2	chu
    //   41: dup
    //   42: aload_1
    //   43: invokestatic 59	chv:b	(Lcgk;)Lchv;
    //   46: aconst_null
    //   47: invokespecial 60	chu:<init>	(Lcgf;Ljava/lang/Object;)V
    //   50: astore_0
    //   51: new 2	chu
    //   54: dup
    //   55: aload_0
    //   56: new 62	cgg
    //   59: dup
    //   60: aload_0
    //   61: invokespecial 65	cgg:<init>	(Lcgf;)V
    //   64: aconst_null
    //   65: invokestatic 70	cif:a	(Lcgf;Lcgx;Lcgx;)Lcif;
    //   68: ldc 72
    //   70: invokespecial 60	chu:<init>	(Lcgf;Ljava/lang/Object;)V
    //   73: astore_0
    //   74: getstatic 29	chu:F	Ljava/util/Map;
    //   77: aload_1
    //   78: aload_0
    //   79: invokeinterface 76 3 0
    //   84: pop
    //   85: aload_3
    //   86: monitorexit
    //   87: ldc 2
    //   89: monitorexit
    //   90: aload_0
    //   91: areturn
    //   92: astore_0
    //   93: aload_3
    //   94: monitorexit
    //   95: aload_0
    //   96: athrow
    //   97: astore_0
    //   98: ldc 2
    //   100: monitorexit
    //   101: aload_0
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramcgk	cgk
    //   4	74	1	localcgk	cgk
    //   31	4	2	localchu	chu
    // Exception table:
    //   from	to	target	type
    //   19	32	92	finally
    //   38	85	92	finally
    //   85	87	92	finally
    //   93	95	92	finally
    //   9	13	97	finally
    //   13	19	97	finally
    //   95	97	97	finally
  }
  
  public final cgf a(cgk paramcgk)
  {
    cgk localcgk = paramcgk;
    if (paramcgk == null) {
      localcgk = cgk.a();
    }
    if (localcgk == a()) {
      return this;
    }
    return b(localcgk);
  }
  
  protected final void a(chj.a parama)
  {
    if (b == null)
    {
      E = new cjk(new cjr(this, E), 543);
      F = new cjf(E, cgi.t());
      B = new cjk(new cjr(this, B), 543);
      H = new cjg(new cjk(F, 99), cgi.v());
      G = new cjk(new cjo((cjg)H), cgi.u());
      C = new cjk(new cjo(B, cgi.q()), cgi.q());
      I = E;
    }
  }
  
  public final cgf b()
  {
    return G;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof chu))
    {
      paramObject = (chu)paramObject;
      return a().equals(((chu)paramObject).a());
    }
    return false;
  }
  
  public final int hashCode()
  {
    return "Buddhist".hashCode() * 11 + a().hashCode();
  }
  
  public final String toString()
  {
    String str = "BuddhistChronology";
    cgk localcgk = a();
    if (localcgk != null) {
      str = "BuddhistChronology" + '[' + c + ']';
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     chu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */