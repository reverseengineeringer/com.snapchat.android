package kkkkkk;

public class kxxkxk
  extends xkkxkk
{
  public static int b041D041D041D041DНН = 2;
  public static int b041DН041D041DНН = 0;
  public static int bН041D041D041DНН = 1;
  public static int bНН041D041DНН = 67;
  
  /* Error */
  public kxxkxk()
  {
    // Byte code:
    //   0: getstatic 22	kkkkkk/kxxkxk:bНН041D041DНН	I
    //   3: istore_1
    //   4: getstatic 24	kkkkkk/kxxkxk:bН041D041D041DНН	I
    //   7: istore_2
    //   8: getstatic 22	kkkkkk/kxxkxk:bНН041D041DНН	I
    //   11: istore_3
    //   12: getstatic 26	kkkkkk/kxxkxk:b041D041D041D041DНН	I
    //   15: istore 4
    //   17: getstatic 28	kkkkkk/kxxkxk:b041DН041D041DНН	I
    //   20: istore 5
    //   22: iload_1
    //   23: iload_2
    //   24: iadd
    //   25: iload_3
    //   26: imul
    //   27: iload 4
    //   29: irem
    //   30: iload 5
    //   32: if_icmpeq +14 -> 46
    //   35: invokestatic 32	kkkkkk/kxxkxk:bК041AК041A041AК	()I
    //   38: putstatic 22	kkkkkk/kxxkxk:bНН041D041DНН	I
    //   41: bipush 60
    //   43: putstatic 28	kkkkkk/kxxkxk:b041DН041D041DНН	I
    //   46: aload_0
    //   47: invokespecial 34	kkkkkk/xkkxkk:<init>	()V
    //   50: invokestatic 32	kkkkkk/kxxkxk:bК041AК041A041AК	()I
    //   53: getstatic 24	kkkkkk/kxxkxk:bН041D041D041DНН	I
    //   56: iadd
    //   57: invokestatic 32	kkkkkk/kxxkxk:bК041AК041A041AК	()I
    //   60: imul
    //   61: getstatic 26	kkkkkk/kxxkxk:b041D041D041D041DНН	I
    //   64: irem
    //   65: getstatic 28	kkkkkk/kxxkxk:b041DН041D041DНН	I
    //   68: if_icmpeq +14 -> 82
    //   71: bipush 92
    //   73: putstatic 22	kkkkkk/kxxkxk:bНН041D041DНН	I
    //   76: invokestatic 32	kkkkkk/kxxkxk:bК041AК041A041AК	()I
    //   79: putstatic 28	kkkkkk/kxxkxk:b041DН041D041DНН	I
    //   82: return
    //   83: astore 6
    //   85: aload 6
    //   87: athrow
    //   88: astore 6
    //   90: aload 6
    //   92: athrow
    //   93: astore 6
    //   95: aload 6
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	kxxkxk
    //   3	22	1	i	int
    //   7	18	2	j	int
    //   11	16	3	k	int
    //   15	15	4	m	int
    //   20	13	5	n	int
    //   83	3	6	localException1	Exception
    //   88	3	6	localException2	Exception
    //   93	3	6	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   46	50	83	java/lang/Exception
    //   0	22	88	java/lang/Exception
    //   85	88	88	java/lang/Exception
    //   35	46	93	java/lang/Exception
  }
  
  public static int bК041AК041A041AК()
  {
    return 42;
  }
  
  public String bК041A041AККК(String paramString, char paramChar)
  {
    for (;;)
    {
      try
      {
        paramString = paramString.toCharArray();
        char[] arrayOfChar = new char[paramString.length];
        int j = 0;
        char c;
        int k;
        if (j < paramString.length)
        {
          c = paramString[j];
          k = bНН041D041DНН;
        }
        switch (k * (bН041D041D041DНН + k) % b041D041D041D041DНН)
        {
        case 0: 
          bНН041D041DНН = bК041AК041A041AК();
          b041DН041D041DНН = bК041AК041A041AК();
          k = bНН041D041DНН;
          switch (k * (bН041D041D041DНН + k) % b041D041D041D041DНН)
          {
          default: 
            bНН041D041DНН = bК041AК041A041AК();
            b041DН041D041DНН = bК041AК041A041AК();
          }
          int i = (char)(c ^ paramChar);
          arrayOfChar[j] = i;
          j += 1;
          continue;
          paramString = new String(arrayOfChar);
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        throw paramString;
      }
    }
  }
}

/* Location:
 * Qualified Name:     kkkkkk.kxxkxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */