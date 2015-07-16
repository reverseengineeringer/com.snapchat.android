import android.graphics.ColorFilter;
import java.io.InputStream;

public final class fv
{
  public InputStream a;
  private Integer b = null;
  private Integer c = null;
  private ColorFilter d = null;
  private ColorFilter e = null;
  private boolean f = false;
  private boolean g = false;
  private boolean h = true;
  
  /* Error */
  public final fu a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 40	fv:a	Ljava/io/InputStream;
    //   4: ifnonnull +13 -> 17
    //   7: new 42	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc 44
    //   13: invokespecial 47	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: new 49	fy$e
    //   20: dup
    //   21: invokespecial 50	fy$e:<init>	()V
    //   24: astore 5
    //   26: aload_0
    //   27: getfield 22	fv:b	Ljava/lang/Integer;
    //   30: astore 6
    //   32: aload_0
    //   33: getfield 24	fv:c	Ljava/lang/Integer;
    //   36: astore 7
    //   38: aload_0
    //   39: getfield 32	fv:g	Z
    //   42: istore 4
    //   44: aload 5
    //   46: aload 6
    //   48: putfield 53	fy$e:u	Ljava/lang/Integer;
    //   51: aload 5
    //   53: aload 7
    //   55: putfield 56	fy$e:v	Ljava/lang/Integer;
    //   58: aload 7
    //   60: ifnull +217 -> 277
    //   63: iload 4
    //   65: ifeq +212 -> 277
    //   68: aload 5
    //   70: aload 7
    //   72: invokevirtual 62	java/lang/Integer:intValue	()I
    //   75: bipush 24
    //   77: ishr
    //   78: sipush 255
    //   81: iand
    //   82: i2f
    //   83: ldc 63
    //   85: fdiv
    //   86: invokestatic 69	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   89: putfield 73	fy$e:w	Ljava/lang/Float;
    //   92: aload 5
    //   94: aload_0
    //   95: getfield 30	fv:f	Z
    //   98: putfield 76	fy$e:x	Z
    //   101: aload_0
    //   102: getfield 26	fv:d	Landroid/graphics/ColorFilter;
    //   105: ifnull +16 -> 121
    //   108: aload 5
    //   110: getfield 79	fy$e:c	Landroid/graphics/Paint;
    //   113: aload_0
    //   114: getfield 26	fv:d	Landroid/graphics/ColorFilter;
    //   117: invokevirtual 85	android/graphics/Paint:setColorFilter	(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    //   120: pop
    //   121: aload_0
    //   122: getfield 28	fv:e	Landroid/graphics/ColorFilter;
    //   125: ifnull +16 -> 141
    //   128: aload 5
    //   130: getfield 87	fy$e:g	Landroid/graphics/Paint;
    //   133: aload_0
    //   134: getfield 28	fv:e	Landroid/graphics/ColorFilter;
    //   137: invokevirtual 85	android/graphics/Paint:setColorFilter	(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    //   140: pop
    //   141: aload_0
    //   142: getfield 40	fv:a	Ljava/io/InputStream;
    //   145: invokevirtual 93	java/io/InputStream:markSupported	()Z
    //   148: ifne +18 -> 166
    //   151: aload_0
    //   152: new 95	java/io/BufferedInputStream
    //   155: dup
    //   156: aload_0
    //   157: getfield 40	fv:a	Ljava/io/InputStream;
    //   160: invokespecial 98	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   163: putfield 40	fv:a	Ljava/io/InputStream;
    //   166: aload_0
    //   167: getfield 40	fv:a	Ljava/io/InputStream;
    //   170: iconst_4
    //   171: invokevirtual 102	java/io/InputStream:mark	(I)V
    //   174: iconst_2
    //   175: newarray <illegal type>
    //   177: astore 6
    //   179: aload_0
    //   180: getfield 40	fv:a	Ljava/io/InputStream;
    //   183: aload 6
    //   185: iconst_0
    //   186: iconst_2
    //   187: invokevirtual 106	java/io/InputStream:read	([BII)I
    //   190: istore_1
    //   191: aload 6
    //   193: iconst_0
    //   194: baload
    //   195: istore_2
    //   196: aload 6
    //   198: iconst_1
    //   199: baload
    //   200: istore_3
    //   201: aload_0
    //   202: getfield 40	fv:a	Ljava/io/InputStream;
    //   205: invokevirtual 109	java/io/InputStream:reset	()V
    //   208: iload_1
    //   209: iconst_2
    //   210: if_icmpne +32 -> 242
    //   213: iload_3
    //   214: bipush 8
    //   216: ishl
    //   217: iload_2
    //   218: iadd
    //   219: ldc 110
    //   221: iand
    //   222: ldc 111
    //   224: if_icmpne +18 -> 242
    //   227: aload_0
    //   228: new 113	java/util/zip/GZIPInputStream
    //   231: dup
    //   232: aload_0
    //   233: getfield 40	fv:a	Ljava/io/InputStream;
    //   236: invokespecial 114	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   239: putfield 40	fv:a	Ljava/io/InputStream;
    //   242: new 116	org/xml/sax/InputSource
    //   245: dup
    //   246: aload_0
    //   247: getfield 40	fv:a	Ljava/io/InputStream;
    //   250: invokespecial 117	org/xml/sax/InputSource:<init>	(Ljava/io/InputStream;)V
    //   253: aload 5
    //   255: invokestatic 122	fy:a	(Lorg/xml/sax/InputSource;Lfy$e;)Lfu;
    //   258: astore 5
    //   260: aload_0
    //   261: getfield 34	fv:h	Z
    //   264: ifeq +10 -> 274
    //   267: aload_0
    //   268: getfield 40	fv:a	Ljava/io/InputStream;
    //   271: invokevirtual 125	java/io/InputStream:close	()V
    //   274: aload 5
    //   276: areturn
    //   277: aload 5
    //   279: aconst_null
    //   280: putfield 73	fy$e:w	Ljava/lang/Float;
    //   283: goto -191 -> 92
    //   286: astore 5
    //   288: aload_0
    //   289: getfield 34	fv:h	Z
    //   292: ifeq +10 -> 302
    //   295: aload_0
    //   296: getfield 40	fv:a	Ljava/io/InputStream;
    //   299: invokevirtual 125	java/io/InputStream:close	()V
    //   302: aload 5
    //   304: athrow
    //   305: astore 5
    //   307: new 127	fx
    //   310: dup
    //   311: aload 5
    //   313: invokespecial 130	fx:<init>	(Ljava/lang/Throwable;)V
    //   316: athrow
    //   317: astore 6
    //   319: goto -17 -> 302
    //   322: astore 6
    //   324: aload 5
    //   326: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	327	0	this	fv
    //   190	21	1	i	int
    //   195	24	2	j	int
    //   200	17	3	k	int
    //   42	22	4	bool	boolean
    //   24	254	5	localObject1	Object
    //   286	17	5	localObject2	Object
    //   305	20	5	localIOException1	java.io.IOException
    //   30	167	6	localObject3	Object
    //   317	1	6	localIOException2	java.io.IOException
    //   322	1	6	localIOException3	java.io.IOException
    //   36	35	7	localInteger	Integer
    // Exception table:
    //   from	to	target	type
    //   17	58	286	finally
    //   68	92	286	finally
    //   92	121	286	finally
    //   121	141	286	finally
    //   141	166	286	finally
    //   166	191	286	finally
    //   201	208	286	finally
    //   227	242	286	finally
    //   242	260	286	finally
    //   277	283	286	finally
    //   307	317	286	finally
    //   166	191	305	java/io/IOException
    //   201	208	305	java/io/IOException
    //   227	242	305	java/io/IOException
    //   295	302	317	java/io/IOException
    //   267	274	322	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */