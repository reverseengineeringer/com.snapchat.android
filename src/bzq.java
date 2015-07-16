public final class bzq
  implements byh
{
  /* Error */
  public final byl a(bya parambya, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: aload_2
    //   4: iconst_0
    //   5: invokevirtual 22	bya:a	(Ljava/lang/String;Z)Ljava/lang/String;
    //   8: astore_1
    //   9: aload_1
    //   10: invokestatic 28	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   13: pop2
    //   14: new 30	byl
    //   17: dup
    //   18: aload_1
    //   19: iload_3
    //   20: invokespecial 33	byl:<init>	(Ljava/lang/String;I)V
    //   23: areturn
    //   24: astore_1
    //   25: new 35	byi
    //   28: dup
    //   29: aload_1
    //   30: invokevirtual 39	bxy:getMessage	()Ljava/lang/String;
    //   33: aload_1
    //   34: invokespecial 42	byi:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   37: athrow
    //   38: astore_2
    //   39: iconst_1
    //   40: istore_3
    //   41: goto -27 -> 14
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	bzq
    //   0	44	1	parambya	bya
    //   0	44	2	paramString	String
    //   1	40	3	i	int
    // Exception table:
    //   from	to	target	type
    //   2	9	24	bxy
    //   9	14	38	java/lang/NumberFormatException
  }
  
  public final String a()
  {
    return "eval";
  }
}

/* Location:
 * Qualified Name:     bzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */