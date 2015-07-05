package org.apache.commons.io.filefilter;

import java.io.Serializable;

public class MagicNumberFileFilter
  extends AbstractFileFilter
  implements Serializable
{
  private static final long serialVersionUID = -547733176983104172L;
  private final long byteOffset;
  private final byte[] magicNumbers;
  
  public MagicNumberFileFilter(String paramString)
  {
    this(paramString, 0L);
  }
  
  public MagicNumberFileFilter(String paramString, long paramLong)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("The magic number cannot be null");
    }
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("The magic number must contain at least one byte");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("The offset cannot be negative");
    }
    magicNumbers = paramString.getBytes();
    byteOffset = paramLong;
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0L);
  }
  
  public MagicNumberFileFilter(byte[] paramArrayOfByte, long paramLong)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("The magic number cannot be null");
    }
    if (paramArrayOfByte.length == 0) {
      throw new IllegalArgumentException("The magic number must contain at least one byte");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("The offset cannot be negative");
    }
    magicNumbers = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, magicNumbers, 0, paramArrayOfByte.length);
    byteOffset = paramLong;
  }
  
  /* Error */
  public boolean accept(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +67 -> 68
    //   4: aload_1
    //   5: invokevirtual 66	java/io/File:isFile	()Z
    //   8: ifeq +60 -> 68
    //   11: aload_1
    //   12: invokevirtual 69	java/io/File:canRead	()Z
    //   15: ifeq +53 -> 68
    //   18: aload_0
    //   19: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   22: arraylength
    //   23: newarray <illegal type>
    //   25: astore 5
    //   27: new 71	java/io/RandomAccessFile
    //   30: dup
    //   31: aload_1
    //   32: ldc 73
    //   34: invokespecial 76	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   37: astore_1
    //   38: aload_1
    //   39: aload_0
    //   40: getfield 46	org/apache/commons/io/filefilter/MagicNumberFileFilter:byteOffset	J
    //   43: invokevirtual 80	java/io/RandomAccessFile:seek	(J)V
    //   46: aload_1
    //   47: aload 5
    //   49: invokevirtual 84	java/io/RandomAccessFile:read	([B)I
    //   52: istore_2
    //   53: aload_0
    //   54: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   57: arraylength
    //   58: istore_3
    //   59: iload_2
    //   60: iload_3
    //   61: if_icmpeq +9 -> 70
    //   64: aload_1
    //   65: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   68: iconst_0
    //   69: ireturn
    //   70: aload_0
    //   71: getfield 44	org/apache/commons/io/filefilter/MagicNumberFileFilter:magicNumbers	[B
    //   74: aload 5
    //   76: invokestatic 96	java/util/Arrays:equals	([B[B)Z
    //   79: istore 4
    //   81: aload_1
    //   82: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   85: iload 4
    //   87: ireturn
    //   88: astore_1
    //   89: aconst_null
    //   90: astore_1
    //   91: aload_1
    //   92: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   95: iconst_0
    //   96: ireturn
    //   97: astore 5
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: invokestatic 90	org/apache/commons/io/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   105: aload 5
    //   107: athrow
    //   108: astore 5
    //   110: goto -9 -> 101
    //   113: astore 5
    //   115: goto -24 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	MagicNumberFileFilter
    //   0	118	1	paramFile	java.io.File
    //   52	10	2	i	int
    //   58	4	3	j	int
    //   79	7	4	bool	boolean
    //   25	50	5	arrayOfByte	byte[]
    //   97	9	5	localObject1	Object
    //   108	1	5	localObject2	Object
    //   113	1	5	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   18	38	88	java/io/IOException
    //   18	38	97	finally
    //   38	59	108	finally
    //   70	81	108	finally
    //   38	59	113	java/io/IOException
    //   70	81	113	java/io/IOException
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(super.toString());
    localStringBuilder.append("(");
    localStringBuilder.append(new String(magicNumbers));
    localStringBuilder.append(",");
    localStringBuilder.append(byteOffset);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.io.filefilter.MagicNumberFileFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */