package kkkkkk;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;

public class kkxkxk
  extends AssetFileDescriptor
{
  public static int b041D041D041DННН = 2;
  public static int b041DН041DННН = 0;
  public static int bН041D041DННН = 1;
  public static int bНН041DННН = 58;
  private String b041D041DНННН;
  private boolean b041DННННН;
  private Context b044E044Eю044E044E044E;
  private String b044Eю044E044E044E044E;
  private long bН041DНННН;
  private FileDescriptor bю044E044E044E044E044E;
  private FileInputStream bюю044E044E044E044E;
  
  public kkxkxk(AssetFileDescriptor paramAssetFileDescriptor, Context paramContext) {}
  
  public static int b041E041E041EО041EО()
  {
    return 1;
  }
  
  public static int b041EО041EО041EО()
  {
    return 2;
  }
  
  public static int bО041E041EО041EО()
  {
    return 89;
  }
  
  public static int bОО041EО041EО()
  {
    return 0;
  }
  
  /* Error */
  public void bООО041E041EО(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: iconst_0
    //   7: tableswitch	default:+21->28, 0:+48->55, 1:+-1->6
    //   28: iconst_0
    //   29: tableswitch	default:+23->52, 0:+26->55, 1:+-23->6
    //   52: goto -24 -> 28
    //   55: ldc 70
    //   57: sipush 158
    //   60: bipush 49
    //   62: iconst_0
    //   63: invokestatic 54	kkkkkk/kkxkkk:b041AККК041AК	(Ljava/lang/String;CCC)Ljava/lang/String;
    //   66: aconst_null
    //   67: aload_0
    //   68: getfield 58	kkkkkk/kkxkxk:b044E044Eю044E044E044E	Landroid/content/Context;
    //   71: invokevirtual 76	android/content/Context:getExternalCacheDir	()Ljava/io/File;
    //   74: invokestatic 82	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   77: astore 8
    //   79: aload 8
    //   81: invokevirtual 86	java/io/File:deleteOnExit	()V
    //   84: aload_0
    //   85: aload 8
    //   87: invokevirtual 90	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   90: putfield 92	kkkkkk/kkxkxk:b044Eю044E044E044E044E	Ljava/lang/String;
    //   93: new 94	java/io/FileOutputStream
    //   96: dup
    //   97: aload 8
    //   99: invokespecial 97	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   102: astore 4
    //   104: aload_0
    //   105: invokespecial 101	android/content/res/AssetFileDescriptor:createInputStream	()Ljava/io/FileInputStream;
    //   108: astore 7
    //   110: aload 7
    //   112: aload_1
    //   113: aload_2
    //   114: invokestatic 107	kkkkkk/xxxkxk:b041E041E041EОО041E	(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    //   117: astore_1
    //   118: sipush 8192
    //   121: newarray <illegal type>
    //   123: astore_2
    //   124: aload_1
    //   125: aload_2
    //   126: invokevirtual 113	java/io/InputStream:read	([B)I
    //   129: istore_3
    //   130: iload_3
    //   131: ifle +107 -> 238
    //   134: aload 4
    //   136: aload_2
    //   137: iconst_0
    //   138: iload_3
    //   139: invokevirtual 117	java/io/FileOutputStream:write	([BII)V
    //   142: goto -18 -> 124
    //   145: astore_2
    //   146: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   149: istore_3
    //   150: iload_3
    //   151: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   154: iload_3
    //   155: iadd
    //   156: imul
    //   157: invokestatic 123	kkkkkk/kkxkxk:b041EО041EО041EО	()I
    //   160: irem
    //   161: tableswitch	default:+19->180, 0:+30->191
    //   180: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   183: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   186: bipush 84
    //   188: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   191: new 68	java/io/IOException
    //   194: dup
    //   195: aload_2
    //   196: invokevirtual 130	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   199: invokespecial 133	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   202: athrow
    //   203: astore 5
    //   205: aload_1
    //   206: astore_2
    //   207: aload 5
    //   209: astore_1
    //   210: aload 4
    //   212: ifnull +8 -> 220
    //   215: aload 4
    //   217: invokevirtual 136	java/io/FileOutputStream:close	()V
    //   220: aload_2
    //   221: ifnull +7 -> 228
    //   224: aload_2
    //   225: invokevirtual 137	java/io/InputStream:close	()V
    //   228: aload_0
    //   229: iconst_0
    //   230: putfield 46	kkkkkk/kkxkxk:b041DННННН	Z
    //   233: aload_1
    //   234: athrow
    //   235: astore_1
    //   236: aload_1
    //   237: athrow
    //   238: aload_0
    //   239: aload 8
    //   241: invokevirtual 140	java/io/File:length	()J
    //   244: putfield 142	kkkkkk/kkxkxk:bН041DНННН	J
    //   247: aload 7
    //   249: invokevirtual 145	java/io/FileInputStream:close	()V
    //   252: aload 4
    //   254: invokevirtual 136	java/io/FileOutputStream:close	()V
    //   257: aload_1
    //   258: invokevirtual 137	java/io/InputStream:close	()V
    //   261: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   264: istore_3
    //   265: iload_3
    //   266: invokestatic 147	kkkkkk/kkxkxk:b041E041E041EО041EО	()I
    //   269: iload_3
    //   270: iadd
    //   271: imul
    //   272: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   275: irem
    //   276: tableswitch	default:+20->296, 0:+30->306
    //   296: bipush 89
    //   298: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   301: bipush 53
    //   303: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   306: aload_0
    //   307: new 144	java/io/FileInputStream
    //   310: dup
    //   311: new 78	java/io/File
    //   314: dup
    //   315: aload_0
    //   316: getfield 92	kkkkkk/kkxkxk:b044Eю044E044E044E044E	Ljava/lang/String;
    //   319: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;)V
    //   322: invokespecial 151	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   325: putfield 153	kkkkkk/kkxkxk:bюю044E044E044E044E	Ljava/io/FileInputStream;
    //   328: aload_0
    //   329: aload_0
    //   330: getfield 153	kkkkkk/kkxkxk:bюю044E044E044E044E	Ljava/io/FileInputStream;
    //   333: invokevirtual 157	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   336: putfield 159	kkkkkk/kkxkxk:bю044E044E044E044E044E	Ljava/io/FileDescriptor;
    //   339: iconst_0
    //   340: ifeq +11 -> 351
    //   343: new 161	java/lang/NullPointerException
    //   346: dup
    //   347: invokespecial 163	java/lang/NullPointerException:<init>	()V
    //   350: athrow
    //   351: iconst_0
    //   352: ifeq +11 -> 363
    //   355: new 161	java/lang/NullPointerException
    //   358: dup
    //   359: invokespecial 163	java/lang/NullPointerException:<init>	()V
    //   362: athrow
    //   363: aload_0
    //   364: iconst_0
    //   365: putfield 46	kkkkkk/kkxkxk:b041DННННН	Z
    //   368: return
    //   369: astore_1
    //   370: new 68	java/io/IOException
    //   373: dup
    //   374: aload_1
    //   375: invokevirtual 130	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   378: invokespecial 133	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   381: athrow
    //   382: astore_1
    //   383: aload_1
    //   384: athrow
    //   385: astore_1
    //   386: new 68	java/io/IOException
    //   389: dup
    //   390: aload_1
    //   391: invokevirtual 130	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   394: invokespecial 133	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   397: athrow
    //   398: astore_1
    //   399: aconst_null
    //   400: astore 4
    //   402: aload 6
    //   404: astore_2
    //   405: goto -195 -> 210
    //   408: astore_1
    //   409: aload 6
    //   411: astore_2
    //   412: goto -202 -> 210
    //   415: astore 5
    //   417: aload_1
    //   418: astore_2
    //   419: aload 5
    //   421: astore_1
    //   422: goto -212 -> 210
    //   425: astore 5
    //   427: aconst_null
    //   428: astore 4
    //   430: aload_1
    //   431: astore_2
    //   432: aload 5
    //   434: astore_1
    //   435: goto -225 -> 210
    //   438: astore_2
    //   439: aconst_null
    //   440: astore_1
    //   441: aload 5
    //   443: astore 4
    //   445: goto -299 -> 146
    //   448: astore_2
    //   449: aconst_null
    //   450: astore_1
    //   451: goto -305 -> 146
    //   454: astore_2
    //   455: aload 5
    //   457: astore 4
    //   459: goto -313 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	462	0	this	kkxkxk
    //   0	462	1	paramArrayOfByte1	byte[]
    //   0	462	2	paramArrayOfByte2	byte[]
    //   129	143	3	i	int
    //   102	356	4	localObject1	Object
    //   4	1	5	localObject2	Object
    //   203	5	5	localObject3	Object
    //   415	5	5	localObject4	Object
    //   425	31	5	localObject5	Object
    //   1	409	6	localObject6	Object
    //   108	140	7	localFileInputStream	FileInputStream
    //   77	163	8	localFile	File
    // Exception table:
    //   from	to	target	type
    //   118	124	145	java/lang/Exception
    //   124	130	145	java/lang/Exception
    //   134	142	145	java/lang/Exception
    //   238	257	145	java/lang/Exception
    //   191	203	203	finally
    //   228	235	235	java/lang/Exception
    //   386	398	235	java/lang/Exception
    //   343	351	369	java/lang/Exception
    //   355	363	369	java/lang/Exception
    //   363	368	382	java/lang/Exception
    //   370	382	382	java/lang/Exception
    //   215	220	385	java/lang/Exception
    //   224	228	385	java/lang/Exception
    //   55	104	398	finally
    //   306	339	398	finally
    //   104	118	408	finally
    //   118	124	415	finally
    //   124	130	415	finally
    //   134	142	415	finally
    //   238	257	415	finally
    //   257	261	425	finally
    //   55	104	438	java/lang/Exception
    //   306	339	438	java/lang/Exception
    //   104	118	448	java/lang/Exception
    //   257	261	454	java/lang/Exception
  }
  
  /* Error */
  public void close()
    throws java.io.IOException
  {
    // Byte code:
    //   0: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   3: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   6: iadd
    //   7: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   10: imul
    //   11: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   14: irem
    //   15: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   18: if_icmpeq +12 -> 30
    //   21: iconst_0
    //   22: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   25: bipush 88
    //   27: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   30: aload_0
    //   31: getfield 153	kkkkkk/kkxkxk:bюю044E044E044E044E	Ljava/io/FileInputStream;
    //   34: ifnull +60 -> 94
    //   37: aload_0
    //   38: getfield 153	kkkkkk/kkxkxk:bюю044E044E044E044E	Ljava/io/FileInputStream;
    //   41: invokevirtual 145	java/io/FileInputStream:close	()V
    //   44: aload_0
    //   45: getfield 92	kkkkkk/kkxkxk:b044Eю044E044E044E044E	Ljava/lang/String;
    //   48: astore_1
    //   49: new 78	java/io/File
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 150	java/io/File:<init>	(Ljava/lang/String;)V
    //   57: invokevirtual 168	java/io/File:delete	()Z
    //   60: pop
    //   61: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   64: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   67: iadd
    //   68: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   71: imul
    //   72: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   75: irem
    //   76: invokestatic 170	kkkkkk/kkxkxk:bОО041EО041EО	()I
    //   79: if_icmpeq +15 -> 94
    //   82: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   85: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   88: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   91: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   94: return
    //   95: astore_1
    //   96: aload_1
    //   97: athrow
    //   98: astore_1
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: aload_1
    //   103: athrow
    //   104: astore_1
    //   105: aload_1
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	kkxkxk
    //   48	6	1	str	String
    //   95	2	1	localException1	Exception
    //   98	2	1	localException2	Exception
    //   101	2	1	localException3	Exception
    //   104	2	1	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   30	49	95	java/lang/Exception
    //   96	98	98	java/lang/Exception
    //   102	104	98	java/lang/Exception
    //   49	61	101	java/lang/Exception
    //   0	30	104	java/lang/Exception
  }
  
  /* Error */
  public FileInputStream createInputStream()
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 171	kkkkkk/kkxkxk:getLength	()J
    //   4: lconst_0
    //   5: lcmp
    //   6: ifge +15 -> 21
    //   9: new 173	android/os/ParcelFileDescriptor$AutoCloseInputStream
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual 174	kkkkkk/kkxkxk:getParcelFileDescriptor	()Landroid/os/ParcelFileDescriptor;
    //   17: invokespecial 177	android/os/ParcelFileDescriptor$AutoCloseInputStream:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   20: areturn
    //   21: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   24: istore_1
    //   25: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   28: istore_2
    //   29: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   32: istore_3
    //   33: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   36: istore 4
    //   38: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   41: istore 5
    //   43: iload_1
    //   44: iload_2
    //   45: iadd
    //   46: iload_3
    //   47: imul
    //   48: iload 4
    //   50: irem
    //   51: iload 5
    //   53: if_icmpeq +47 -> 100
    //   56: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   59: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   62: bipush 77
    //   64: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   67: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   70: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   73: iadd
    //   74: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   77: imul
    //   78: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   81: irem
    //   82: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   85: if_icmpeq +15 -> 100
    //   88: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   91: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   94: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   97: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   100: new 179	android/content/res/AssetFileDescriptor$AutoCloseInputStream
    //   103: dup
    //   104: aload_0
    //   105: invokespecial 182	android/content/res/AssetFileDescriptor$AutoCloseInputStream:<init>	(Landroid/content/res/AssetFileDescriptor;)V
    //   108: astore 6
    //   110: aload 6
    //   112: areturn
    //   113: astore 6
    //   115: aload 6
    //   117: athrow
    //   118: astore 6
    //   120: aload 6
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	kkxkxk
    //   24	22	1	i	int
    //   28	18	2	j	int
    //   32	16	3	k	int
    //   36	15	4	m	int
    //   41	13	5	n	int
    //   108	3	6	localAutoCloseInputStream	android.content.res.AssetFileDescriptor.AutoCloseInputStream
    //   113	3	6	localException1	Exception
    //   118	3	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	21	113	java/lang/Exception
    //   21	43	113	java/lang/Exception
    //   100	110	113	java/lang/Exception
    //   56	67	118	java/lang/Exception
  }
  
  /* Error */
  public java.io.FileOutputStream createOutputStream()
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 186	android/content/res/AssetFileDescriptor:createOutputStream	()Ljava/io/FileOutputStream;
    //   4: pop
    //   5: aload_0
    //   6: getfield 56	kkkkkk/kkxkxk:b041D041DНННН	Ljava/lang/String;
    //   9: astore 6
    //   11: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   14: istore_1
    //   15: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   18: istore_2
    //   19: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   22: istore_3
    //   23: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   26: istore 4
    //   28: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   31: istore 5
    //   33: iload_1
    //   34: iload_2
    //   35: iadd
    //   36: iload_3
    //   37: imul
    //   38: iload 4
    //   40: irem
    //   41: iload 5
    //   43: if_icmpeq +14 -> 57
    //   46: bipush 18
    //   48: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   51: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   54: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   57: aload 6
    //   59: ldc -68
    //   61: bipush 100
    //   63: bipush 122
    //   65: iconst_2
    //   66: invokestatic 54	kkkkkk/kkxkkk:b041AККК041AК	(Ljava/lang/String;CCC)Ljava/lang/String;
    //   69: invokestatic 194	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   72: pop
    //   73: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   76: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   79: iadd
    //   80: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   83: imul
    //   84: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   87: irem
    //   88: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   91: if_icmpeq +14 -> 105
    //   94: bipush 7
    //   96: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   99: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   102: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   105: ldc -60
    //   107: bipush 66
    //   109: sipush 245
    //   112: iconst_2
    //   113: invokestatic 54	kkkkkk/kkxkkk:b041AККК041AК	(Ljava/lang/String;CCC)Ljava/lang/String;
    //   116: astore 6
    //   118: new 68	java/io/IOException
    //   121: dup
    //   122: aload 6
    //   124: invokespecial 133	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   127: athrow
    //   128: astore 6
    //   130: aload 6
    //   132: athrow
    //   133: astore 6
    //   135: aload 6
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	kkxkxk
    //   14	22	1	i	int
    //   18	18	2	j	int
    //   22	16	3	k	int
    //   26	15	4	m	int
    //   31	13	5	n	int
    //   9	114	6	str	String
    //   128	3	6	localException1	Exception
    //   133	3	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	33	128	java/lang/Exception
    //   57	73	128	java/lang/Exception
    //   118	128	128	java/lang/Exception
    //   46	57	133	java/lang/Exception
    //   105	118	133	java/lang/Exception
  }
  
  /* Error */
  public long getDeclaredLength()
  {
    // Byte code:
    //   0: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   3: istore_1
    //   4: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   7: istore_2
    //   8: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   11: istore_3
    //   12: invokestatic 123	kkkkkk/kkxkxk:b041EО041EО041EО	()I
    //   15: istore 4
    //   17: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
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
    //   35: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   38: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   41: bipush 88
    //   43: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   46: aload_0
    //   47: invokespecial 199	android/content/res/AssetFileDescriptor:getDeclaredLength	()J
    //   50: lstore 8
    //   52: lload 8
    //   54: lstore 6
    //   56: lload 8
    //   58: ldc2_w 200
    //   61: lcmp
    //   62: ifeq +49 -> 111
    //   65: aload_0
    //   66: invokevirtual 171	kkkkkk/kkxkxk:getLength	()J
    //   69: lstore 8
    //   71: lload 8
    //   73: lstore 6
    //   75: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   78: invokestatic 147	kkkkkk/kkxkxk:b041E041E041EО041EО	()I
    //   81: iadd
    //   82: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   85: imul
    //   86: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   89: irem
    //   90: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   93: if_icmpeq +18 -> 111
    //   96: bipush 81
    //   98: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   101: invokestatic 125	kkkkkk/kkxkxk:bО041E041EО041EО	()I
    //   104: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   107: lload 8
    //   109: lstore 6
    //   111: lload 6
    //   113: lreturn
    //   114: astore 10
    //   116: aload 10
    //   118: athrow
    //   119: astore 10
    //   121: aload 10
    //   123: athrow
    //   124: astore 10
    //   126: aload 10
    //   128: athrow
    //   129: astore 10
    //   131: aload 10
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	kkxkxk
    //   3	22	1	i	int
    //   7	18	2	j	int
    //   11	16	3	k	int
    //   15	15	4	m	int
    //   20	13	5	n	int
    //   54	58	6	l1	long
    //   50	58	8	l2	long
    //   114	3	10	localException1	Exception
    //   119	3	10	localException2	Exception
    //   124	3	10	localException3	Exception
    //   129	3	10	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   46	52	114	java/lang/Exception
    //   0	22	119	java/lang/Exception
    //   116	119	119	java/lang/Exception
    //   65	71	124	java/lang/Exception
    //   35	46	129	java/lang/Exception
    //   126	129	129	java/lang/Exception
  }
  
  /* Error */
  public FileDescriptor getFileDescriptor()
  {
    // Byte code:
    //   0: iconst_5
    //   1: istore_1
    //   2: iload_1
    //   3: iconst_0
    //   4: idiv
    //   5: istore_1
    //   6: goto -4 -> 2
    //   9: astore_2
    //   10: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   13: getstatic 121	kkkkkk/kkxkxk:bН041D041DННН	I
    //   16: iadd
    //   17: getstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   20: imul
    //   21: getstatic 149	kkkkkk/kkxkxk:b041D041D041DННН	I
    //   24: irem
    //   25: getstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   28: if_icmpeq +13 -> 41
    //   31: bipush 12
    //   33: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   36: bipush 37
    //   38: putstatic 127	kkkkkk/kkxkxk:b041DН041DННН	I
    //   41: bipush 82
    //   43: putstatic 119	kkkkkk/kkxkxk:bНН041DННН	I
    //   46: aload_0
    //   47: getfield 159	kkkkkk/kkxkxk:bю044E044E044E044E044E	Ljava/io/FileDescriptor;
    //   50: astore_2
    //   51: aload_2
    //   52: areturn
    //   53: astore_2
    //   54: iconst_0
    //   55: tableswitch	default:+21->76, 0:+48->103, 1:+-1->54
    //   76: iconst_1
    //   77: tableswitch	default:+23->100, 0:+-23->54, 1:+26->103
    //   100: goto -24 -> 76
    //   103: aload_2
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	kkxkxk
    //   1	5	1	i	int
    //   9	1	2	localException1	Exception
    //   50	2	2	localFileDescriptor	FileDescriptor
    //   53	51	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	6	9	java/lang/Exception
    //   46	51	53	java/lang/Exception
  }
  
  public long getLength()
  {
    long l;
    try
    {
      if (b041DННННН) {
        return super.getLength();
      }
      l = bН041DНННН;
      int i = bНН041DННН;
      switch (i * (bН041D041DННН + i) % b041D041D041DННН)
      {
      default: 
        bНН041DННН = bО041E041EО041EО();
        b041DН041DННН = bО041E041EО041EО();
        return l;
      }
    }
    catch (Exception localException)
    {
      throw localException;
    }
    return l;
  }
  
  public ParcelFileDescriptor getParcelFileDescriptor()
  {
    if (b041DННННН)
    {
      localObject3 = super.getParcelFileDescriptor();
      return (ParcelFileDescriptor)localObject3;
    }
    localObject3 = null;
    try
    {
      File localFile = new File(b044Eю044E044E044E044E);
      boolean bool = localFile.exists();
      localObject1 = localObject3;
      if (bool)
      {
        if ((bНН041DННН + bН041D041DННН) * bНН041DННН % b041D041D041DННН != b041DН041DННН)
        {
          bНН041DННН = 69;
          b041DН041DННН = bО041E041EО041EО();
        }
        localObject1 = ParcelFileDescriptor.open(localFile, 268435456);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject2 = localObject3;
      }
    }
    if ((bНН041DННН + b041E041E041EО041EО()) * bНН041DННН % b041D041D041DННН != b041DН041DННН)
    {
      bНН041DННН = 53;
      b041DН041DННН = bО041E041EО041EО();
    }
    localObject3 = localObject1;
    switch (1)
    {
    }
    for (;;)
    {
      localObject3 = localObject1;
      switch (1)
      {
      }
    }
  }
  
  public long getStartOffset()
  {
    switch (0)
    {
    case 1: 
    default: 
      for (;;)
      {
        switch (0)
        {
        }
      }
    }
    if (b041DННННН) {
      return super.getStartOffset();
    }
    return 0L;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    Log.e(b041D041DНННН, kkxkkk.b041AККК041AК("ŪƅżƇŸĳƃŴƅŶŸſĳƇƂĳƇŻżƆĳƅŸƆƂƈƅŶŸĳżƆĳƁƂƇĳƆƈƃƃƂƅƇŸŷ", 'b', '±', '\003'));
    paramInt = bНН041DННН;
    int i = bН041D041DННН;
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
    int j = b041EО041EО041EО();
    int k = bНН041DННН;
    switch (k * (bН041D041DННН + k) % b041D041D041DННН)
    {
    default: 
      bНН041DННН = 48;
      b041DН041DННН = bО041E041EО041EО();
    }
    switch (paramInt * (i + paramInt) % j)
    {
    default: 
      bНН041DННН = 8;
      b041DН041DННН = bО041E041EО041EО();
    }
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
    throw new RuntimeException(kkxkkk.bК041A041A041AКК("ʋʦʝʨʙɔʤʕʦʗʙʠɔʨʣɔʨʜʝʧɔʦʙʧʣʩʦʗʙɔʝʧɔʢʣʨɔʧʩʤʤʣʦʨʙʘ", '¼', '\002'));
  }
}

/* Location:
 * Qualified Name:     kkkkkk.kkxkxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */