package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;

public final class EntityUtils
{
  public static void consume(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null) {}
    do
    {
      do
      {
        return;
      } while (!paramHttpEntity.isStreaming());
      paramHttpEntity = paramHttpEntity.getContent();
    } while (paramHttpEntity == null);
    paramHttpEntity.close();
  }
  
  public static void consumeQuietly(HttpEntity paramHttpEntity)
  {
    try
    {
      consume(paramHttpEntity);
      return;
    }
    catch (IOException paramHttpEntity) {}
  }
  
  @Deprecated
  public static String getContentCharSet(HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpEntity, "Entity");
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramHttpEntity.getContentType() != null)
    {
      paramHttpEntity = paramHttpEntity.getContentType().getElements();
      localObject1 = localObject2;
      if (paramHttpEntity.length > 0)
      {
        paramHttpEntity = paramHttpEntity[0].getParameterByName("charset");
        localObject1 = localObject2;
        if (paramHttpEntity != null) {
          localObject1 = paramHttpEntity.getValue();
        }
      }
    }
    return (String)localObject1;
  }
  
  @Deprecated
  public static String getContentMimeType(HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpEntity, "Entity");
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramHttpEntity.getContentType() != null)
    {
      paramHttpEntity = paramHttpEntity.getContentType().getElements();
      localObject1 = localObject2;
      if (paramHttpEntity.length > 0) {
        localObject1 = paramHttpEntity[0].getName();
      }
    }
    return (String)localObject1;
  }
  
  public static byte[] toByteArray(HttpEntity paramHttpEntity)
  {
    int i = 4096;
    boolean bool = false;
    Args.notNull(paramHttpEntity, "Entity");
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null) {
      return null;
    }
    for (;;)
    {
      int j;
      try
      {
        if (paramHttpEntity.getContentLength() <= 2147483647L) {
          bool = true;
        }
        Args.check(bool, "HTTP entity too large to be buffered in memory");
        j = (int)paramHttpEntity.getContentLength();
        if (j >= 0) {
          break label121;
        }
        paramHttpEntity = new ByteArrayBuffer(i);
        byte[] arrayOfByte = new byte['က'];
        i = localInputStream.read(arrayOfByte);
        if (i != -1)
        {
          paramHttpEntity.append(arrayOfByte, 0, i);
          continue;
        }
        paramHttpEntity = paramHttpEntity.toByteArray();
      }
      finally
      {
        localInputStream.close();
      }
      localInputStream.close();
      return paramHttpEntity;
      label121:
      i = j;
    }
  }
  
  public static String toString(HttpEntity paramHttpEntity)
  {
    return toString(paramHttpEntity, null);
  }
  
  public static String toString(HttpEntity paramHttpEntity, String paramString)
  {
    if (paramString != null) {}
    for (paramString = Charset.forName(paramString);; paramString = null) {
      return toString(paramHttpEntity, paramString);
    }
  }
  
  /* Error */
  public static String toString(HttpEntity paramHttpEntity, Charset paramCharset)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: iconst_0
    //   4: istore 4
    //   6: aload_0
    //   7: ldc 36
    //   9: invokestatic 42	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   12: pop
    //   13: aload_0
    //   14: invokeinterface 21 1 0
    //   19: astore 8
    //   21: aload 8
    //   23: ifnonnull +5 -> 28
    //   26: aconst_null
    //   27: areturn
    //   28: aload_0
    //   29: invokeinterface 77 1 0
    //   34: ldc2_w 78
    //   37: lcmp
    //   38: ifgt +6 -> 44
    //   41: iconst_1
    //   42: istore 4
    //   44: iload 4
    //   46: ldc 81
    //   48: invokestatic 85	org/apache/http/util/Args:check	(ZLjava/lang/String;)V
    //   51: aload_0
    //   52: invokeinterface 77 1 0
    //   57: lstore 5
    //   59: lload 5
    //   61: l2i
    //   62: istore_3
    //   63: iload_3
    //   64: istore_2
    //   65: iload_3
    //   66: ifge +7 -> 73
    //   69: sipush 4096
    //   72: istore_2
    //   73: aload_0
    //   74: invokestatic 120	org/apache/http/entity/ContentType:get	(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    //   77: astore 9
    //   79: aload 7
    //   81: astore_0
    //   82: aload 9
    //   84: ifnull +9 -> 93
    //   87: aload 9
    //   89: invokevirtual 124	org/apache/http/entity/ContentType:getCharset	()Ljava/nio/charset/Charset;
    //   92: astore_0
    //   93: aload_0
    //   94: astore 7
    //   96: aload_0
    //   97: ifnonnull +6 -> 103
    //   100: aload_1
    //   101: astore 7
    //   103: aload 7
    //   105: astore_0
    //   106: aload 7
    //   108: ifnonnull +7 -> 115
    //   111: getstatic 130	org/apache/http/protocol/HTTP:DEF_CONTENT_CHARSET	Ljava/nio/charset/Charset;
    //   114: astore_0
    //   115: new 132	java/io/InputStreamReader
    //   118: dup
    //   119: aload 8
    //   121: aload_0
    //   122: invokespecial 135	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   125: astore_0
    //   126: new 137	org/apache/http/util/CharArrayBuffer
    //   129: dup
    //   130: iload_2
    //   131: invokespecial 138	org/apache/http/util/CharArrayBuffer:<init>	(I)V
    //   134: astore_1
    //   135: sipush 1024
    //   138: newarray <illegal type>
    //   140: astore 7
    //   142: aload_0
    //   143: aload 7
    //   145: invokevirtual 143	java/io/Reader:read	([C)I
    //   148: istore_2
    //   149: iload_2
    //   150: iconst_m1
    //   151: if_icmpeq +35 -> 186
    //   154: aload_1
    //   155: aload 7
    //   157: iconst_0
    //   158: iload_2
    //   159: invokevirtual 146	org/apache/http/util/CharArrayBuffer:append	([CII)V
    //   162: goto -20 -> 142
    //   165: astore_0
    //   166: aload 8
    //   168: invokevirtual 26	java/io/InputStream:close	()V
    //   171: aload_0
    //   172: athrow
    //   173: astore_0
    //   174: new 148	java/io/UnsupportedEncodingException
    //   177: dup
    //   178: aload_0
    //   179: invokevirtual 151	java/nio/charset/UnsupportedCharsetException:getMessage	()Ljava/lang/String;
    //   182: invokespecial 154	java/io/UnsupportedEncodingException:<init>	(Ljava/lang/String;)V
    //   185: athrow
    //   186: aload_1
    //   187: invokevirtual 156	org/apache/http/util/CharArrayBuffer:toString	()Ljava/lang/String;
    //   190: astore_0
    //   191: aload 8
    //   193: invokevirtual 26	java/io/InputStream:close	()V
    //   196: aload_0
    //   197: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	paramHttpEntity	HttpEntity
    //   0	198	1	paramCharset	Charset
    //   64	95	2	i	int
    //   62	4	3	j	int
    //   4	41	4	bool	boolean
    //   57	3	5	l	long
    //   1	155	7	localObject	Object
    //   19	173	8	localInputStream	InputStream
    //   77	11	9	localContentType	org.apache.http.entity.ContentType
    // Exception table:
    //   from	to	target	type
    //   28	41	165	finally
    //   44	59	165	finally
    //   73	79	165	finally
    //   87	93	165	finally
    //   111	115	165	finally
    //   115	142	165	finally
    //   142	149	165	finally
    //   154	162	165	finally
    //   174	186	165	finally
    //   186	191	165	finally
    //   73	79	173	java/nio/charset/UnsupportedCharsetException
    //   87	93	173	java/nio/charset/UnsupportedCharsetException
  }
  
  public static void updateEntity(HttpResponse paramHttpResponse, HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpResponse, "Response");
    consume(paramHttpResponse.getEntity());
    paramHttpResponse.setEntity(paramHttpEntity);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.util.EntityUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */