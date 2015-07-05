package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;

public class FileSystemUtils
{
  private static final String DF;
  private static final int INIT_PROBLEM = -1;
  private static final FileSystemUtils INSTANCE;
  private static final int OS;
  private static final int OTHER = 0;
  private static final int POSIX_UNIX = 3;
  private static final int UNIX = 2;
  private static final int WINDOWS = 1;
  
  static
  {
    int j = 3;
    INSTANCE = new FileSystemUtils();
    String str3 = "df";
    int i;
    String str2;
    try
    {
      String str1 = System.getProperty("os.name");
      if (str1 == null) {
        throw new IOException("os.name not found");
      }
    }
    catch (Exception localException)
    {
      i = -1;
      str2 = str3;
    }
    for (;;)
    {
      OS = i;
      DF = str2;
      return;
      String str4 = str2.toLowerCase(Locale.ENGLISH);
      if (str4.indexOf("windows") != -1)
      {
        i = 1;
        str2 = str3;
      }
      else
      {
        if ((str4.indexOf("linux") == -1) && (str4.indexOf("mpe/ix") == -1) && (str4.indexOf("freebsd") == -1) && (str4.indexOf("irix") == -1) && (str4.indexOf("digital unix") == -1) && (str4.indexOf("unix") == -1) && (str4.indexOf("mac os x") == -1))
        {
          if ((str4.indexOf("sun os") == -1) && (str4.indexOf("sunos") == -1) && (str4.indexOf("solaris") == -1))
          {
            str2 = str3;
            i = j;
            if (str4.indexOf("hp-ux") != -1) {
              continue;
            }
            int k = str4.indexOf("aix");
            str2 = str3;
            i = j;
            if (k != -1) {
              continue;
            }
            i = 0;
            str2 = str3;
          }
        }
        else
        {
          i = 2;
          str2 = str3;
          continue;
        }
        str2 = "/usr/xpg4/bin/df";
        i = j;
      }
    }
  }
  
  @Deprecated
  public static long freeSpace(String paramString)
  {
    return INSTANCE.freeSpaceOS(paramString, OS, false, -1L);
  }
  
  public static long freeSpaceKb()
  {
    return freeSpaceKb(-1L);
  }
  
  public static long freeSpaceKb(long paramLong)
  {
    return freeSpaceKb(new File(".").getAbsolutePath(), paramLong);
  }
  
  public static long freeSpaceKb(String paramString)
  {
    return freeSpaceKb(paramString, -1L);
  }
  
  public static long freeSpaceKb(String paramString, long paramLong)
  {
    return INSTANCE.freeSpaceOS(paramString, OS, true, paramLong);
  }
  
  long freeSpaceOS(String paramString, int paramInt, boolean paramBoolean, long paramLong)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Path must not be empty");
    }
    switch (paramInt)
    {
    default: 
      throw new IllegalStateException("Exception caught when determining operating system");
    case 1: 
      if (paramBoolean) {
        return freeSpaceWindows(paramString, paramLong) / 1024L;
      }
      return freeSpaceWindows(paramString, paramLong);
    case 2: 
      return freeSpaceUnix(paramString, paramBoolean, false, paramLong);
    case 3: 
      return freeSpaceUnix(paramString, paramBoolean, true, paramLong);
    }
    throw new IllegalStateException("Unsupported operating system");
  }
  
  long freeSpaceUnix(String paramString, boolean paramBoolean1, boolean paramBoolean2, long paramLong)
  {
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("Path must not be empty");
    }
    Object localObject1 = "-";
    if (paramBoolean1) {
      localObject1 = "-" + "k";
    }
    Object localObject2 = localObject1;
    if (paramBoolean2) {
      localObject2 = (String)localObject1 + "P";
    }
    if (((String)localObject2).length() > 1) {
      localObject1 = new String[] { DF, localObject2, paramString };
    }
    for (;;)
    {
      localObject2 = performCommand((String[])localObject1, 3, paramLong);
      if (((List)localObject2).size() >= 2) {
        break;
      }
      throw new IOException("Command line '" + DF + "' did not return info as expected for path '" + paramString + "'- response was " + localObject2);
      localObject1 = new String[2];
      localObject1[0] = DF;
      localObject1[1] = paramString;
    }
    localObject1 = new StringTokenizer((String)((List)localObject2).get(1), " ");
    if (((StringTokenizer)localObject1).countTokens() < 4) {
      if ((((StringTokenizer)localObject1).countTokens() == 1) && (((List)localObject2).size() >= 3)) {
        localObject1 = new StringTokenizer((String)((List)localObject2).get(2), " ");
      }
    }
    for (;;)
    {
      ((StringTokenizer)localObject1).nextToken();
      ((StringTokenizer)localObject1).nextToken();
      return parseBytes(((StringTokenizer)localObject1).nextToken(), paramString);
      throw new IOException("Command line '" + DF + "' did not return data as expected for path '" + paramString + "'- check path is valid");
      ((StringTokenizer)localObject1).nextToken();
    }
  }
  
  long freeSpaceWindows(String paramString, long paramLong)
  {
    paramString = FilenameUtils.normalize(paramString, false);
    if ((paramString.length() > 0) && (paramString.charAt(0) != '"')) {
      paramString = "\"" + paramString + "\"";
    }
    for (;;)
    {
      List localList = performCommand(new String[] { "cmd.exe", "/C", "dir /a /-c " + paramString }, Integer.MAX_VALUE, paramLong);
      int i = localList.size() - 1;
      while (i >= 0)
      {
        String str = (String)localList.get(i);
        if (str.length() > 0) {
          return parseDir(str, paramString);
        }
        i -= 1;
      }
      throw new IOException("Command line 'dir /-c' did not return any info for path '" + paramString + "'");
    }
  }
  
  Process openProcess(String[] paramArrayOfString)
  {
    return Runtime.getRuntime().exec(paramArrayOfString);
  }
  
  long parseBytes(String paramString1, String paramString2)
  {
    long l;
    try
    {
      l = Long.parseLong(paramString1);
      if (l < 0L) {
        throw new IOException("Command line '" + DF + "' did not find free space in response for path '" + paramString2 + "'- check path is valid");
      }
    }
    catch (NumberFormatException paramString1)
    {
      throw new IOExceptionWithCause("Command line '" + DF + "' did not return numeric data as expected for path '" + paramString2 + "'- check path is valid", paramString1);
    }
    return l;
  }
  
  long parseDir(String paramString1, String paramString2)
  {
    int m = 0;
    int i = paramString1.length() - 1;
    int j;
    if (i >= 0) {
      if (Character.isDigit(paramString1.charAt(i))) {
        j = i + 1;
      }
    }
    for (;;)
    {
      label34:
      if (i >= 0)
      {
        char c = paramString1.charAt(i);
        if ((Character.isDigit(c)) || (c == ',') || (c == '.')) {}
      }
      for (int k = i + 1;; k = 0)
      {
        if (i < 0)
        {
          throw new IOException("Command line 'dir /-c' did not return valid info for path '" + paramString2 + "'");
          i -= 1;
          break;
          i -= 1;
          break label34;
        }
        paramString1 = new StringBuilder(paramString1.substring(k, j));
        for (i = m; i < paramString1.length(); i = j + 1) {
          if (paramString1.charAt(i) != ',')
          {
            j = i;
            if (paramString1.charAt(i) != '.') {}
          }
          else
          {
            paramString1.deleteCharAt(i);
            j = i - 1;
          }
        }
        return parseBytes(paramString1.toString(), paramString2);
      }
      j = 0;
    }
  }
  
  /* Error */
  List<String> performCommand(String[] paramArrayOfString, int paramInt, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: new 283	java/util/ArrayList
    //   6: dup
    //   7: bipush 20
    //   9: invokespecial 286	java/util/ArrayList:<init>	(I)V
    //   12: astore 12
    //   14: lload_3
    //   15: invokestatic 292	org/apache/commons/io/ThreadMonitor:start	(J)Ljava/lang/Thread;
    //   18: astore 13
    //   20: aload_0
    //   21: aload_1
    //   22: invokevirtual 294	org/apache/commons/io/FileSystemUtils:openProcess	([Ljava/lang/String;)Ljava/lang/Process;
    //   25: astore 5
    //   27: aload 5
    //   29: invokevirtual 300	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   32: astore 7
    //   34: aload 5
    //   36: invokevirtual 304	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   39: astore 9
    //   41: aload 5
    //   43: invokevirtual 307	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   46: astore 8
    //   48: new 309	java/io/BufferedReader
    //   51: dup
    //   52: new 311	java/io/InputStreamReader
    //   55: dup
    //   56: aload 7
    //   58: invokespecial 314	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   61: invokespecial 317	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   64: astore 11
    //   66: aload 11
    //   68: invokevirtual 320	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   71: astore 6
    //   73: aload 6
    //   75: ifnull +43 -> 118
    //   78: aload 12
    //   80: invokeinterface 173 1 0
    //   85: iload_2
    //   86: if_icmpge +32 -> 118
    //   89: aload 12
    //   91: aload 6
    //   93: getstatic 56	java/util/Locale:ENGLISH	Ljava/util/Locale;
    //   96: invokevirtual 62	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   99: invokevirtual 323	java/lang/String:trim	()Ljava/lang/String;
    //   102: invokeinterface 327 2 0
    //   107: pop
    //   108: aload 11
    //   110: invokevirtual 320	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   113: astore 6
    //   115: goto -42 -> 73
    //   118: aload 5
    //   120: invokevirtual 330	java/lang/Process:waitFor	()I
    //   123: pop
    //   124: aload 13
    //   126: invokestatic 334	org/apache/commons/io/ThreadMonitor:stop	(Ljava/lang/Thread;)V
    //   129: aload 5
    //   131: invokevirtual 337	java/lang/Process:exitValue	()I
    //   134: ifeq +162 -> 296
    //   137: new 41	java/io/IOException
    //   140: dup
    //   141: new 152	java/lang/StringBuilder
    //   144: dup
    //   145: ldc_w 339
    //   148: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   151: aload 5
    //   153: invokevirtual 337	java/lang/Process:exitValue	()I
    //   156: invokevirtual 341	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   159: ldc_w 343
    //   162: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload_1
    //   166: invokestatic 349	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   169: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokespecial 46	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   178: athrow
    //   179: astore 12
    //   181: aload 8
    //   183: astore 10
    //   185: aload 9
    //   187: astore 6
    //   189: aload 5
    //   191: astore 8
    //   193: aload 11
    //   195: astore 5
    //   197: aload 12
    //   199: astore 9
    //   201: new 256	org/apache/commons/io/IOExceptionWithCause
    //   204: dup
    //   205: new 152	java/lang/StringBuilder
    //   208: dup
    //   209: ldc_w 351
    //   212: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload_1
    //   216: invokestatic 349	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   219: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   222: ldc_w 353
    //   225: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: lload_3
    //   229: invokevirtual 356	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   232: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   235: aload 9
    //   237: invokespecial 261	org/apache/commons/io/IOExceptionWithCause:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   240: athrow
    //   241: astore 11
    //   243: aload 10
    //   245: astore_1
    //   246: aload 8
    //   248: astore 10
    //   250: aload 6
    //   252: astore 9
    //   254: aload_1
    //   255: astore 8
    //   257: aload 5
    //   259: astore 6
    //   261: aload 11
    //   263: astore_1
    //   264: aload 7
    //   266: invokestatic 361	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   269: aload 9
    //   271: invokestatic 364	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   274: aload 8
    //   276: invokestatic 361	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   279: aload 6
    //   281: invokestatic 366	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Reader;)V
    //   284: aload 10
    //   286: ifnull +8 -> 294
    //   289: aload 10
    //   291: invokevirtual 369	java/lang/Process:destroy	()V
    //   294: aload_1
    //   295: athrow
    //   296: aload 12
    //   298: invokeinterface 373 1 0
    //   303: ifeq +43 -> 346
    //   306: new 41	java/io/IOException
    //   309: dup
    //   310: new 152	java/lang/StringBuilder
    //   313: dup
    //   314: ldc_w 375
    //   317: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   320: aload_1
    //   321: invokestatic 349	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   324: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   327: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokespecial 46	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   333: athrow
    //   334: astore_1
    //   335: aload 11
    //   337: astore 6
    //   339: aload 5
    //   341: astore 10
    //   343: goto -79 -> 264
    //   346: aload 7
    //   348: invokestatic 361	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   351: aload 9
    //   353: invokestatic 364	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   356: aload 8
    //   358: invokestatic 361	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   361: aload 11
    //   363: invokestatic 366	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Reader;)V
    //   366: aload 5
    //   368: ifnull +8 -> 376
    //   371: aload 5
    //   373: invokevirtual 369	java/lang/Process:destroy	()V
    //   376: aload 12
    //   378: areturn
    //   379: astore_1
    //   380: aconst_null
    //   381: astore 6
    //   383: aconst_null
    //   384: astore 8
    //   386: aconst_null
    //   387: astore 9
    //   389: aconst_null
    //   390: astore 7
    //   392: aconst_null
    //   393: astore 10
    //   395: goto -131 -> 264
    //   398: astore_1
    //   399: aconst_null
    //   400: astore 6
    //   402: aconst_null
    //   403: astore 8
    //   405: aconst_null
    //   406: astore 9
    //   408: aconst_null
    //   409: astore 7
    //   411: aload 5
    //   413: astore 10
    //   415: goto -151 -> 264
    //   418: astore_1
    //   419: aconst_null
    //   420: astore 6
    //   422: aconst_null
    //   423: astore 8
    //   425: aconst_null
    //   426: astore 9
    //   428: aload 5
    //   430: astore 10
    //   432: goto -168 -> 264
    //   435: astore_1
    //   436: aconst_null
    //   437: astore 6
    //   439: aconst_null
    //   440: astore 8
    //   442: aload 5
    //   444: astore 10
    //   446: goto -182 -> 264
    //   449: astore_1
    //   450: aconst_null
    //   451: astore 6
    //   453: aload 5
    //   455: astore 10
    //   457: goto -193 -> 264
    //   460: astore 9
    //   462: aconst_null
    //   463: astore 5
    //   465: aconst_null
    //   466: astore 6
    //   468: aconst_null
    //   469: astore 7
    //   471: aconst_null
    //   472: astore 8
    //   474: goto -273 -> 201
    //   477: astore 9
    //   479: aconst_null
    //   480: astore 11
    //   482: aconst_null
    //   483: astore 6
    //   485: aconst_null
    //   486: astore 7
    //   488: aload 5
    //   490: astore 8
    //   492: aload 11
    //   494: astore 5
    //   496: goto -295 -> 201
    //   499: astore 9
    //   501: aconst_null
    //   502: astore 11
    //   504: aconst_null
    //   505: astore 6
    //   507: aload 5
    //   509: astore 8
    //   511: aload 11
    //   513: astore 5
    //   515: goto -314 -> 201
    //   518: astore 12
    //   520: aconst_null
    //   521: astore 11
    //   523: aload 9
    //   525: astore 6
    //   527: aload 5
    //   529: astore 8
    //   531: aload 12
    //   533: astore 9
    //   535: aload 11
    //   537: astore 5
    //   539: goto -338 -> 201
    //   542: astore 12
    //   544: aconst_null
    //   545: astore 10
    //   547: aload 9
    //   549: astore 6
    //   551: aload 5
    //   553: astore 11
    //   555: aload 12
    //   557: astore 9
    //   559: aload 10
    //   561: astore 5
    //   563: aload 8
    //   565: astore 10
    //   567: aload 11
    //   569: astore 8
    //   571: goto -370 -> 201
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	574	0	this	FileSystemUtils
    //   0	574	1	paramArrayOfString	String[]
    //   0	574	2	paramInt	int
    //   0	574	3	paramLong	long
    //   25	537	5	localObject1	Object
    //   71	479	6	localObject2	Object
    //   32	455	7	localInputStream	java.io.InputStream
    //   46	524	8	localObject3	Object
    //   39	388	9	localObject4	Object
    //   460	1	9	localInterruptedException1	InterruptedException
    //   477	1	9	localInterruptedException2	InterruptedException
    //   499	25	9	localInterruptedException3	InterruptedException
    //   533	25	9	localInterruptedException4	InterruptedException
    //   1	565	10	localObject5	Object
    //   64	130	11	localBufferedReader	java.io.BufferedReader
    //   241	121	11	localReader	java.io.Reader
    //   480	88	11	localObject6	Object
    //   12	78	12	localArrayList	java.util.ArrayList
    //   179	198	12	localInterruptedException5	InterruptedException
    //   518	14	12	localInterruptedException6	InterruptedException
    //   542	14	12	localInterruptedException7	InterruptedException
    //   18	107	13	localThread	Thread
    // Exception table:
    //   from	to	target	type
    //   66	73	179	java/lang/InterruptedException
    //   78	115	179	java/lang/InterruptedException
    //   118	179	179	java/lang/InterruptedException
    //   296	334	179	java/lang/InterruptedException
    //   201	241	241	finally
    //   66	73	334	finally
    //   78	115	334	finally
    //   118	179	334	finally
    //   296	334	334	finally
    //   14	27	379	finally
    //   27	34	398	finally
    //   34	41	418	finally
    //   41	48	435	finally
    //   48	66	449	finally
    //   14	27	460	java/lang/InterruptedException
    //   27	34	477	java/lang/InterruptedException
    //   34	41	499	java/lang/InterruptedException
    //   41	48	518	java/lang/InterruptedException
    //   48	66	542	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.FileSystemUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */