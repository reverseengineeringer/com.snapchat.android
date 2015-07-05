package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;

final class DocumentsContractApi19
{
  private static final String TAG = "DocumentFile";
  
  public static boolean canRead(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 1) != 0) {}
    while (TextUtils.isEmpty(queryForString$510a9928(paramContext, paramUri, "mime_type"))) {
      return false;
    }
    return true;
  }
  
  public static boolean canWrite(Context paramContext, Uri paramUri)
  {
    if (paramContext.checkCallingOrSelfUriPermission(paramUri, 2) != 0) {}
    String str;
    int i;
    do
    {
      do
      {
        return false;
        str = queryForString$510a9928(paramContext, paramUri, "mime_type");
        i = (int)queryForLong$34bc2a06(paramContext, paramUri, "flags");
      } while (TextUtils.isEmpty(str));
      if ((i & 0x4) != 0) {
        return true;
      }
      if (("vnd.android.document/directory".equals(str)) && ((i & 0x8) != 0)) {
        return true;
      }
    } while ((TextUtils.isEmpty(str)) || ((i & 0x2) == 0));
    return true;
  }
  
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
  
  public static boolean delete(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.deleteDocument(paramContext.getContentResolver(), paramUri);
  }
  
  /* Error */
  public static boolean exists(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 64	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 44	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 73
    //   15: aastore
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: invokevirtual 79	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   22: astore_1
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: invokeinterface 85 1 0
    //   31: istore_2
    //   32: iload_2
    //   33: ifle +11 -> 44
    //   36: iconst_1
    //   37: istore_3
    //   38: aload_1
    //   39: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   42: iload_3
    //   43: ireturn
    //   44: iconst_0
    //   45: istore_3
    //   46: goto -8 -> 38
    //   49: astore 4
    //   51: aconst_null
    //   52: astore_1
    //   53: aload_1
    //   54: astore_0
    //   55: new 89	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 91
    //   61: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload 4
    //   66: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload_1
    //   71: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   74: iconst_0
    //   75: ireturn
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_0
    //   79: aload_0
    //   80: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: goto -7 -> 79
    //   89: astore 4
    //   91: goto -38 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramContext	Context
    //   0	94	1	paramUri	Uri
    //   31	2	2	i	int
    //   37	9	3	bool	boolean
    //   49	16	4	localException1	Exception
    //   89	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   5	23	49	java/lang/Exception
    //   5	23	76	finally
    //   25	32	85	finally
    //   55	70	85	finally
    //   25	32	89	java/lang/Exception
  }
  
  public static String getName(Context paramContext, Uri paramUri)
  {
    return queryForString$510a9928(paramContext, paramUri, "_display_name");
  }
  
  private static String getRawType(Context paramContext, Uri paramUri)
  {
    return queryForString$510a9928(paramContext, paramUri, "mime_type");
  }
  
  public static String getType(Context paramContext, Uri paramUri)
  {
    paramUri = queryForString$510a9928(paramContext, paramUri, "mime_type");
    paramContext = paramUri;
    if ("vnd.android.document/directory".equals(paramUri)) {
      paramContext = null;
    }
    return paramContext;
  }
  
  public static boolean isDirectory(Context paramContext, Uri paramUri)
  {
    return "vnd.android.document/directory".equals(queryForString$510a9928(paramContext, paramUri, "mime_type"));
  }
  
  public static boolean isDocumentUri(Context paramContext, Uri paramUri)
  {
    return DocumentsContract.isDocumentUri(paramContext, paramUri);
  }
  
  public static boolean isFile(Context paramContext, Uri paramUri)
  {
    paramContext = queryForString$510a9928(paramContext, paramUri, "mime_type");
    return (!"vnd.android.document/directory".equals(paramContext)) && (!TextUtils.isEmpty(paramContext));
  }
  
  public static long lastModified(Context paramContext, Uri paramUri)
  {
    return queryForLong$34bc2a06(paramContext, paramUri, "last_modified");
  }
  
  public static long length(Context paramContext, Uri paramUri)
  {
    return queryForLong$34bc2a06(paramContext, paramUri, "_size");
  }
  
  private static int queryForInt$34bc2dc8(Context paramContext, Uri paramUri, String paramString)
  {
    return (int)queryForLong$34bc2a06(paramContext, paramUri, paramString);
  }
  
  /* Error */
  private static long queryForLong$34bc2a06(Context paramContext, Uri paramUri, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 64	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 44	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_2
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 79	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_0
    //   22: aload_0
    //   23: invokeinterface 122 1 0
    //   28: ifeq +27 -> 55
    //   31: aload_0
    //   32: iconst_0
    //   33: invokeinterface 126 2 0
    //   38: ifne +17 -> 55
    //   41: aload_0
    //   42: iconst_0
    //   43: invokeinterface 130 2 0
    //   48: lstore_3
    //   49: aload_0
    //   50: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   53: lload_3
    //   54: lreturn
    //   55: aload_0
    //   56: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   59: lconst_0
    //   60: lreturn
    //   61: astore_1
    //   62: aconst_null
    //   63: astore_0
    //   64: new 89	java/lang/StringBuilder
    //   67: dup
    //   68: ldc 91
    //   70: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: aload_1
    //   74: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: aload_0
    //   79: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   82: lconst_0
    //   83: lreturn
    //   84: astore_1
    //   85: aconst_null
    //   86: astore_0
    //   87: aload_0
    //   88: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   91: aload_1
    //   92: athrow
    //   93: astore_1
    //   94: goto -7 -> 87
    //   97: astore_1
    //   98: goto -11 -> 87
    //   101: astore_1
    //   102: goto -38 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	paramContext	Context
    //   0	105	1	paramUri	Uri
    //   0	105	2	paramString	String
    //   48	6	3	l	long
    // Exception table:
    //   from	to	target	type
    //   5	22	61	java/lang/Exception
    //   5	22	84	finally
    //   22	49	93	finally
    //   64	78	97	finally
    //   22	49	101	java/lang/Exception
  }
  
  /* Error */
  private static String queryForString$510a9928(Context paramContext, Uri paramUri, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 64	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore_0
    //   5: aload_0
    //   6: aload_1
    //   7: iconst_1
    //   8: anewarray 44	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: aload_2
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 79	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_1
    //   22: aload_1
    //   23: astore_0
    //   24: aload_1
    //   25: invokeinterface 122 1 0
    //   30: ifeq +31 -> 61
    //   33: aload_1
    //   34: astore_0
    //   35: aload_1
    //   36: iconst_0
    //   37: invokeinterface 126 2 0
    //   42: ifne +19 -> 61
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: iconst_0
    //   49: invokeinterface 134 2 0
    //   54: astore_2
    //   55: aload_1
    //   56: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   59: aload_2
    //   60: areturn
    //   61: aload_1
    //   62: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   65: aconst_null
    //   66: areturn
    //   67: astore_2
    //   68: aconst_null
    //   69: astore_1
    //   70: aload_1
    //   71: astore_0
    //   72: new 89	java/lang/StringBuilder
    //   75: dup
    //   76: ldc 91
    //   78: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_2
    //   82: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: aload_1
    //   87: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   90: aconst_null
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_0
    //   95: aload_0
    //   96: invokestatic 87	android/support/v4/provider/DocumentsContractApi19:closeQuietly	(Ljava/lang/AutoCloseable;)V
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: goto -7 -> 95
    //   105: astore_2
    //   106: goto -36 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	paramContext	Context
    //   0	109	1	paramUri	Uri
    //   0	109	2	paramString	String
    // Exception table:
    //   from	to	target	type
    //   5	22	67	java/lang/Exception
    //   5	22	92	finally
    //   24	33	101	finally
    //   35	45	101	finally
    //   47	55	101	finally
    //   72	86	101	finally
    //   24	33	105	java/lang/Exception
    //   35	45	105	java/lang/Exception
    //   47	55	105	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     android.support.v4.provider.DocumentsContractApi19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */