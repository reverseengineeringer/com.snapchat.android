import java.util.HashMap;
import java.util.Map;

public final class civ
  extends cik
{
  private static final chi E = new cir("BE");
  private static final Map<chl, civ> F = new HashMap();
  private static final civ G = b(chl.a);
  
  private civ(chg paramchg, Object paramObject)
  {
    super(paramchg, paramObject);
  }
  
  /* Error */
  public static civ b(chl paramchl)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_1
    //   5: aload_0
    //   6: ifnonnull +7 -> 13
    //   9: invokestatic 48	chl:a	()Lchl;
    //   12: astore_1
    //   13: getstatic 29	civ:F	Ljava/util/Map;
    //   16: astore_3
    //   17: aload_3
    //   18: monitorenter
    //   19: getstatic 29	civ:F	Ljava/util/Map;
    //   22: aload_1
    //   23: invokeinterface 54 2 0
    //   28: checkcast 2	civ
    //   31: astore_2
    //   32: aload_2
    //   33: astore_0
    //   34: aload_2
    //   35: ifnonnull +50 -> 85
    //   38: new 2	civ
    //   41: dup
    //   42: aload_1
    //   43: invokestatic 59	ciw:b	(Lchl;)Lciw;
    //   46: aconst_null
    //   47: invokespecial 60	civ:<init>	(Lchg;Ljava/lang/Object;)V
    //   50: astore_0
    //   51: new 2	civ
    //   54: dup
    //   55: aload_0
    //   56: new 62	chh
    //   59: dup
    //   60: aload_0
    //   61: invokespecial 65	chh:<init>	(Lchg;)V
    //   64: aconst_null
    //   65: invokestatic 70	cjg:a	(Lchg;Lchy;Lchy;)Lcjg;
    //   68: ldc 72
    //   70: invokespecial 60	civ:<init>	(Lchg;Ljava/lang/Object;)V
    //   73: astore_0
    //   74: getstatic 29	civ:F	Ljava/util/Map;
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
    //   0	103	0	paramchl	chl
    //   4	74	1	localchl	chl
    //   31	4	2	localciv	civ
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
  
  public final chg a(chl paramchl)
  {
    chl localchl = paramchl;
    if (paramchl == null) {
      localchl = chl.a();
    }
    if (localchl == a()) {
      return this;
    }
    return b(localchl);
  }
  
  protected final void a(cik.a parama)
  {
    if (b == null)
    {
      E = new ckl(new cks(this, E), 543);
      F = new ckg(E, chj.t());
      B = new ckl(new cks(this, B), 543);
      H = new ckh(new ckl(F, 99), chj.v());
      G = new ckl(new ckp((ckh)H), chj.u());
      C = new ckl(new ckp(B, chj.q()), chj.q());
      I = E;
    }
  }
  
  public final chg b()
  {
    return G;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof civ))
    {
      paramObject = (civ)paramObject;
      return a().equals(((civ)paramObject).a());
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
    chl localchl = a();
    if (localchl != null) {
      str = "BuddhistChronology" + '[' + c + ']';
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     civ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */