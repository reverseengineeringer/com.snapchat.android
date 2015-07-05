package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

public class LockableFileWriter
  extends Writer
{
  private static final String LCK = ".lck";
  private final File lockFile;
  private final Writer out;
  
  public LockableFileWriter(File paramFile)
  {
    this(paramFile, false, null);
  }
  
  public LockableFileWriter(File paramFile, String paramString)
  {
    this(paramFile, paramString, false, null);
  }
  
  public LockableFileWriter(File paramFile, String paramString1, boolean paramBoolean, String paramString2)
  {
    this(paramFile, Charsets.toCharset(paramString1), paramBoolean, paramString2);
  }
  
  public LockableFileWriter(File paramFile, Charset paramCharset)
  {
    this(paramFile, paramCharset, false, null);
  }
  
  public LockableFileWriter(File paramFile, Charset paramCharset, boolean paramBoolean, String paramString)
  {
    File localFile = paramFile.getAbsoluteFile();
    if (localFile.getParentFile() != null) {
      FileUtils.forceMkdir(localFile.getParentFile());
    }
    if (localFile.isDirectory()) {
      throw new IOException("File specified is a directory");
    }
    paramFile = paramString;
    if (paramString == null) {
      paramFile = System.getProperty("java.io.tmpdir");
    }
    paramFile = new File(paramFile);
    FileUtils.forceMkdir(paramFile);
    testLockDir(paramFile);
    lockFile = new File(paramFile, localFile.getName() + ".lck");
    createLock();
    out = initWriter(localFile, paramCharset, paramBoolean);
  }
  
  public LockableFileWriter(File paramFile, boolean paramBoolean)
  {
    this(paramFile, paramBoolean, null);
  }
  
  public LockableFileWriter(File paramFile, boolean paramBoolean, String paramString)
  {
    this(paramFile, Charset.defaultCharset(), paramBoolean, paramString);
  }
  
  public LockableFileWriter(String paramString)
  {
    this(paramString, false, null);
  }
  
  public LockableFileWriter(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, null);
  }
  
  public LockableFileWriter(String paramString1, boolean paramBoolean, String paramString2)
  {
    this(new File(paramString1), paramBoolean, paramString2);
  }
  
  private void createLock()
  {
    try
    {
      if (!lockFile.createNewFile()) {
        throw new IOException("Can't write file, lock " + lockFile.getAbsolutePath() + " exists");
      }
    }
    finally {}
    lockFile.deleteOnExit();
  }
  
  /* Error */
  private Writer initWriter(File paramFile, Charset paramCharset, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 129	java/io/File:exists	()Z
    //   4: istore 4
    //   6: new 131	java/io/FileOutputStream
    //   9: dup
    //   10: aload_1
    //   11: invokevirtual 119	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   14: iload_3
    //   15: invokespecial 133	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   18: astore 5
    //   20: new 135	java/io/OutputStreamWriter
    //   23: dup
    //   24: aload 5
    //   26: aload_2
    //   27: invokestatic 138	org/apache/commons/io/Charsets:toCharset	(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    //   30: invokespecial 141	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   33: astore_2
    //   34: aload_2
    //   35: areturn
    //   36: astore_2
    //   37: aconst_null
    //   38: astore 5
    //   40: aconst_null
    //   41: invokestatic 147	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Writer;)V
    //   44: aload 5
    //   46: invokestatic 150	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   49: aload_0
    //   50: getfield 90	org/apache/commons/io/output/LockableFileWriter:lockFile	Ljava/io/File;
    //   53: invokestatic 154	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   56: pop
    //   57: iload 4
    //   59: ifne +8 -> 67
    //   62: aload_1
    //   63: invokestatic 154	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   66: pop
    //   67: aload_2
    //   68: athrow
    //   69: astore_2
    //   70: aconst_null
    //   71: astore 5
    //   73: aconst_null
    //   74: invokestatic 147	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Writer;)V
    //   77: aload 5
    //   79: invokestatic 150	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/OutputStream;)V
    //   82: aload_0
    //   83: getfield 90	org/apache/commons/io/output/LockableFileWriter:lockFile	Ljava/io/File;
    //   86: invokestatic 154	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   89: pop
    //   90: iload 4
    //   92: ifne +8 -> 100
    //   95: aload_1
    //   96: invokestatic 154	org/apache/commons/io/FileUtils:deleteQuietly	(Ljava/io/File;)Z
    //   99: pop
    //   100: aload_2
    //   101: athrow
    //   102: astore_2
    //   103: goto -30 -> 73
    //   106: astore_2
    //   107: goto -67 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	LockableFileWriter
    //   0	110	1	paramFile	File
    //   0	110	2	paramCharset	Charset
    //   0	110	3	paramBoolean	boolean
    //   4	87	4	bool	boolean
    //   18	60	5	localFileOutputStream	java.io.FileOutputStream
    // Exception table:
    //   from	to	target	type
    //   6	20	36	java/io/IOException
    //   6	20	69	java/lang/RuntimeException
    //   20	34	102	java/lang/RuntimeException
    //   20	34	106	java/io/IOException
  }
  
  private void testLockDir(File paramFile)
  {
    if (!paramFile.exists()) {
      throw new IOException("Could not find lockDir: " + paramFile.getAbsolutePath());
    }
    if (!paramFile.canWrite()) {
      throw new IOException("Could not write to lockDir: " + paramFile.getAbsolutePath());
    }
  }
  
  public void close()
  {
    try
    {
      out.close();
      return;
    }
    finally
    {
      lockFile.delete();
    }
  }
  
  public void flush()
  {
    out.flush();
  }
  
  public void write(int paramInt)
  {
    out.write(paramInt);
  }
  
  public void write(String paramString)
  {
    out.write(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2)
  {
    out.write(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfChar)
  {
    out.write(paramArrayOfChar);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.output.LockableFileWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */