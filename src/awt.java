import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.util.Random;

public final class awt
{
  private static final String TAG = "FileUtils";
  
  public static long a(String paramString)
  {
    return new File(paramString).length();
  }
  
  @Deprecated
  public static File a()
  {
    Object localObject = Environment.getExternalStorageDirectory().toString();
    localObject = new File((String)localObject + "/Snapchat");
    ((File)localObject).mkdirs();
    return (File)localObject;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return str + new Random().nextLong() + paramString1;
  }
  
  public static void a(Context paramContext, File paramFile)
  {
    paramFile = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(paramFile));
    try
    {
      paramContext.sendBroadcast(paramFile);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(@cgb File paramFile)
  {
    if (paramFile.isDirectory())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if ((arrayOfFile != null) && (arrayOfFile.length > 0))
      {
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          a(arrayOfFile[i]);
          i += 1;
        }
      }
    }
    paramFile.delete();
  }
  
  /* Error */
  @Deprecated
  @caq
  public static boolean a(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: new 17	java/io/File
    //   5: dup
    //   6: aload_1
    //   7: invokevirtual 106	android/net/Uri:getPath	()Ljava/lang/String;
    //   10: invokespecial 20	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore 4
    //   15: new 37	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   22: invokestatic 109	awt:b	()Ljava/lang/String;
    //   25: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc 111
    //   30: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: astore_1
    //   37: new 17	java/io/File
    //   40: dup
    //   41: invokestatic 113	awt:a	()Ljava/io/File;
    //   44: aload_1
    //   45: invokespecial 116	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   48: astore_1
    //   49: new 118	java/io/FileInputStream
    //   52: dup
    //   53: aload 4
    //   55: invokespecial 120	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   58: invokevirtual 124	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   61: astore 4
    //   63: new 126	java/io/FileOutputStream
    //   66: dup
    //   67: aload_1
    //   68: invokespecial 127	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   71: invokevirtual 128	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   74: astore 5
    //   76: aload 4
    //   78: lconst_0
    //   79: aload 4
    //   81: invokevirtual 133	java/nio/channels/FileChannel:size	()J
    //   84: aload 5
    //   86: invokevirtual 137	java/nio/channels/FileChannel:transferTo	(JJLjava/nio/channels/WritableByteChannel;)J
    //   89: pop2
    //   90: aload 4
    //   92: ifnull +8 -> 100
    //   95: aload 4
    //   97: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   100: iload_3
    //   101: istore_2
    //   102: aload 5
    //   104: ifnull +10 -> 114
    //   107: aload 5
    //   109: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   112: iload_3
    //   113: istore_2
    //   114: aload_0
    //   115: aload_1
    //   116: invokestatic 142	awt:a	(Landroid/content/Context;Ljava/io/File;)V
    //   119: iload_2
    //   120: ireturn
    //   121: astore 6
    //   123: ldc 8
    //   125: new 37	java/lang/StringBuilder
    //   128: dup
    //   129: ldc -112
    //   131: invokespecial 145	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload 6
    //   136: invokevirtual 148	java/io/IOException:getMessage	()Ljava/lang/String;
    //   139: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 45	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: iconst_0
    //   146: anewarray 4	java/lang/Object
    //   149: invokestatic 154	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   152: aload 4
    //   154: ifnull +8 -> 162
    //   157: aload 4
    //   159: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   162: iload_3
    //   163: istore_2
    //   164: aload 5
    //   166: ifnull -52 -> 114
    //   169: aload 5
    //   171: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   174: iload_3
    //   175: istore_2
    //   176: goto -62 -> 114
    //   179: astore 4
    //   181: ldc 8
    //   183: aload 4
    //   185: invokestatic 157	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: iconst_0
    //   189: istore_2
    //   190: goto -76 -> 114
    //   193: astore 6
    //   195: aload 4
    //   197: ifnull +8 -> 205
    //   200: aload 4
    //   202: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   205: aload 5
    //   207: ifnull +8 -> 215
    //   210: aload 5
    //   212: invokevirtual 140	java/nio/channels/FileChannel:close	()V
    //   215: aload 6
    //   217: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	paramContext	Context
    //   0	218	1	paramUri	Uri
    //   101	89	2	bool1	boolean
    //   1	174	3	bool2	boolean
    //   13	145	4	localObject1	Object
    //   179	22	4	localIOException1	java.io.IOException
    //   74	137	5	localFileChannel	java.nio.channels.FileChannel
    //   121	14	6	localIOException2	java.io.IOException
    //   193	23	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   76	90	121	java/io/IOException
    //   49	76	179	java/io/IOException
    //   95	100	179	java/io/IOException
    //   107	112	179	java/io/IOException
    //   157	162	179	java/io/IOException
    //   169	174	179	java/io/IOException
    //   200	205	179	java/io/IOException
    //   210	215	179	java/io/IOException
    //   215	218	179	java/io/IOException
    //   76	90	193	finally
    //   123	152	193	finally
  }
  
  @Deprecated
  public static String b()
  {
    return "Snapchat-" + new Random().nextLong();
  }
}

/* Location:
 * Qualified Name:     awt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */