package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

final class DocumentsContractApi21
{
  private static final String TAG = "DocumentFile";
  
  private static void closeQuietly(AutoCloseable paramAutoCloseable)
  {
    if (paramAutoCloseable != null) {}
    try
    {
      paramAutoCloseable.close();
      return;
    }
    catch (RuntimeException paramAutoCloseable)
    {
      throw paramAutoCloseable;
    }
    catch (Exception paramAutoCloseable) {}
  }
  
  public static Uri createDirectory(Context paramContext, Uri paramUri, String paramString)
  {
    return createFile(paramContext, paramUri, "vnd.android.document/directory", paramString);
  }
  
  public static Uri createFile(Context paramContext, Uri paramUri, String paramString1, String paramString2)
  {
    return DocumentsContract.createDocument(paramContext.getContentResolver(), paramUri, paramString1, paramString2);
  }
  
  /* Error */
  public static Uri[] listFiles(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 38	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_1
    //   6: aload_1
    //   7: invokestatic 50	android/provider/DocumentsContract:getDocumentId	(Landroid/net/Uri;)Ljava/lang/String;
    //   10: invokestatic 54	android/provider/DocumentsContract:buildChildDocumentsUriUsingTree	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   13: astore_2
    //   14: new 56	java/util/ArrayList
    //   17: dup
    //   18: invokespecial 57	java/util/ArrayList:<init>	()V
    //   21: astore_3
    //   22: aload_0
    //   23: aload_2
    //   24: iconst_1
    //   25: anewarray 59	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc 61
    //   32: aastore
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: invokevirtual 67	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_2
    //   40: aload_2
    //   41: astore_0
    //   42: aload_2
    //   43: invokeinterface 73 1 0
    //   48: ifeq +60 -> 108
    //   51: aload_2
    //   52: astore_0
    //   53: aload_3
    //   54: aload_1
    //   55: aload_2
    //   56: iconst_0
    //   57: invokeinterface 77 2 0
    //   62: invokestatic 80	android/provider/DocumentsContract:buildDocumentUriUsingTree	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   65: invokevirtual 84	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   68: pop
    //   69: goto -29 -> 40
    //   72: astore_1
    //   73: aload_2
    //   74: astore_0
    //   75: new 86	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 88
    //   81: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload_1
    //   85: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   88: pop
    //   89: aload_2
    //   90: invokestatic 97	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   93: aload_3
    //   94: aload_3
    //   95: invokevirtual 101	java/util/ArrayList:size	()I
    //   98: anewarray 103	android/net/Uri
    //   101: invokevirtual 107	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   104: checkcast 109	[Landroid/net/Uri;
    //   107: areturn
    //   108: aload_2
    //   109: invokestatic 97	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   112: goto -19 -> 93
    //   115: astore_1
    //   116: aconst_null
    //   117: astore_0
    //   118: aload_0
    //   119: invokestatic 97	android/support/v4/provider/DocumentsContractApi21:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   122: aload_1
    //   123: athrow
    //   124: astore_1
    //   125: goto -7 -> 118
    //   128: astore_1
    //   129: aconst_null
    //   130: astore_2
    //   131: goto -58 -> 73
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	paramContext	Context
    //   0	134	1	paramUri	Uri
    //   13	118	2	localObject	Object
    //   21	74	3	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   42	51	72	java/lang/Exception
    //   53	69	72	java/lang/Exception
    //   22	40	115	finally
    //   42	51	124	finally
    //   53	69	124	finally
    //   75	89	124	finally
    //   22	40	128	java/lang/Exception
  }
  
  public static Uri prepareTreeUri(Uri paramUri)
  {
    return DocumentsContract.buildDocumentUriUsingTree(paramUri, DocumentsContract.getTreeDocumentId(paramUri));
  }
  
  public static Uri renameTo(Context paramContext, Uri paramUri, String paramString)
  {
    return DocumentsContract.renameDocument(paramContext.getContentResolver(), paramUri, paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.DocumentsContractApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */