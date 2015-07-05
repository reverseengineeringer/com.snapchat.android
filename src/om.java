import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class om
  extends ot
{
  private static final String CAPTCHA_ID_PREFIX = "filename=";
  private static final String CAPTCHA_ID_SUFFIX = ".zip";
  private static final String HEADER_NAME = "Content-Disposition";
  private static final String TAG = "GetCaptchaTask";
  private static final String TASK_NAME = "GetCaptchaTask";
  private String mCaptchaId;
  private Context mContext = SnapchatApplication.b();
  private List<om.a> mImages;
  private om.b mInterface;
  
  public om(om.b paramb)
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
  
  protected final void a(aku paramaku)
  {
    super.a(paramaku);
    if ((mCaptchaId != null) && (mImages.size() == 9))
    {
      paramaku = new ArrayList();
      Iterator localIterator = mImages.iterator();
      while (localIterator.hasNext()) {
        paramaku.add(nextmBitmap);
      }
      mInterface.a(mCaptchaId, paramaku);
      return;
    }
    mInterface.a();
  }
  
  /* Error */
  public final void a(blu paramblu, bmd parambmd)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 106	blu:a	()Ljava/util/Set;
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
    //   37: invokestatic 117	aui:c	(Ljava/lang/String;Ljava/lang/String;)Z
    //   40: ifeq -29 -> 11
    //   43: aload_1
    //   44: aload 5
    //   46: invokevirtual 120	blu:a	(Ljava/lang/String;)Ljava/lang/String;
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
    //   74: putfield 65	om:mCaptchaId	Ljava/lang/String;
    //   77: aload_0
    //   78: getfield 65	om:mCaptchaId	Ljava/lang/String;
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
    //   100: invokevirtual 106	blu:a	()Ljava/util/Set;
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
    //   149: invokevirtual 120	blu:a	(Ljava/lang/String;)Ljava/lang/String;
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
    //   197: invokevirtual 174	com/snapchat/android/analytics/framework/EasyMetric:d	()V
    //   200: return
    //   201: new 176	java/util/zip/ZipInputStream
    //   204: dup
    //   205: aload_2
    //   206: invokevirtual 181	bmd:c	()Ljava/io/InputStream;
    //   209: invokespecial 184	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   212: astore_1
    //   213: aload_1
    //   214: invokevirtual 188	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   217: astore_2
    //   218: aload_2
    //   219: ifnull +142 -> 361
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
    //   252: if_icmpeq +71 -> 323
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
    //   275: ldc 25
    //   277: aload_1
    //   278: invokestatic 212	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   281: aload_0
    //   282: getfield 56	om:mImages	Ljava/util/List;
    //   285: invokeinterface 71 1 0
    //   290: bipush 9
    //   292: if_icmpeq +15 -> 307
    //   295: new 161	com/snapchat/android/analytics/framework/ErrorMetric
    //   298: dup
    //   299: ldc -42
    //   301: invokespecial 166	com/snapchat/android/analytics/framework/ErrorMetric:<init>	(Ljava/lang/String;)V
    //   304: invokevirtual 215	com/snapchat/android/analytics/framework/ErrorMetric:d	()V
    //   307: aload_0
    //   308: getfield 56	om:mImages	Ljava/util/List;
    //   311: new 6	om$1
    //   314: dup
    //   315: aload_0
    //   316: invokespecial 218	om$1:<init>	(Lom;)V
    //   319: invokestatic 224	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   322: return
    //   323: aload_0
    //   324: getfield 46	om:mContext	Landroid/content/Context;
    //   327: aload 4
    //   329: invokevirtual 228	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   332: invokestatic 233	aur:a	(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    //   335: astore 4
    //   337: aload_0
    //   338: getfield 56	om:mImages	Ljava/util/List;
    //   341: new 8	om$a
    //   344: dup
    //   345: aload_0
    //   346: aload_2
    //   347: aload 4
    //   349: invokespecial 236	om$a:<init>	(Lom;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    //   352: invokeinterface 93 2 0
    //   357: pop
    //   358: goto -145 -> 213
    //   361: aload_1
    //   362: invokevirtual 207	java/util/zip/ZipInputStream:close	()V
    //   365: goto -84 -> 281
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	368	0	this	om
    //   0	368	1	paramblu	blu
    //   0	368	2	parambmd	bmd
    //   249	12	3	i	int
    //   9	339	4	localObject1	Object
    //   31	227	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   213	218	267	finally
    //   222	243	267	finally
    //   243	250	267	finally
    //   255	264	267	finally
    //   323	358	267	finally
    //   201	213	274	java/io/IOException
    //   268	274	274	java/io/IOException
    //   361	365	274	java/io/IOException
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
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
 * Qualified Name:     om
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */