import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class pd
  extends pk
{
  private static final String CAPTCHA_ID_PREFIX = "filename=";
  private static final String CAPTCHA_ID_SUFFIX = ".zip";
  private static final String HEADER_NAME = "Content-Disposition";
  private static final String TAG = "GetCaptchaTask";
  private static final String TASK_NAME = "GetCaptchaTask";
  private String mCaptchaId;
  private Context mContext = SnapchatApplication.b();
  private List<pd.a> mImages;
  private pd.b mInterface;
  
  public pd(pd.b paramb)
  {
    if (mContext == null) {
      throw new NullPointerException();
    }
    if (paramb == null) {
      throw new NullPointerException();
    }
    mInterface = paramb;
    mImages = new ArrayList();
  }
  
  protected final String a()
  {
    return "/bq/get_captcha";
  }
  
  protected final void a(alp paramalp)
  {
    super.a(paramalp);
    if ((mCaptchaId != null) && (mImages.size() == 9))
    {
      paramalp = new ArrayList();
      Iterator localIterator = mImages.iterator();
      while (localIterator.hasNext()) {
        paramalp.add(nextmBitmap);
      }
      mInterface.a(mCaptchaId, paramalp);
      return;
    }
    mInterface.a();
  }
  
  /* Error */
  public final void a(bmv parambmv, bne parambne)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 106	bmv:a	()Ljava/util/Set;
    //   4: invokeinterface 109 1 0
    //   9: astore 4
    //   11: aload 4
    //   13: invokeinterface 81 1 0
    //   18: ifeq +59 -> 77
    //   21: aload 4
    //   23: invokeinterface 85 1 0
    //   28: checkcast 111	java/lang/String
    //   31: astore 5
    //   33: aload 5
    //   35: ldc 22
    //   37: invokestatic 117	avg:c	(Ljava/lang/String;Ljava/lang/String;)Z
    //   40: ifeq -29 -> 11
    //   43: aload_1
    //   44: aload 5
    //   46: invokevirtual 120	bmv:a	(Ljava/lang/String;)Ljava/lang/String;
    //   49: astore 4
    //   51: aload_0
    //   52: aload 4
    //   54: aload 4
    //   56: ldc 16
    //   58: invokevirtual 124	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   61: bipush 9
    //   63: iadd
    //   64: aload 4
    //   66: ldc 19
    //   68: invokevirtual 124	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   71: invokevirtual 128	java/lang/String:substring	(II)Ljava/lang/String;
    //   74: putfield 65	pd:mCaptchaId	Ljava/lang/String;
    //   77: aload_0
    //   78: getfield 65	pd:mCaptchaId	Ljava/lang/String;
    //   81: ifnonnull +120 -> 201
    //   84: new 130	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 131	java/lang/StringBuilder:<init>	()V
    //   91: astore_2
    //   92: aload_2
    //   93: ldc -123
    //   95: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: pop
    //   99: aload_1
    //   100: invokevirtual 106	bmv:a	()Ljava/util/Set;
    //   103: invokeinterface 109 1 0
    //   108: astore 4
    //   110: aload 4
    //   112: invokeinterface 81 1 0
    //   117: ifeq +46 -> 163
    //   120: aload 4
    //   122: invokeinterface 85 1 0
    //   127: checkcast 111	java/lang/String
    //   130: astore 5
    //   132: aload_2
    //   133: ldc -117
    //   135: iconst_2
    //   136: anewarray 141	java/lang/Object
    //   139: dup
    //   140: iconst_0
    //   141: aload 5
    //   143: aastore
    //   144: dup
    //   145: iconst_1
    //   146: aload_1
    //   147: aload 5
    //   149: invokevirtual 120	bmv:a	(Ljava/lang/String;)Ljava/lang/String;
    //   152: aastore
    //   153: invokestatic 145	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   156: invokevirtual 137	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: pop
    //   160: goto -50 -> 110
    //   163: new 147	java/util/TreeMap
    //   166: dup
    //   167: invokespecial 148	java/util/TreeMap:<init>	()V
    //   170: astore_1
    //   171: aload_1
    //   172: ldc -106
    //   174: aload_2
    //   175: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokeinterface 159 3 0
    //   183: pop
    //   184: new 161	com/snapchat/android/analytics/framework/ErrorMetric
    //   187: dup
    //   188: ldc -93
    //   190: invokespecial 166	com/snapchat/android/analytics/framework/ErrorMetric:<init>	(Ljava/lang/String;)V
    //   193: aload_1
    //   194: invokevirtual 169	com/snapchat/android/analytics/framework/ErrorMetric:a	(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    //   197: invokevirtual 174	com/snapchat/android/analytics/framework/EasyMetric:e	()V
    //   200: return
    //   201: new 176	java/util/zip/ZipInputStream
    //   204: dup
    //   205: aload_2
    //   206: invokevirtual 181	bne:c	()Ljava/io/InputStream;
    //   209: invokespecial 184	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   212: astore_1
    //   213: aload_1
    //   214: invokevirtual 188	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   217: astore_2
    //   218: aload_2
    //   219: ifnull +136 -> 355
    //   222: aload_2
    //   223: invokevirtual 193	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   226: astore_2
    //   227: new 195	java/io/ByteArrayOutputStream
    //   230: dup
    //   231: invokespecial 196	java/io/ByteArrayOutputStream:<init>	()V
    //   234: astore 4
    //   236: sipush 1024
    //   239: newarray <illegal type>
    //   241: astore 5
    //   243: aload_1
    //   244: aload 5
    //   246: invokevirtual 200	java/util/zip/ZipInputStream:read	([B)I
    //   249: istore_3
    //   250: iload_3
    //   251: iconst_m1
    //   252: if_icmpeq +65 -> 317
    //   255: aload 4
    //   257: aload 5
    //   259: iconst_0
    //   260: iload_3
    //   261: invokevirtual 204	java/io/ByteArrayOutputStream:write	([BII)V
    //   264: goto -21 -> 243
    //   267: astore_2
    //   268: aload_1
    //   269: invokevirtual 207	java/util/zip/ZipInputStream:close	()V
    //   272: aload_2
    //   273: athrow
    //   274: astore_1
    //   275: aload_0
    //   276: getfield 56	pd:mImages	Ljava/util/List;
    //   279: invokeinterface 71 1 0
    //   284: bipush 9
    //   286: if_icmpeq +15 -> 301
    //   289: new 161	com/snapchat/android/analytics/framework/ErrorMetric
    //   292: dup
    //   293: ldc -47
    //   295: invokespecial 166	com/snapchat/android/analytics/framework/ErrorMetric:<init>	(Ljava/lang/String;)V
    //   298: invokevirtual 210	com/snapchat/android/analytics/framework/ErrorMetric:e	()V
    //   301: aload_0
    //   302: getfield 56	pd:mImages	Ljava/util/List;
    //   305: new 6	pd$1
    //   308: dup
    //   309: aload_0
    //   310: invokespecial 213	pd$1:<init>	(Lpd;)V
    //   313: invokestatic 219	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   316: return
    //   317: aload_0
    //   318: getfield 46	pd:mContext	Landroid/content/Context;
    //   321: aload 4
    //   323: invokevirtual 223	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   326: invokestatic 228	avp:a	(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    //   329: astore 4
    //   331: aload_0
    //   332: getfield 56	pd:mImages	Ljava/util/List;
    //   335: new 8	pd$a
    //   338: dup
    //   339: aload_0
    //   340: aload_2
    //   341: aload 4
    //   343: invokespecial 231	pd$a:<init>	(Lpd;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    //   346: invokeinterface 93 2 0
    //   351: pop
    //   352: goto -139 -> 213
    //   355: aload_1
    //   356: invokevirtual 207	java/util/zip/ZipInputStream:close	()V
    //   359: goto -84 -> 275
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	362	0	this	pd
    //   0	362	1	parambmv	bmv
    //   0	362	2	parambne	bne
    //   249	12	3	i	int
    //   9	333	4	localObject1	Object
    //   31	227	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   213	218	267	finally
    //   222	243	267	finally
    //   243	250	267	finally
    //   255	264	267	finally
    //   317	352	267	finally
    //   201	213	274	java/io/IOException
    //   268	274	274	java/io/IOException
    //   355	359	274	java/io/IOException
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", akr.l());
    return localBundle;
  }
  
  protected final String c()
  {
    return "GetCaptchaTask";
  }
  
  final class a
  {
    Bitmap mBitmap;
    String mName;
    
    a(String paramString, Bitmap paramBitmap)
    {
      mName = paramString;
      mBitmap = paramBitmap;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(String paramString, List<Bitmap> paramList);
  }
}

/* Location:
 * Qualified Name:     pd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */