package kkkkkk;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipFile;

public final class xkkxxk
{
  private static final long b041D041D041DН041DН = -1L;
  public static int b041D041DН041D041DН = 2;
  private static final int b041DН041DН041DН = 3;
  public static int b041DНН041D041DН = 0;
  private static final int bН041D041DН041DН = 16384;
  public static int bН041DН041D041DН = 1;
  private static final String bНН041DН041DН = "ŦƲơƨ";
  public static int bННН041D041DН = 27;
  
  /* Error */
  public xkkxxk()
  {
    // Byte code:
    //   0: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   3: istore_1
    //   4: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   7: istore_2
    //   8: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   11: istore_3
    //   12: invokestatic 37	kkkkkk/xkkxxk:bН041D041DНН041D	()I
    //   15: istore 4
    //   17: getstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   20: istore 5
    //   22: iload_1
    //   23: iload_2
    //   24: iadd
    //   25: iload_3
    //   26: imul
    //   27: iload 4
    //   29: irem
    //   30: iload 5
    //   32: if_icmpeq +43 -> 75
    //   35: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   38: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   41: iadd
    //   42: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   45: imul
    //   46: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   49: irem
    //   50: getstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   53: if_icmpeq +12 -> 65
    //   56: bipush 33
    //   58: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   61: iconst_4
    //   62: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   65: bipush 70
    //   67: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   70: bipush 19
    //   72: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   75: aload_0
    //   76: invokespecial 43	java/lang/Object:<init>	()V
    //   79: return
    //   80: astore 6
    //   82: aload 6
    //   84: athrow
    //   85: astore 6
    //   87: aload 6
    //   89: athrow
    //   90: astore 6
    //   92: aload 6
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	xkkxxk
    //   3	22	1	i	int
    //   7	18	2	j	int
    //   11	16	3	k	int
    //   15	15	4	m	int
    //   20	13	5	n	int
    //   80	3	6	localException1	Exception
    //   85	3	6	localException2	Exception
    //   90	3	6	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   75	79	80	java/lang/Exception
    //   8	22	85	java/lang/Exception
    //   82	85	85	java/lang/Exception
    //   0	8	90	java/lang/Exception
    //   65	75	90	java/lang/Exception
  }
  
  public static int b041D041D041DНН041D()
  {
    return 67;
  }
  
  /* Error */
  private static void b041D041DН041DН041D(File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 55	java/io/File:mkdir	()Z
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual 58	java/io/File:isDirectory	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +83 -> 94
    //   14: aload_0
    //   15: invokevirtual 62	java/io/File:getParentFile	()Ljava/io/File;
    //   18: pop
    //   19: invokestatic 64	kkkkkk/xkkxxk:b041D041D041DНН041D	()I
    //   22: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   25: iadd
    //   26: invokestatic 64	kkkkkk/xkkxxk:b041D041D041DНН041D	()I
    //   29: imul
    //   30: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   33: irem
    //   34: getstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   37: if_icmpeq +12 -> 49
    //   40: iconst_5
    //   41: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   44: bipush 93
    //   46: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   49: new 66	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 67	java/lang/StringBuilder:<init>	()V
    //   56: astore_2
    //   57: new 49	java/io/IOException
    //   60: dup
    //   61: aload_2
    //   62: ldc 69
    //   64: sipush 245
    //   67: iconst_1
    //   68: invokestatic 75	kkkkkk/kkxkkk:bК041A041A041AКК	(Ljava/lang/String;CC)Ljava/lang/String;
    //   71: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_0
    //   75: invokevirtual 83	java/io/File:getPath	()Ljava/lang/String;
    //   78: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokespecial 89	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   87: athrow
    //   88: astore_0
    //   89: aload_0
    //   90: athrow
    //   91: astore_0
    //   92: aload_0
    //   93: athrow
    //   94: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	paramFile	File
    //   9	2	1	bool	boolean
    //   56	6	2	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   0	10	88	java/lang/Exception
    //   57	88	88	java/lang/Exception
    //   14	19	91	java/lang/Exception
    //   49	57	91	java/lang/Exception
  }
  
  /* Error */
  private static void b041DН041D041DН041D(File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 62	java/io/File:getParentFile	()Ljava/io/File;
    //   4: invokestatic 93	kkkkkk/xkkxxk:b041D041DН041DН041D	(Ljava/io/File;)V
    //   7: aload_0
    //   8: invokestatic 93	kkkkkk/xkkxxk:b041D041DН041DН041D	(Ljava/io/File;)V
    //   11: aload_0
    //   12: invokevirtual 97	java/io/File:listFiles	()[Ljava/io/File;
    //   15: astore_0
    //   16: aload_0
    //   17: ifnonnull +135 -> 152
    //   20: return
    //   21: iload_1
    //   22: iconst_1
    //   23: iadd
    //   24: istore_1
    //   25: iload_1
    //   26: iload_2
    //   27: if_icmpge -7 -> 20
    //   30: aload_0
    //   31: iload_1
    //   32: aaload
    //   33: astore 8
    //   35: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   38: istore_3
    //   39: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   42: istore 4
    //   44: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   47: istore 5
    //   49: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   52: istore 6
    //   54: getstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   57: istore 7
    //   59: iload_3
    //   60: iload 4
    //   62: iadd
    //   63: iload 5
    //   65: imul
    //   66: iload 6
    //   68: irem
    //   69: iload 7
    //   71: if_icmpeq +13 -> 84
    //   74: bipush 42
    //   76: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   79: bipush 95
    //   81: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   84: aload 8
    //   86: invokevirtual 100	java/io/File:isFile	()Z
    //   89: ifeq -68 -> 21
    //   92: aload 8
    //   94: invokevirtual 103	java/io/File:delete	()Z
    //   97: pop
    //   98: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   101: istore_3
    //   102: iload_3
    //   103: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   106: iload_3
    //   107: iadd
    //   108: imul
    //   109: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   112: irem
    //   113: tableswitch	default:+19->132, 0:+-92->21
    //   132: invokestatic 64	kkkkkk/xkkxxk:b041D041D041DНН041D	()I
    //   135: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   138: bipush 48
    //   140: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   143: goto -122 -> 21
    //   146: astore_0
    //   147: aload_0
    //   148: athrow
    //   149: astore_0
    //   150: aload_0
    //   151: athrow
    //   152: aload_0
    //   153: arraylength
    //   154: istore_2
    //   155: iconst_0
    //   156: istore_1
    //   157: goto -132 -> 25
    //   160: astore_0
    //   161: aload_0
    //   162: athrow
    //   163: astore_0
    //   164: aload_0
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	paramFile	File
    //   21	136	1	i	int
    //   26	129	2	j	int
    //   38	71	3	k	int
    //   42	21	4	m	int
    //   47	19	5	n	int
    //   52	17	6	i1	int
    //   57	15	7	i2	int
    //   33	60	8	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	16	146	java/lang/Exception
    //   84	98	146	java/lang/Exception
    //   35	59	149	java/lang/Exception
    //   147	149	149	java/lang/Exception
    //   152	155	160	java/lang/Exception
    //   74	84	163	java/lang/Exception
    //   161	163	163	java/lang/Exception
  }
  
  private static void b041DНН041DН041D(Closeable paramCloseable)
  {
    if ((bННН041D041DН + bН041DН041D041DН) * bННН041D041DН % b041D041DН041D041DН != b041DНН041D041DН)
    {
      bННН041D041DН = 62;
      b041DНН041D041DН = b041D041D041DНН041D();
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static boolean bН041D041D041DН041D(File paramFile)
  {
    try
    {
      paramFile = new ZipFile(paramFile);
      if ((bННН041D041DН + bН041DН041D041DН) * bННН041D041DН % b041D041DН041D041DН != b041DНН041D041DН)
      {
        bННН041D041DН = b041D041D041DНН041D();
        b041DНН041D041DН = 50;
      }
      paramFile.close();
      return true;
    }
    catch (Exception paramFile) {}
    return false;
  }
  
  public static int bН041D041DНН041D()
  {
    return 2;
  }
  
  /* Error */
  private static void bН041DН041DН041D(java.io.InputStream paramInputStream, File paramFile)
    throws IOException, java.io.FileNotFoundException
  {
    // Byte code:
    //   0: invokestatic 127	java/lang/System:currentTimeMillis	()J
    //   3: ldc2_w 128
    //   6: ldiv
    //   7: lstore 5
    //   9: new 131	java/util/zip/ZipOutputStream
    //   12: dup
    //   13: new 133	java/io/BufferedOutputStream
    //   16: dup
    //   17: new 135	java/io/FileOutputStream
    //   20: dup
    //   21: aload_1
    //   22: invokespecial 136	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   25: invokespecial 139	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   28: invokespecial 140	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore_1
    //   32: new 142	java/util/zip/ZipEntry
    //   35: dup
    //   36: ldc -112
    //   38: sipush 238
    //   41: iconst_2
    //   42: invokestatic 75	kkkkkk/kkxkkk:bК041A041A041AКК	(Ljava/lang/String;CC)Ljava/lang/String;
    //   45: invokespecial 145	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   48: astore 7
    //   50: iconst_0
    //   51: tableswitch	default:+21->72, 0:+48->99, 1:+-1->50
    //   72: iconst_1
    //   73: tableswitch	default:+23->96, 0:+-23->50, 1:+26->99
    //   96: goto -24 -> 72
    //   99: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   102: istore_2
    //   103: iload_2
    //   104: invokestatic 148	kkkkkk/xkkxxk:bННН041DН041D	()I
    //   107: iload_2
    //   108: iadd
    //   109: imul
    //   110: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   113: irem
    //   114: tableswitch	default:+18->132, 0:+27->141
    //   132: iconst_2
    //   133: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   136: bipush 59
    //   138: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   141: aload 7
    //   143: lload 5
    //   145: invokevirtual 152	java/util/zip/ZipEntry:setTime	(J)V
    //   148: aload_1
    //   149: aload 7
    //   151: invokevirtual 156	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   154: sipush 16384
    //   157: newarray <illegal type>
    //   159: astore 7
    //   161: aload_0
    //   162: aload 7
    //   164: invokevirtual 162	java/io/InputStream:read	([B)I
    //   167: istore_2
    //   168: iload_2
    //   169: iconst_m1
    //   170: if_icmpeq +95 -> 265
    //   173: aload_1
    //   174: aload 7
    //   176: iconst_0
    //   177: iload_2
    //   178: invokevirtual 166	java/util/zip/ZipOutputStream:write	([BII)V
    //   181: aload_0
    //   182: aload 7
    //   184: invokevirtual 162	java/io/InputStream:read	([B)I
    //   187: istore_3
    //   188: getstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   191: istore 4
    //   193: iload_3
    //   194: istore_2
    //   195: iload 4
    //   197: getstatic 33	kkkkkk/xkkxxk:bН041DН041D041DН	I
    //   200: iload 4
    //   202: iadd
    //   203: imul
    //   204: getstatic 41	kkkkkk/xkkxxk:b041D041DН041D041DН	I
    //   207: irem
    //   208: tableswitch	default:+70->278, 0:+-40->168
    //   228: bipush 65
    //   230: putstatic 31	kkkkkk/xkkxxk:bННН041D041DН	I
    //   233: bipush 61
    //   235: putstatic 39	kkkkkk/xkkxxk:b041DНН041D041DН	I
    //   238: iload_3
    //   239: istore_2
    //   240: goto -72 -> 168
    //   243: astore_0
    //   244: aload_0
    //   245: athrow
    //   246: astore 7
    //   248: aload_1
    //   249: invokevirtual 167	java/util/zip/ZipOutputStream:close	()V
    //   252: aload 7
    //   254: athrow
    //   255: astore_1
    //   256: aload_0
    //   257: invokestatic 169	kkkkkk/xkkxxk:b041DНН041DН041D	(Ljava/io/Closeable;)V
    //   260: aload_1
    //   261: athrow
    //   262: astore_0
    //   263: aload_0
    //   264: athrow
    //   265: aload_1
    //   266: invokevirtual 172	java/util/zip/ZipOutputStream:closeEntry	()V
    //   269: aload_1
    //   270: invokevirtual 167	java/util/zip/ZipOutputStream:close	()V
    //   273: aload_0
    //   274: invokestatic 169	kkkkkk/xkkxxk:b041DНН041DН041D	(Ljava/io/Closeable;)V
    //   277: return
    //   278: goto -50 -> 228
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	281	0	paramInputStream	java.io.InputStream
    //   0	281	1	paramFile	File
    //   102	138	2	i	int
    //   187	52	3	j	int
    //   191	13	4	k	int
    //   7	137	5	l	long
    //   48	135	7	localObject1	Object
    //   246	7	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	9	243	java/lang/Exception
    //   188	193	243	java/lang/Exception
    //   195	228	243	java/lang/Exception
    //   228	238	243	java/lang/Exception
    //   32	50	246	finally
    //   141	168	246	finally
    //   173	188	246	finally
    //   265	269	246	finally
    //   9	32	255	finally
    //   248	255	255	finally
    //   269	273	255	finally
    //   256	262	262	java/lang/Exception
    //   273	277	262	java/lang/Exception
  }
  
  public static List<File> bНН041D041DН041D(Context paramContext, String[] paramArrayOfString, File paramFile)
    throws IOException
  {
    paramContext = paramContext.getAssets();
    b041DН041D041DН041D(paramFile);
    ArrayList localArrayList = new ArrayList();
    int m = paramArrayOfString.length;
    int i = 0;
    while (i < m)
    {
      String str = paramArrayOfString[i];
      switch (1)
      {
      case 0: 
      default: 
        for (;;)
        {
          switch (1)
          {
          }
        }
      }
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(xkkkxk.b041EОООО041E(paramContext, str, 2));
      Object localObject = new StringBuilder();
      switch (1)
      {
      case 0: 
      default: 
        for (;;)
        {
          switch (0)
          {
          }
        }
      }
      localObject = new File(paramFile, str + kkxkkk.bК041A041A041AКК("=izc", '\023', '\004'));
      localArrayList.add(localObject);
      int j = 0;
      int n = 0;
      while ((j < 3) && (n == 0))
      {
        int k = j + 1;
        bН041DН041DН041D(localBufferedInputStream, (File)localObject);
        boolean bool = bН041D041D041DН041D((File)localObject);
        n = bool;
        j = k;
        if (!bool)
        {
          ((File)localObject).delete();
          n = bool;
          j = k;
          if ((b041D041D041DНН041D() + bН041DН041D041DН) * b041D041D041DНН041D() % bН041D041DНН041D() != b041DНН041D041DН)
          {
            bННН041D041DН = 91;
            b041DНН041D041DН = b041D041D041DНН041D();
            n = bool;
            j = k;
          }
        }
      }
      if (n == 0) {
        throw new IOException(kkxkkk.bК041A041A041AКК("O{xp,z{,o~qmq,u|,ruxq,", '\006', '\006') + ((File)localObject).getAbsolutePath() + kkxkkk.b041AККК041AК("ÐÙÜÎÏâ", 'H', '"', '\003') + str + kkxkkk.bК041A041A041AКК("l", 'E', '\004'));
      }
      j = i + 1;
      i = j;
      if ((bННН041D041DН + bН041DН041D041DН) * bННН041D041DН % b041D041DН041D041DН != b041DНН041D041DН)
      {
        bННН041D041DН = 53;
        b041DНН041D041DН = b041D041D041DНН041D();
        i = j;
      }
    }
    return localArrayList;
  }
  
  public static int bННН041DН041D()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     kkkkkk.xkkxxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */