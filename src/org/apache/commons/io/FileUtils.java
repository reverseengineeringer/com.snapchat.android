package org.apache.commons.io;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

public class FileUtils
{
  public static final File[] EMPTY_FILE_ARRAY = new File[0];
  private static final long FILE_COPY_BUFFER_SIZE = 31457280L;
  public static final long ONE_EB = 1152921504606846976L;
  public static final BigInteger ONE_EB_BI;
  public static final long ONE_GB = 1073741824L;
  public static final BigInteger ONE_GB_BI;
  public static final long ONE_KB = 1024L;
  public static final BigInteger ONE_KB_BI;
  public static final long ONE_MB = 1048576L;
  public static final BigInteger ONE_MB_BI;
  public static final long ONE_PB = 1125899906842624L;
  public static final BigInteger ONE_PB_BI;
  public static final long ONE_TB = 1099511627776L;
  public static final BigInteger ONE_TB_BI;
  public static final BigInteger ONE_YB;
  public static final BigInteger ONE_ZB;
  private static final Charset UTF8 = Charset.forName("UTF-8");
  
  static
  {
    BigInteger localBigInteger = BigInteger.valueOf(1024L);
    ONE_KB_BI = localBigInteger;
    ONE_MB_BI = localBigInteger.multiply(localBigInteger);
    ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
    ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
    ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
    ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
    ONE_ZB = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(1152921504606846976L));
    ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
  }
  
  public static String byteCountToDisplaySize(long paramLong)
  {
    return byteCountToDisplaySize(BigInteger.valueOf(paramLong));
  }
  
  public static String byteCountToDisplaySize(BigInteger paramBigInteger)
  {
    if (paramBigInteger.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_EB_BI)) + " EB";
    }
    if (paramBigInteger.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_PB_BI)) + " PB";
    }
    if (paramBigInteger.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_TB_BI)) + " TB";
    }
    if (paramBigInteger.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_GB_BI)) + " GB";
    }
    if (paramBigInteger.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_MB_BI)) + " MB";
    }
    if (paramBigInteger.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0) {
      return String.valueOf(paramBigInteger.divide(ONE_KB_BI)) + " KB";
    }
    return String.valueOf(paramBigInteger) + " bytes";
  }
  
  private static void checkDirectory(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (!paramFile.isDirectory()) {
      throw new IllegalArgumentException(paramFile + " is not a directory");
    }
  }
  
  /* Error */
  public static java.util.zip.Checksum checksum(File paramFile, java.util.zip.Checksum paramChecksum)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 149	java/io/File:isDirectory	()Z
    //   4: ifeq +13 -> 17
    //   7: new 138	java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc -101
    //   13: invokespecial 146	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: new 157	java/util/zip/CheckedInputStream
    //   20: dup
    //   21: new 159	java/io/FileInputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 161	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: aload_1
    //   30: invokespecial 164	java/util/zip/CheckedInputStream:<init>	(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    //   33: astore_2
    //   34: aload_2
    //   35: new 166	org/apache/commons/io/output/NullOutputStream
    //   38: dup
    //   39: invokespecial 167	org/apache/commons/io/output/NullOutputStream:<init>	()V
    //   42: invokestatic 173	org/apache/commons/io/IOUtils:copy	(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    //   45: pop
    //   46: aload_2
    //   47: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   50: aload_1
    //   51: areturn
    //   52: astore_0
    //   53: aconst_null
    //   54: astore_1
    //   55: aload_1
    //   56: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   59: aload_0
    //   60: athrow
    //   61: astore_0
    //   62: aload_2
    //   63: astore_1
    //   64: goto -9 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	paramFile	File
    //   0	67	1	paramChecksum	java.util.zip.Checksum
    //   33	30	2	localCheckedInputStream	java.util.zip.CheckedInputStream
    // Exception table:
    //   from	to	target	type
    //   17	34	52	finally
    //   34	46	61	finally
  }
  
  public static long checksumCRC32(File paramFile)
  {
    CRC32 localCRC32 = new CRC32();
    checksum(paramFile, localCRC32);
    return localCRC32.getValue();
  }
  
  public static void cleanDirectory(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (!paramFile.isDirectory()) {
      throw new IllegalArgumentException(paramFile + " is not a directory");
    }
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("Failed to list contents of " + paramFile);
    }
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    for (;;)
    {
      File localFile;
      if (i < j) {
        localFile = arrayOfFile[i];
      }
      try
      {
        forceDelete(localFile);
        i += 1;
        continue;
        if (paramFile != null) {
          throw paramFile;
        }
      }
      catch (IOException paramFile)
      {
        for (;;) {}
      }
    }
  }
  
  private static void cleanDirectoryOnExit(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (!paramFile.isDirectory()) {
      throw new IllegalArgumentException(paramFile + " is not a directory");
    }
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null) {
      throw new IOException("Failed to list contents of " + paramFile);
    }
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    for (;;)
    {
      File localFile;
      if (i < j) {
        localFile = arrayOfFile[i];
      }
      try
      {
        forceDeleteOnExit(localFile);
        i += 1;
        continue;
        if (paramFile != null) {
          throw paramFile;
        }
      }
      catch (IOException paramFile)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  public static boolean contentEquals(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 136	java/io/File:exists	()Z
    //   6: istore_2
    //   7: iload_2
    //   8: aload_1
    //   9: invokevirtual 136	java/io/File:exists	()Z
    //   12: if_icmpeq +5 -> 17
    //   15: iconst_0
    //   16: ireturn
    //   17: iload_2
    //   18: ifne +5 -> 23
    //   21: iconst_1
    //   22: ireturn
    //   23: aload_0
    //   24: invokevirtual 149	java/io/File:isDirectory	()Z
    //   27: ifne +10 -> 37
    //   30: aload_1
    //   31: invokevirtual 149	java/io/File:isDirectory	()Z
    //   34: ifeq +13 -> 47
    //   37: new 191	java/io/IOException
    //   40: dup
    //   41: ldc -46
    //   43: invokespecial 199	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   46: athrow
    //   47: aload_0
    //   48: invokevirtual 213	java/io/File:length	()J
    //   51: aload_1
    //   52: invokevirtual 213	java/io/File:length	()J
    //   55: lcmp
    //   56: ifne -41 -> 15
    //   59: aload_0
    //   60: invokevirtual 217	java/io/File:getCanonicalFile	()Ljava/io/File;
    //   63: aload_1
    //   64: invokevirtual 217	java/io/File:getCanonicalFile	()Ljava/io/File;
    //   67: invokevirtual 221	java/io/File:equals	(Ljava/lang/Object;)Z
    //   70: ifeq +5 -> 75
    //   73: iconst_1
    //   74: ireturn
    //   75: new 159	java/io/FileInputStream
    //   78: dup
    //   79: aload_0
    //   80: invokespecial 161	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   83: astore_0
    //   84: new 159	java/io/FileInputStream
    //   87: dup
    //   88: aload_1
    //   89: invokespecial 161	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   92: astore_1
    //   93: aload_0
    //   94: aload_1
    //   95: invokestatic 224	org/apache/commons/io/IOUtils:contentEquals	(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    //   98: istore_2
    //   99: aload_0
    //   100: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   103: aload_1
    //   104: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   107: iload_2
    //   108: ireturn
    //   109: astore_0
    //   110: aconst_null
    //   111: astore_1
    //   112: aload_3
    //   113: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   116: aload_1
    //   117: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   120: aload_0
    //   121: athrow
    //   122: astore 4
    //   124: aconst_null
    //   125: astore_1
    //   126: aload_0
    //   127: astore_3
    //   128: aload 4
    //   130: astore_0
    //   131: goto -19 -> 112
    //   134: astore 4
    //   136: aload_0
    //   137: astore_3
    //   138: aload 4
    //   140: astore_0
    //   141: goto -29 -> 112
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	paramFile1	File
    //   0	144	1	paramFile2	File
    //   6	102	2	bool	boolean
    //   1	137	3	localObject1	Object
    //   122	7	4	localObject2	Object
    //   134	5	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   75	84	109	finally
    //   84	93	122	finally
    //   93	99	134	finally
  }
  
  public static boolean contentEqualsIgnoreEOL(File paramFile1, File paramFile2, String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    boolean bool2 = true;
    boolean bool3 = paramFile1.exists();
    boolean bool1;
    if (bool3 != paramFile2.exists()) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!bool3);
      if ((paramFile1.isDirectory()) || (paramFile2.isDirectory())) {
        throw new IOException("Can't compare directories, only files");
      }
      bool1 = bool2;
    } while (paramFile1.getCanonicalFile().equals(paramFile2.getCanonicalFile()));
    if (paramString == null) {}
    for (;;)
    {
      try
      {
        paramString = new InputStreamReader(new FileInputStream(paramFile1));
        localObject1 = localObject2;
        paramFile1 = paramString;
      }
      finally
      {
        InputStreamReader localInputStreamReader;
        paramFile1 = null;
      }
      try
      {
        paramFile2 = new InputStreamReader(new FileInputStream(paramFile2));
        localObject1 = paramFile2;
        paramFile1 = paramString;
        bool1 = IOUtils.contentEqualsIgnoreEOL(paramString, paramFile2);
        IOUtils.closeQuietly(paramString);
        IOUtils.closeQuietly(paramFile2);
        return bool1;
      }
      finally
      {
        for (;;) {}
      }
      localInputStreamReader = new InputStreamReader(new FileInputStream(paramFile1), paramString);
      localObject1 = localObject2;
      paramFile1 = localInputStreamReader;
      paramFile2 = new InputStreamReader(new FileInputStream(paramFile2), paramString);
      paramString = localInputStreamReader;
    }
    IOUtils.closeQuietly(paramFile1);
    IOUtils.closeQuietly((Reader)localObject1);
    throw paramFile2;
  }
  
  public static File[] convertFileCollectionToFileArray(Collection<File> paramCollection)
  {
    return (File[])paramCollection.toArray(new File[paramCollection.size()]);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2)
  {
    copyDirectory(paramFile1, paramFile2, true);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter)
  {
    copyDirectory(paramFile1, paramFile2, paramFileFilter, true);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (!paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' exists but is not a directory");
    }
    if (paramFile1.getCanonicalPath().equals(paramFile2.getCanonicalPath())) {
      throw new IOException("Source '" + paramFile1 + "' and destination '" + paramFile2 + "' are the same");
    }
    ArrayList localArrayList2 = null;
    ArrayList localArrayList1 = localArrayList2;
    if (paramFile2.getCanonicalPath().startsWith(paramFile1.getCanonicalPath()))
    {
      if (paramFileFilter == null) {}
      for (File[] arrayOfFile = paramFile1.listFiles();; arrayOfFile = paramFile1.listFiles(paramFileFilter))
      {
        localArrayList1 = localArrayList2;
        if (arrayOfFile == null) {
          break;
        }
        localArrayList1 = localArrayList2;
        if (arrayOfFile.length <= 0) {
          break;
        }
        localArrayList2 = new ArrayList(arrayOfFile.length);
        int j = arrayOfFile.length;
        int i = 0;
        for (;;)
        {
          localArrayList1 = localArrayList2;
          if (i >= j) {
            break;
          }
          localArrayList2.add(new File(paramFile2, arrayOfFile[i].getName()).getCanonicalPath());
          i += 1;
        }
      }
    }
    doCopyDirectory(paramFile1, paramFile2, paramFileFilter, paramBoolean, localArrayList1);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    copyDirectory(paramFile1, paramFile2, null, paramBoolean);
  }
  
  public static void copyDirectoryToDirectory(File paramFile1, File paramFile2)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if ((paramFile1.exists()) && (!paramFile1.isDirectory())) {
      throw new IllegalArgumentException("Source '" + paramFile2 + "' is not a directory");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if ((paramFile2.exists()) && (!paramFile2.isDirectory())) {
      throw new IllegalArgumentException("Destination '" + paramFile2 + "' is not a directory");
    }
    copyDirectory(paramFile1, new File(paramFile2, paramFile1.getName()), true);
  }
  
  public static long copyFile(File paramFile, OutputStream paramOutputStream)
  {
    paramFile = new FileInputStream(paramFile);
    try
    {
      long l = IOUtils.copyLarge(paramFile, paramOutputStream);
      return l;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public static void copyFile(File paramFile1, File paramFile2)
  {
    copyFile(paramFile1, paramFile2, true);
  }
  
  public static void copyFile(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' exists but is a directory");
    }
    if (paramFile1.getCanonicalPath().equals(paramFile2.getCanonicalPath())) {
      throw new IOException("Source '" + paramFile1 + "' and destination '" + paramFile2 + "' are the same");
    }
    File localFile = paramFile2.getParentFile();
    if ((localFile != null) && (!localFile.mkdirs()) && (!localFile.isDirectory())) {
      throw new IOException("Destination '" + localFile + "' directory cannot be created");
    }
    if ((paramFile2.exists()) && (!paramFile2.canWrite())) {
      throw new IOException("Destination '" + paramFile2 + "' exists but is read-only");
    }
    doCopyFile(paramFile1, paramFile2, paramBoolean);
  }
  
  public static void copyFileToDirectory(File paramFile1, File paramFile2)
  {
    copyFileToDirectory(paramFile1, paramFile2, true);
  }
  
  public static void copyFileToDirectory(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if ((paramFile2.exists()) && (!paramFile2.isDirectory())) {
      throw new IllegalArgumentException("Destination '" + paramFile2 + "' is not a directory");
    }
    copyFile(paramFile1, new File(paramFile2, paramFile1.getName()), paramBoolean);
  }
  
  /* Error */
  public static void copyInputStreamToFile(InputStream paramInputStream, File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 357	org/apache/commons/io/FileUtils:openOutputStream	(Ljava/io/File;)Ljava/io/FileOutputStream;
    //   4: astore_1
    //   5: aload_0
    //   6: aload_1
    //   7: invokestatic 173	org/apache/commons/io/IOUtils:copy	(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    //   10: pop
    //   11: aload_1
    //   12: invokevirtual 360	java/io/FileOutputStream:close	()V
    //   15: aload_1
    //   16: invokestatic 363	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   19: aload_0
    //   20: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   23: return
    //   24: astore_2
    //   25: aload_1
    //   26: invokestatic 363	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   29: aload_2
    //   30: athrow
    //   31: astore_1
    //   32: aload_0
    //   33: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   36: aload_1
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	paramInputStream	InputStream
    //   0	38	1	paramFile	File
    //   24	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	15	24	finally
    //   0	5	31	finally
    //   15	19	31	finally
    //   25	31	31	finally
  }
  
  public static void copyURLToFile(URL paramURL, File paramFile)
  {
    copyInputStreamToFile(paramURL.openStream(), paramFile);
  }
  
  public static void copyURLToFile(URL paramURL, File paramFile, int paramInt1, int paramInt2)
  {
    paramURL = paramURL.openConnection();
    paramURL.setConnectTimeout(paramInt1);
    paramURL.setReadTimeout(paramInt2);
    copyInputStreamToFile(paramURL.getInputStream(), paramFile);
  }
  
  static String decodeUrl(String paramString)
  {
    Object localObject = paramString;
    if (paramString != null)
    {
      localObject = paramString;
      if (paramString.indexOf('%') >= 0)
      {
        int m = paramString.length();
        localObject = new StringBuffer();
        ByteBuffer localByteBuffer = ByteBuffer.allocate(m);
        int i = 0;
        while (i < m)
        {
          int j = i;
          int k;
          if (paramString.charAt(i) == '%')
          {
            k = i;
            label63:
            i = k;
          }
          try
          {
            localByteBuffer.put((byte)Integer.parseInt(paramString.substring(k + 1, k + 3), 16));
            j = k + 3;
            if (j < m)
            {
              i = j;
              int n = paramString.charAt(j);
              k = j;
              if (n == 37) {
                break label63;
              }
            }
            i = j;
            if (localByteBuffer.position() > 0)
            {
              localByteBuffer.flip();
              ((StringBuffer)localObject).append(UTF8.decode(localByteBuffer).toString());
              localByteBuffer.clear();
              i = j;
            }
          }
          catch (RuntimeException localRuntimeException)
          {
            j = i;
            if (localByteBuffer.position() > 0)
            {
              localByteBuffer.flip();
              ((StringBuffer)localObject).append(UTF8.decode(localByteBuffer).toString());
              localByteBuffer.clear();
              j = i;
            }
            ((StringBuffer)localObject).append(paramString.charAt(j));
            i = j + 1;
          }
          finally
          {
            if (localByteBuffer.position() > 0)
            {
              localByteBuffer.flip();
              ((StringBuffer)localObject).append(UTF8.decode(localByteBuffer).toString());
              localByteBuffer.clear();
            }
          }
        }
        localObject = ((StringBuffer)localObject).toString();
      }
    }
    return (String)localObject;
  }
  
  public static void deleteDirectory(File paramFile)
  {
    if (!paramFile.exists()) {}
    do
    {
      return;
      if (!isSymlink(paramFile)) {
        cleanDirectory(paramFile);
      }
    } while (paramFile.delete());
    throw new IOException("Unable to delete directory " + paramFile + ".");
  }
  
  private static void deleteDirectoryOnExit(File paramFile)
  {
    if (!paramFile.exists()) {}
    do
    {
      return;
      paramFile.deleteOnExit();
    } while (isSymlink(paramFile));
    cleanDirectoryOnExit(paramFile);
  }
  
  public static boolean deleteQuietly(File paramFile)
  {
    if (paramFile == null) {
      return false;
    }
    try
    {
      if (paramFile.isDirectory()) {
        cleanDirectory(paramFile);
      }
      try
      {
        boolean bool = paramFile.delete();
        return bool;
      }
      catch (Exception paramFile)
      {
        return false;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public static boolean directoryContains(File paramFile1, File paramFile2)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("Directory must not be null");
    }
    if (!paramFile1.isDirectory()) {
      throw new IllegalArgumentException("Not a directory: " + paramFile1);
    }
    if (paramFile2 == null) {}
    while ((!paramFile1.exists()) || (!paramFile2.exists())) {
      return false;
    }
    return FilenameUtils.directoryContains(paramFile1.getCanonicalPath(), paramFile2.getCanonicalPath());
  }
  
  private static void doCopyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter, boolean paramBoolean, List<String> paramList)
  {
    if (paramFileFilter == null) {}
    for (File[] arrayOfFile = paramFile1.listFiles(); arrayOfFile == null; arrayOfFile = paramFile1.listFiles(paramFileFilter)) {
      throw new IOException("Failed to list contents of " + paramFile1);
    }
    if (paramFile2.exists())
    {
      if (!paramFile2.isDirectory()) {
        throw new IOException("Destination '" + paramFile2 + "' exists but is not a directory");
      }
    }
    else if ((!paramFile2.mkdirs()) && (!paramFile2.isDirectory())) {
      throw new IOException("Destination '" + paramFile2 + "' directory cannot be created");
    }
    if (!paramFile2.canWrite()) {
      throw new IOException("Destination '" + paramFile2 + "' cannot be written to");
    }
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile1 = arrayOfFile[i];
      File localFile2 = new File(paramFile2, localFile1.getName());
      if ((paramList == null) || (!paramList.contains(localFile1.getCanonicalPath())))
      {
        if (!localFile1.isDirectory()) {
          break label262;
        }
        doCopyDirectory(localFile1, localFile2, paramFileFilter, paramBoolean, paramList);
      }
      for (;;)
      {
        i += 1;
        break;
        label262:
        doCopyFile(localFile1, localFile2, paramBoolean);
      }
    }
    if (paramBoolean) {
      paramFile2.setLastModified(paramFile1.lastModified());
    }
  }
  
  /* Error */
  private static void doCopyFile(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 13
    //   3: aload_1
    //   4: invokevirtual 136	java/io/File:exists	()Z
    //   7: ifeq +41 -> 48
    //   10: aload_1
    //   11: invokevirtual 149	java/io/File:isDirectory	()Z
    //   14: ifeq +34 -> 48
    //   17: new 191	java/io/IOException
    //   20: dup
    //   21: new 102	java/lang/StringBuilder
    //   24: dup
    //   25: ldc_w 319
    //   28: invokespecial 198	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_1
    //   32: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   35: ldc_w 332
    //   38: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 199	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: new 159	java/io/FileInputStream
    //   51: dup
    //   52: aload_0
    //   53: invokespecial 161	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   56: astore 9
    //   58: new 359	java/io/FileOutputStream
    //   61: dup
    //   62: aload_1
    //   63: invokespecial 497	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   66: astore 10
    //   68: aload 9
    //   70: invokevirtual 501	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   73: astore 11
    //   75: aload 10
    //   77: invokevirtual 502	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   80: astore 13
    //   82: aload 11
    //   84: invokevirtual 506	java/nio/channels/FileChannel:size	()J
    //   87: lstore 7
    //   89: lconst_0
    //   90: lstore_3
    //   91: goto +233 -> 324
    //   94: aload 13
    //   96: aload 11
    //   98: lload_3
    //   99: lload 5
    //   101: invokevirtual 510	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   104: lstore 5
    //   106: lload_3
    //   107: lload 5
    //   109: ladd
    //   110: lstore_3
    //   111: goto +213 -> 324
    //   114: lload 7
    //   116: lload_3
    //   117: lsub
    //   118: lstore 5
    //   120: goto -26 -> 94
    //   123: aload 13
    //   125: invokestatic 513	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   128: aload 10
    //   130: invokestatic 363	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   133: aload 11
    //   135: invokestatic 513	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   138: aload 9
    //   140: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   143: aload_0
    //   144: invokevirtual 213	java/io/File:length	()J
    //   147: aload_1
    //   148: invokevirtual 213	java/io/File:length	()J
    //   151: lcmp
    //   152: ifeq +78 -> 230
    //   155: new 191	java/io/IOException
    //   158: dup
    //   159: new 102	java/lang/StringBuilder
    //   162: dup
    //   163: ldc_w 515
    //   166: invokespecial 198	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: aload_0
    //   170: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   173: ldc_w 517
    //   176: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_1
    //   180: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   183: ldc_w 519
    //   186: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokespecial 199	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   195: athrow
    //   196: astore_0
    //   197: aconst_null
    //   198: astore_1
    //   199: aconst_null
    //   200: astore 9
    //   202: aconst_null
    //   203: astore 10
    //   205: aload 13
    //   207: astore 11
    //   209: aload_1
    //   210: invokestatic 513	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   213: aload 9
    //   215: invokestatic 363	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   218: aload 11
    //   220: invokestatic 513	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   223: aload 10
    //   225: invokestatic 177	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/InputStream;)V
    //   228: aload_0
    //   229: athrow
    //   230: iload_2
    //   231: ifeq +12 -> 243
    //   234: aload_1
    //   235: aload_0
    //   236: invokevirtual 491	java/io/File:lastModified	()J
    //   239: invokevirtual 495	java/io/File:setLastModified	(J)Z
    //   242: pop
    //   243: return
    //   244: astore_0
    //   245: aconst_null
    //   246: astore_1
    //   247: aconst_null
    //   248: astore 12
    //   250: aload 9
    //   252: astore 10
    //   254: aload 13
    //   256: astore 11
    //   258: aload 12
    //   260: astore 9
    //   262: goto -53 -> 209
    //   265: astore_0
    //   266: aconst_null
    //   267: astore_1
    //   268: aload 9
    //   270: astore 12
    //   272: aload 13
    //   274: astore 11
    //   276: aload 10
    //   278: astore 9
    //   280: aload 12
    //   282: astore 10
    //   284: goto -75 -> 209
    //   287: astore_0
    //   288: aload 9
    //   290: astore 12
    //   292: aconst_null
    //   293: astore_1
    //   294: aload 10
    //   296: astore 9
    //   298: aload 12
    //   300: astore 10
    //   302: goto -93 -> 209
    //   305: astore_0
    //   306: aload 9
    //   308: astore 12
    //   310: aload 13
    //   312: astore_1
    //   313: aload 10
    //   315: astore 9
    //   317: aload 12
    //   319: astore 10
    //   321: goto -112 -> 209
    //   324: lload_3
    //   325: lload 7
    //   327: lcmp
    //   328: ifge -205 -> 123
    //   331: lload 7
    //   333: lload_3
    //   334: lsub
    //   335: ldc2_w 9
    //   338: lcmp
    //   339: ifle -225 -> 114
    //   342: ldc2_w 9
    //   345: lstore 5
    //   347: goto -253 -> 94
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	350	0	paramFile1	File
    //   0	350	1	paramFile2	File
    //   0	350	2	paramBoolean	boolean
    //   90	244	3	l1	long
    //   99	1	5	localObject1	Object
    //   104	242	5	l2	long
    //   87	245	7	l3	long
    //   56	260	9	localObject2	Object
    //   66	254	10	localObject3	Object
    //   73	202	11	localFileChannel1	java.nio.channels.FileChannel
    //   248	70	12	localObject4	Object
    //   1	310	13	localFileChannel2	java.nio.channels.FileChannel
    // Exception table:
    //   from	to	target	type
    //   48	58	196	finally
    //   58	68	244	finally
    //   68	75	265	finally
    //   75	82	287	finally
    //   82	89	305	finally
    //   94	106	305	finally
  }
  
  public static void forceDelete(File paramFile)
  {
    if (paramFile.isDirectory()) {
      deleteDirectory(paramFile);
    }
    boolean bool;
    do
    {
      return;
      bool = paramFile.exists();
    } while (paramFile.delete());
    if (!bool) {
      throw new FileNotFoundException("File does not exist: " + paramFile);
    }
    throw new IOException("Unable to delete file: " + paramFile);
  }
  
  public static void forceDeleteOnExit(File paramFile)
  {
    if (paramFile.isDirectory())
    {
      deleteDirectoryOnExit(paramFile);
      return;
    }
    paramFile.deleteOnExit();
  }
  
  public static void forceMkdir(File paramFile)
  {
    if (paramFile.exists())
    {
      if (!paramFile.isDirectory()) {
        throw new IOException("File " + paramFile + " exists and is not a directory. Unable to create directory.");
      }
    }
    else if ((!paramFile.mkdirs()) && (!paramFile.isDirectory())) {
      throw new IOException("Unable to create directory " + paramFile);
    }
  }
  
  public static File getFile(File paramFile, String... paramVarArgs)
  {
    if (paramFile == null) {
      throw new NullPointerException("directorydirectory must not be null");
    }
    if (paramVarArgs == null) {
      throw new NullPointerException("names must not be null");
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramFile = new File(paramFile, paramVarArgs[i]);
      i += 1;
    }
    return paramFile;
  }
  
  public static File getFile(String... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new NullPointerException("names must not be null");
    }
    int j = paramVarArgs.length;
    File localFile = null;
    int i = 0;
    if (i < j)
    {
      String str = paramVarArgs[i];
      if (localFile == null) {}
      for (localFile = new File(str);; localFile = new File(localFile, str))
      {
        i += 1;
        break;
      }
    }
    return localFile;
  }
  
  public static File getTempDirectory()
  {
    return new File(getTempDirectoryPath());
  }
  
  public static String getTempDirectoryPath()
  {
    return System.getProperty("java.io.tmpdir");
  }
  
  public static File getUserDirectory()
  {
    return new File(getUserDirectoryPath());
  }
  
  public static String getUserDirectoryPath()
  {
    return System.getProperty("user.home");
  }
  
  private static void innerListFiles(Collection<File> paramCollection, File paramFile, IOFileFilter paramIOFileFilter, boolean paramBoolean)
  {
    paramFile = paramFile.listFiles(paramIOFileFilter);
    if (paramFile != null)
    {
      int j = paramFile.length;
      int i = 0;
      if (i < j)
      {
        Object localObject = paramFile[i];
        if (((File)localObject).isDirectory())
        {
          if (paramBoolean) {
            paramCollection.add(localObject);
          }
          innerListFiles(paramCollection, (File)localObject, paramIOFileFilter, paramBoolean);
        }
        for (;;)
        {
          i += 1;
          break;
          paramCollection.add(localObject);
        }
      }
    }
  }
  
  public static boolean isFileNewer(File paramFile, long paramLong)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("No specified file");
    }
    if (!paramFile.exists()) {}
    while (paramFile.lastModified() <= paramLong) {
      return false;
    }
    return true;
  }
  
  public static boolean isFileNewer(File paramFile1, File paramFile2)
  {
    if (paramFile2 == null) {
      throw new IllegalArgumentException("No specified reference file");
    }
    if (!paramFile2.exists()) {
      throw new IllegalArgumentException("The reference file '" + paramFile2 + "' doesn't exist");
    }
    return isFileNewer(paramFile1, paramFile2.lastModified());
  }
  
  public static boolean isFileNewer(File paramFile, Date paramDate)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("No specified date");
    }
    return isFileNewer(paramFile, paramDate.getTime());
  }
  
  public static boolean isFileOlder(File paramFile, long paramLong)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException("No specified file");
    }
    if (!paramFile.exists()) {}
    while (paramFile.lastModified() >= paramLong) {
      return false;
    }
    return true;
  }
  
  public static boolean isFileOlder(File paramFile1, File paramFile2)
  {
    if (paramFile2 == null) {
      throw new IllegalArgumentException("No specified reference file");
    }
    if (!paramFile2.exists()) {
      throw new IllegalArgumentException("The reference file '" + paramFile2 + "' doesn't exist");
    }
    return isFileOlder(paramFile1, paramFile2.lastModified());
  }
  
  public static boolean isFileOlder(File paramFile, Date paramDate)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("No specified date");
    }
    return isFileOlder(paramFile, paramDate.getTime());
  }
  
  public static boolean isSymlink(File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("File must not be null");
    }
    if (FilenameUtils.isSystemWindows()) {
      return false;
    }
    File localFile = paramFile;
    if (paramFile.getParent() != null) {
      localFile = new File(paramFile.getParentFile().getCanonicalFile(), paramFile.getName());
    }
    return !localFile.getCanonicalFile().equals(localFile.getAbsoluteFile());
  }
  
  public static Iterator<File> iterateFiles(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2)
  {
    return listFiles(paramFile, paramIOFileFilter1, paramIOFileFilter2).iterator();
  }
  
  public static Iterator<File> iterateFiles(File paramFile, String[] paramArrayOfString, boolean paramBoolean)
  {
    return listFiles(paramFile, paramArrayOfString, paramBoolean).iterator();
  }
  
  public static Iterator<File> iterateFilesAndDirs(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2)
  {
    return listFilesAndDirs(paramFile, paramIOFileFilter1, paramIOFileFilter2).iterator();
  }
  
  public static LineIterator lineIterator(File paramFile)
  {
    return lineIterator(paramFile, null);
  }
  
  public static LineIterator lineIterator(File paramFile, String paramString)
  {
    File localFile2 = null;
    File localFile1 = null;
    try
    {
      paramFile = openInputStream(paramFile);
      localFile1 = paramFile;
      localFile2 = paramFile;
      paramFile = IOUtils.lineIterator(paramFile, paramString);
      return paramFile;
    }
    catch (IOException paramFile)
    {
      IOUtils.closeQuietly(localFile1);
      throw paramFile;
    }
    catch (RuntimeException paramFile)
    {
      IOUtils.closeQuietly(localFile2);
      throw paramFile;
    }
  }
  
  public static Collection<File> listFiles(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2)
  {
    validateListFilesParameters(paramFile, paramIOFileFilter1);
    paramIOFileFilter1 = setUpEffectiveFileFilter(paramIOFileFilter1);
    paramIOFileFilter2 = setUpEffectiveDirFilter(paramIOFileFilter2);
    LinkedList localLinkedList = new LinkedList();
    innerListFiles(localLinkedList, paramFile, FileFilterUtils.or(new IOFileFilter[] { paramIOFileFilter1, paramIOFileFilter2 }), false);
    return localLinkedList;
  }
  
  public static Collection<File> listFiles(File paramFile, String[] paramArrayOfString, boolean paramBoolean)
  {
    if (paramArrayOfString == null)
    {
      paramArrayOfString = TrueFileFilter.INSTANCE;
      if (!paramBoolean) {
        break label38;
      }
    }
    label38:
    for (IOFileFilter localIOFileFilter = TrueFileFilter.INSTANCE;; localIOFileFilter = FalseFileFilter.INSTANCE)
    {
      return listFiles(paramFile, paramArrayOfString, localIOFileFilter);
      paramArrayOfString = new SuffixFileFilter(toSuffixes(paramArrayOfString));
      break;
    }
  }
  
  public static Collection<File> listFilesAndDirs(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2)
  {
    validateListFilesParameters(paramFile, paramIOFileFilter1);
    paramIOFileFilter1 = setUpEffectiveFileFilter(paramIOFileFilter1);
    paramIOFileFilter2 = setUpEffectiveDirFilter(paramIOFileFilter2);
    LinkedList localLinkedList = new LinkedList();
    if (paramFile.isDirectory()) {
      localLinkedList.add(paramFile);
    }
    innerListFiles(localLinkedList, paramFile, FileFilterUtils.or(new IOFileFilter[] { paramIOFileFilter1, paramIOFileFilter2 }), true);
    return localLinkedList;
  }
  
  public static void moveDirectory(File paramFile1, File paramFile2)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (!paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' is not a directory");
    }
    if (paramFile2.exists()) {
      throw new FileExistsException("Destination '" + paramFile2 + "' already exists");
    }
    if (!paramFile1.renameTo(paramFile2))
    {
      if (paramFile2.getCanonicalPath().startsWith(paramFile1.getCanonicalPath())) {
        throw new IOException("Cannot move directory: " + paramFile1 + " to a subdirectory of itself: " + paramFile2);
      }
      copyDirectory(paramFile1, paramFile2);
      deleteDirectory(paramFile1);
      if (paramFile1.exists()) {
        throw new IOException("Failed to delete original directory '" + paramFile1 + "' after copy to '" + paramFile2 + "'");
      }
    }
  }
  
  public static void moveDirectoryToDirectory(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination directory must not be null");
    }
    if ((!paramFile2.exists()) && (paramBoolean)) {
      paramFile2.mkdirs();
    }
    if (!paramFile2.exists()) {
      throw new FileNotFoundException("Destination directory '" + paramFile2 + "' does not exist [createDestDir=" + paramBoolean + "]");
    }
    if (!paramFile2.isDirectory()) {
      throw new IOException("Destination '" + paramFile2 + "' is not a directory");
    }
    moveDirectory(paramFile1, new File(paramFile2, paramFile1.getName()));
  }
  
  public static void moveFile(File paramFile1, File paramFile2)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (paramFile1.isDirectory()) {
      throw new IOException("Source '" + paramFile1 + "' is a directory");
    }
    if (paramFile2.exists()) {
      throw new FileExistsException("Destination '" + paramFile2 + "' already exists");
    }
    if (paramFile2.isDirectory()) {
      throw new IOException("Destination '" + paramFile2 + "' is a directory");
    }
    if (!paramFile1.renameTo(paramFile2))
    {
      copyFile(paramFile1, paramFile2);
      if (!paramFile1.delete())
      {
        deleteQuietly(paramFile2);
        throw new IOException("Failed to delete original file '" + paramFile1 + "' after copy to '" + paramFile2 + "'");
      }
    }
  }
  
  public static void moveFileToDirectory(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination directory must not be null");
    }
    if ((!paramFile2.exists()) && (paramBoolean)) {
      paramFile2.mkdirs();
    }
    if (!paramFile2.exists()) {
      throw new FileNotFoundException("Destination directory '" + paramFile2 + "' does not exist [createDestDir=" + paramBoolean + "]");
    }
    if (!paramFile2.isDirectory()) {
      throw new IOException("Destination '" + paramFile2 + "' is not a directory");
    }
    moveFile(paramFile1, new File(paramFile2, paramFile1.getName()));
  }
  
  public static void moveToDirectory(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramFile1 == null) {
      throw new NullPointerException("Source must not be null");
    }
    if (paramFile2 == null) {
      throw new NullPointerException("Destination must not be null");
    }
    if (!paramFile1.exists()) {
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist");
    }
    if (paramFile1.isDirectory())
    {
      moveDirectoryToDirectory(paramFile1, paramFile2, paramBoolean);
      return;
    }
    moveFileToDirectory(paramFile1, paramFile2, paramBoolean);
  }
  
  public static FileInputStream openInputStream(File paramFile)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canRead()) {
        throw new IOException("File '" + paramFile + "' cannot be read");
      }
    }
    else
    {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    }
    return new FileInputStream(paramFile);
  }
  
  public static FileOutputStream openOutputStream(File paramFile)
  {
    return openOutputStream(paramFile, false);
  }
  
  public static FileOutputStream openOutputStream(File paramFile, boolean paramBoolean)
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory()) {
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      }
      if (!paramFile.canWrite()) {
        throw new IOException("File '" + paramFile + "' cannot be written to");
      }
    }
    else
    {
      File localFile = paramFile.getParentFile();
      if ((localFile != null) && (!localFile.mkdirs()) && (!localFile.isDirectory())) {
        throw new IOException("Directory '" + localFile + "' could not be created");
      }
    }
    return new FileOutputStream(paramFile, paramBoolean);
  }
  
  public static byte[] readFileToByteArray(File paramFile)
  {
    Object localObject = null;
    try
    {
      FileInputStream localFileInputStream = openInputStream(paramFile);
      localObject = localFileInputStream;
      paramFile = IOUtils.toByteArray(localFileInputStream, paramFile.length());
      IOUtils.closeQuietly(localFileInputStream);
      return paramFile;
    }
    finally
    {
      IOUtils.closeQuietly((InputStream)localObject);
    }
  }
  
  public static String readFileToString(File paramFile)
  {
    return readFileToString(paramFile, Charset.defaultCharset());
  }
  
  public static String readFileToString(File paramFile, String paramString)
  {
    return readFileToString(paramFile, Charsets.toCharset(paramString));
  }
  
  public static String readFileToString(File paramFile, Charset paramCharset)
  {
    File localFile = null;
    try
    {
      paramFile = openInputStream(paramFile);
      localFile = paramFile;
      paramCharset = IOUtils.toString(paramFile, Charsets.toCharset(paramCharset));
      return paramCharset;
    }
    finally
    {
      IOUtils.closeQuietly(localFile);
    }
  }
  
  public static List<String> readLines(File paramFile)
  {
    return readLines(paramFile, Charset.defaultCharset());
  }
  
  public static List<String> readLines(File paramFile, String paramString)
  {
    return readLines(paramFile, Charsets.toCharset(paramString));
  }
  
  public static List<String> readLines(File paramFile, Charset paramCharset)
  {
    File localFile = null;
    try
    {
      paramFile = openInputStream(paramFile);
      localFile = paramFile;
      paramCharset = IOUtils.readLines(paramFile, Charsets.toCharset(paramCharset));
      return paramCharset;
    }
    finally
    {
      IOUtils.closeQuietly(localFile);
    }
  }
  
  private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter paramIOFileFilter)
  {
    if (paramIOFileFilter == null) {
      return FalseFileFilter.INSTANCE;
    }
    return FileFilterUtils.and(new IOFileFilter[] { paramIOFileFilter, DirectoryFileFilter.INSTANCE });
  }
  
  private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter paramIOFileFilter)
  {
    return FileFilterUtils.and(new IOFileFilter[] { paramIOFileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE) });
  }
  
  public static long sizeOf(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (paramFile.isDirectory()) {
      return sizeOfDirectory(paramFile);
    }
    return paramFile.length();
  }
  
  public static BigInteger sizeOfAsBigInteger(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IllegalArgumentException(paramFile + " does not exist");
    }
    if (paramFile.isDirectory()) {
      return sizeOfDirectoryAsBigInteger(paramFile);
    }
    return BigInteger.valueOf(paramFile.length());
  }
  
  public static long sizeOfDirectory(File paramFile)
  {
    checkDirectory(paramFile);
    paramFile = paramFile.listFiles();
    if (paramFile == null)
    {
      l2 = 0L;
      return l2;
    }
    int j = paramFile.length;
    int i = 0;
    for (l1 = 0L;; l1 = l2)
    {
      l2 = l1;
      if (i >= j) {
        break;
      }
      File localFile = paramFile[i];
      l2 = l1;
      try
      {
        if (!isSymlink(localFile))
        {
          l2 = sizeOf(localFile);
          l1 += l2;
          l2 = l1;
          if (l1 < 0L) {
            break;
          }
          l2 = l1;
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          l2 = l1;
        }
      }
      i += 1;
    }
  }
  
  public static BigInteger sizeOfDirectoryAsBigInteger(File paramFile)
  {
    checkDirectory(paramFile);
    File[] arrayOfFile = paramFile.listFiles();
    Object localObject;
    if (arrayOfFile == null)
    {
      localObject = BigInteger.ZERO;
      return (BigInteger)localObject;
    }
    paramFile = BigInteger.ZERO;
    int j = arrayOfFile.length;
    int i = 0;
    for (;;)
    {
      localObject = paramFile;
      if (i >= j) {
        break;
      }
      File localFile2 = arrayOfFile[i];
      localObject = paramFile;
      try
      {
        if (!isSymlink(localFile2)) {
          localObject = paramFile.add(BigInteger.valueOf(sizeOf(localFile2)));
        }
        i += 1;
        paramFile = (File)localObject;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          File localFile1 = paramFile;
        }
      }
    }
  }
  
  public static File toFile(URL paramURL)
  {
    if ((paramURL == null) || (!"file".equalsIgnoreCase(paramURL.getProtocol()))) {
      return null;
    }
    return new File(decodeUrl(paramURL.getFile().replace('/', File.separatorChar)));
  }
  
  public static File[] toFiles(URL[] paramArrayOfURL)
  {
    if ((paramArrayOfURL == null) || (paramArrayOfURL.length == 0)) {
      return EMPTY_FILE_ARRAY;
    }
    File[] arrayOfFile = new File[paramArrayOfURL.length];
    int i = 0;
    while (i < paramArrayOfURL.length)
    {
      URL localURL = paramArrayOfURL[i];
      if (localURL != null)
      {
        if (!localURL.getProtocol().equals("file")) {
          throw new IllegalArgumentException("URL could not be converted to a File: " + localURL);
        }
        arrayOfFile[i] = toFile(localURL);
      }
      i += 1;
    }
    return arrayOfFile;
  }
  
  private static String[] toSuffixes(String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfString[i] = ("." + paramArrayOfString[i]);
      i += 1;
    }
    return arrayOfString;
  }
  
  public static URL[] toURLs(File[] paramArrayOfFile)
  {
    URL[] arrayOfURL = new URL[paramArrayOfFile.length];
    int i = 0;
    while (i < arrayOfURL.length)
    {
      arrayOfURL[i] = paramArrayOfFile[i].toURI().toURL();
      i += 1;
    }
    return arrayOfURL;
  }
  
  public static void touch(File paramFile)
  {
    if (!paramFile.exists()) {
      IOUtils.closeQuietly(openOutputStream(paramFile));
    }
    if (!paramFile.setLastModified(System.currentTimeMillis())) {
      throw new IOException("Unable to set the last modification time for " + paramFile);
    }
  }
  
  private static void validateListFilesParameters(File paramFile, IOFileFilter paramIOFileFilter)
  {
    if (!paramFile.isDirectory()) {
      throw new IllegalArgumentException("Parameter 'directory' is not a directory");
    }
    if (paramIOFileFilter == null) {
      throw new NullPointerException("Parameter 'fileFilter' is null");
    }
  }
  
  public static boolean waitFor(File paramFile, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (!paramFile.exists())
    {
      if (i < 10) {
        break label47;
      }
      if (j > paramInt) {
        return false;
      }
      j += 1;
      i = 0;
    }
    for (;;)
    {
      try
      {
        Thread.sleep(100L);
      }
      catch (InterruptedException localInterruptedException) {}catch (Exception paramFile) {}
      return true;
      label47:
      i += 1;
    }
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence)
  {
    write(paramFile, paramCharSequence, Charset.defaultCharset(), false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, String paramString)
  {
    write(paramFile, paramCharSequence, paramString, false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, String paramString, boolean paramBoolean)
  {
    write(paramFile, paramCharSequence, Charsets.toCharset(paramString), paramBoolean);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, Charset paramCharset)
  {
    write(paramFile, paramCharSequence, paramCharset, false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, Charset paramCharset, boolean paramBoolean)
  {
    if (paramCharSequence == null) {}
    for (paramCharSequence = null;; paramCharSequence = paramCharSequence.toString())
    {
      writeStringToFile(paramFile, paramCharSequence, paramCharset, paramBoolean);
      return;
    }
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, boolean paramBoolean)
  {
    write(paramFile, paramCharSequence, Charset.defaultCharset(), paramBoolean);
  }
  
  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfByte)
  {
    writeByteArrayToFile(paramFile, paramArrayOfByte, false);
  }
  
  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    File localFile = null;
    try
    {
      paramFile = openOutputStream(paramFile, paramBoolean);
      localFile = paramFile;
      paramFile.write(paramArrayOfByte);
      localFile = paramFile;
      paramFile.close();
      return;
    }
    finally
    {
      IOUtils.closeQuietly(localFile);
    }
  }
  
  public static void writeLines(File paramFile, String paramString, Collection<?> paramCollection)
  {
    writeLines(paramFile, paramString, paramCollection, null, false);
  }
  
  public static void writeLines(File paramFile, String paramString1, Collection<?> paramCollection, String paramString2)
  {
    writeLines(paramFile, paramString1, paramCollection, paramString2, false);
  }
  
  public static void writeLines(File paramFile, String paramString1, Collection<?> paramCollection, String paramString2, boolean paramBoolean)
  {
    File localFile = null;
    try
    {
      paramFile = openOutputStream(paramFile, paramBoolean);
      localFile = paramFile;
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramFile);
      localFile = paramFile;
      IOUtils.writeLines(paramCollection, paramString2, localBufferedOutputStream, paramString1);
      localFile = paramFile;
      localBufferedOutputStream.flush();
      localFile = paramFile;
      paramFile.close();
      return;
    }
    finally
    {
      IOUtils.closeQuietly(localFile);
    }
  }
  
  public static void writeLines(File paramFile, String paramString, Collection<?> paramCollection, boolean paramBoolean)
  {
    writeLines(paramFile, paramString, paramCollection, null, paramBoolean);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection)
  {
    writeLines(paramFile, null, paramCollection, null, false);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, String paramString)
  {
    writeLines(paramFile, null, paramCollection, paramString, false);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, String paramString, boolean paramBoolean)
  {
    writeLines(paramFile, null, paramCollection, paramString, paramBoolean);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, boolean paramBoolean)
  {
    writeLines(paramFile, null, paramCollection, null, paramBoolean);
  }
  
  public static void writeStringToFile(File paramFile, String paramString)
  {
    writeStringToFile(paramFile, paramString, Charset.defaultCharset(), false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString1, String paramString2)
  {
    writeStringToFile(paramFile, paramString1, paramString2, false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString1, String paramString2, boolean paramBoolean)
  {
    writeStringToFile(paramFile, paramString1, Charsets.toCharset(paramString2), paramBoolean);
  }
  
  public static void writeStringToFile(File paramFile, String paramString, Charset paramCharset)
  {
    writeStringToFile(paramFile, paramString, paramCharset, false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString, Charset paramCharset, boolean paramBoolean)
  {
    File localFile = null;
    try
    {
      paramFile = openOutputStream(paramFile, paramBoolean);
      localFile = paramFile;
      IOUtils.write(paramString, paramFile, paramCharset);
      localFile = paramFile;
      paramFile.close();
      return;
    }
    finally
    {
      IOUtils.closeQuietly(localFile);
    }
  }
  
  public static void writeStringToFile(File paramFile, String paramString, boolean paramBoolean)
  {
    writeStringToFile(paramFile, paramString, Charset.defaultCharset(), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.FileUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */