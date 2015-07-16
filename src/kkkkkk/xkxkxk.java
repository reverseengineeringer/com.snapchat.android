package kkkkkk;

import java.io.InputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;

public class xkxkxk
  extends CipherInputStream
{
  public static int b041D041DН041DНН = 0;
  public static int b041DНН041DНН = 1;
  public static int bН041DН041DНН = 2;
  public static int bННН041DНН = 11;
  
  public xkxkxk(InputStream paramInputStream, Cipher paramCipher)
  {
    super(paramInputStream, paramCipher);
    i = bННН041DНН;
    switch (i * (b041DНН041DНН + i) % b041EОО041EО041E())
    {
    default: 
      bННН041DНН = bООО041EО041E();
      b041DНН041DНН = 94;
    }
  }
  
  public static int b041EОО041EО041E()
  {
    return 2;
  }
  
  public static int bООО041EО041E()
  {
    return 61;
  }
  
  /* Error */
  public int available()
    throws java.io.IOException
  {
    // Byte code:
    //   0: invokestatic 25	kkkkkk/xkxkxk:bООО041EО041E	()I
    //   3: istore_1
    //   4: getstatic 19	kkkkkk/xkxkxk:b041DНН041DНН	I
    //   7: istore_2
    //   8: getstatic 21	kkkkkk/xkxkxk:bН041DН041DНН	I
    //   11: istore_3
    //   12: iload_1
    //   13: iload_2
    //   14: iload_1
    //   15: iadd
    //   16: imul
    //   17: iload_3
    //   18: irem
    //   19: tableswitch	default:+17->36, 0:+28->47
    //   36: bipush 90
    //   38: putstatic 17	kkkkkk/xkxkxk:bННН041DНН	I
    //   41: invokestatic 25	kkkkkk/xkxkxk:bООО041EО041E	()I
    //   44: putstatic 19	kkkkkk/xkxkxk:b041DНН041DНН	I
    //   47: aload_0
    //   48: getfield 40	kkkkkk/xkxkxk:in	Ljava/io/InputStream;
    //   51: invokevirtual 44	java/io/InputStream:available	()I
    //   54: istore_1
    //   55: getstatic 17	kkkkkk/xkxkxk:bННН041DНН	I
    //   58: getstatic 19	kkkkkk/xkxkxk:b041DНН041DНН	I
    //   61: iadd
    //   62: getstatic 17	kkkkkk/xkxkxk:bННН041DНН	I
    //   65: imul
    //   66: invokestatic 30	kkkkkk/xkxkxk:b041EОО041EО041E	()I
    //   69: irem
    //   70: getstatic 46	kkkkkk/xkxkxk:b041D041DН041DНН	I
    //   73: if_icmpeq +14 -> 87
    //   76: bipush 76
    //   78: putstatic 17	kkkkkk/xkxkxk:bННН041DНН	I
    //   81: invokestatic 25	kkkkkk/xkxkxk:bООО041EО041E	()I
    //   84: putstatic 46	kkkkkk/xkxkxk:b041D041DН041DНН	I
    //   87: iconst_0
    //   88: tableswitch	default:+24->112, 0:+51->139, 1:+-33->55
    //   112: iconst_0
    //   113: tableswitch	default:+23->136, 0:+26->139, 1:+-58->55
    //   136: goto -24 -> 112
    //   139: iload_1
    //   140: ireturn
    //   141: astore 4
    //   143: aload 4
    //   145: athrow
    //   146: astore 4
    //   148: aload 4
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	xkxkxk
    //   3	137	1	i	int
    //   7	9	2	j	int
    //   11	8	3	k	int
    //   141	3	4	localException1	Exception
    //   146	3	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	12	141	java/lang/Exception
    //   47	55	141	java/lang/Exception
    //   36	47	146	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     kkkkkk.xkxkxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */