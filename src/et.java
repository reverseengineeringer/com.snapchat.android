import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public abstract class et
  implements as
{
  private static fi LOG;
  private ByteBuffer content;
  long contentStartPosition;
  ex dataSource;
  private ByteBuffer deadBytes = null;
  boolean isParsed;
  boolean isRead;
  long memMapSize = -1L;
  long offset;
  private au parent;
  protected String type;
  private byte[] userType;
  
  static
  {
    if (!et.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      LOG = fi.a(et.class);
      return;
    }
  }
  
  protected et(String paramString)
  {
    type = paramString;
    isRead = true;
    isParsed = true;
  }
  
  protected et(String paramString, byte[] paramArrayOfByte)
  {
    type = paramString;
    userType = paramArrayOfByte;
    isRead = true;
    isParsed = true;
  }
  
  private void getHeader(ByteBuffer paramByteBuffer)
  {
    if (isSmallBox())
    {
      ap.b(paramByteBuffer, getSize());
      paramByteBuffer.put(an.a(getType()));
    }
    for (;;)
    {
      if ("uuid".equals(getType())) {
        paramByteBuffer.put(getUserType());
      }
      return;
      ap.b(paramByteBuffer, 1L);
      paramByteBuffer.put(an.a(getType()));
      ap.a(paramByteBuffer, getSize());
    }
  }
  
  private boolean isSmallBox()
  {
    int i = 8;
    if ("uuid".equals(getType())) {
      i = 24;
    }
    if (isRead)
    {
      if (isParsed)
      {
        long l = getContentSize();
        if (deadBytes != null) {}
        for (int j = deadBytes.limit(); l + j + i < 4294967296L; j = 0) {
          return true;
        }
        return false;
      }
      return i + content.limit() < 4294967296L;
    }
    return memMapSize + i < 4294967296L;
  }
  
  /* Error */
  private void readContent()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 60	et:isRead	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +54 -> 62
    //   11: getstatic 45	et:LOG	Lfi;
    //   14: new 125	java/lang/StringBuilder
    //   17: dup
    //   18: ldc 127
    //   20: invokespecial 129	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokevirtual 84	et:getType	()Ljava/lang/String;
    //   27: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokevirtual 138	fi:a	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: aload_0
    //   38: getfield 140	et:dataSource	Lex;
    //   41: aload_0
    //   42: getfield 142	et:contentStartPosition	J
    //   45: aload_0
    //   46: getfield 54	et:memMapSize	J
    //   49: invokeinterface 147 5 0
    //   54: putfield 120	et:content	Ljava/nio/ByteBuffer;
    //   57: aload_0
    //   58: iconst_1
    //   59: putfield 60	et:isRead	Z
    //   62: aload_0
    //   63: monitorexit
    //   64: return
    //   65: astore_2
    //   66: new 149	java/lang/RuntimeException
    //   69: dup
    //   70: aload_2
    //   71: invokespecial 152	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   74: athrow
    //   75: astore_2
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_2
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	et
    //   6	2	1	bool	boolean
    //   65	6	2	localIOException	java.io.IOException
    //   75	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   11	57	65	java/io/IOException
    //   2	7	75	finally
    //   11	57	75	finally
    //   57	62	75	finally
    //   66	75	75	finally
  }
  
  private boolean verify(ByteBuffer paramByteBuffer)
  {
    long l = getContentSize();
    ByteBuffer localByteBuffer;
    if (deadBytes != null)
    {
      i = deadBytes.limit();
      localByteBuffer = ByteBuffer.allocate(fe.a(l + i));
      getContent(localByteBuffer);
      if (deadBytes != null) {
        deadBytes.rewind();
      }
    }
    for (;;)
    {
      if (deadBytes.remaining() <= 0)
      {
        paramByteBuffer.rewind();
        localByteBuffer.rewind();
        if (paramByteBuffer.remaining() == localByteBuffer.remaining()) {
          break label207;
        }
        System.err.print(getType() + ": remaining differs " + paramByteBuffer.remaining() + " vs. " + localByteBuffer.remaining());
        LOG.b(getType() + ": remaining differs " + paramByteBuffer.remaining() + " vs. " + localByteBuffer.remaining());
        return false;
        i = 0;
        break;
      }
      localByteBuffer.put(deadBytes);
    }
    label207:
    int k = paramByteBuffer.position();
    int j = paramByteBuffer.limit() - 1;
    int i = localByteBuffer.limit() - 1;
    for (;;)
    {
      if (j < k) {
        return true;
      }
      byte b1 = paramByteBuffer.get(j);
      byte b2 = localByteBuffer.get(i);
      if (b1 != b2)
      {
        LOG.b(String.format("%s: buffers differ at %d: %2X/%2X", new Object[] { getType(), Integer.valueOf(j), Byte.valueOf(b1), Byte.valueOf(b2) }));
        byte[] arrayOfByte1 = new byte[paramByteBuffer.remaining()];
        byte[] arrayOfByte2 = new byte[localByteBuffer.remaining()];
        paramByteBuffer.get(arrayOfByte1);
        localByteBuffer.get(arrayOfByte2);
        System.err.println("original      : " + am.a(arrayOfByte1, 4));
        System.err.println("reconstructed : " + am.a(arrayOfByte2, 4));
        return false;
      }
      j -= 1;
      i -= 1;
    }
  }
  
  public abstract void _parseDetails(ByteBuffer paramByteBuffer);
  
  public void getBox(WritableByteChannel paramWritableByteChannel)
  {
    int j = 8;
    int i = 16;
    ByteBuffer localByteBuffer;
    if (isRead)
    {
      if (isParsed)
      {
        localByteBuffer = ByteBuffer.allocate(fe.a(getSize()));
        getHeader(localByteBuffer);
        getContent(localByteBuffer);
        if (deadBytes != null) {
          deadBytes.rewind();
        }
        for (;;)
        {
          if (deadBytes.remaining() <= 0)
          {
            paramWritableByteChannel.write((ByteBuffer)localByteBuffer.rewind());
            return;
          }
          localByteBuffer.put(deadBytes);
        }
      }
      if (isSmallBox()) {
        if (!"uuid".equals(getType())) {
          break label171;
        }
      }
      for (;;)
      {
        localByteBuffer = ByteBuffer.allocate(j + i);
        getHeader(localByteBuffer);
        paramWritableByteChannel.write((ByteBuffer)localByteBuffer.rewind());
        paramWritableByteChannel.write((ByteBuffer)content.position(0));
        return;
        j = 16;
        break;
        label171:
        i = 0;
      }
    }
    if (isSmallBox()) {
      if (!"uuid".equals(getType())) {
        break label250;
      }
    }
    for (;;)
    {
      localByteBuffer = ByteBuffer.allocate(j + i);
      getHeader(localByteBuffer);
      paramWritableByteChannel.write((ByteBuffer)localByteBuffer.rewind());
      dataSource.a(contentStartPosition, memMapSize, paramWritableByteChannel);
      return;
      j = 16;
      break;
      label250:
      i = 0;
    }
  }
  
  public abstract void getContent(ByteBuffer paramByteBuffer);
  
  public abstract long getContentSize();
  
  public long getOffset()
  {
    return offset;
  }
  
  @fa
  public au getParent()
  {
    return parent;
  }
  
  @fa
  public String getPath()
  {
    return fj.a(this);
  }
  
  public long getSize()
  {
    int k = 0;
    long l1;
    label34:
    int j;
    label49:
    long l2;
    if (isRead) {
      if (isParsed)
      {
        l1 = getContentSize();
        if (l1 < 4294967288L) {
          break label112;
        }
        i = 8;
        if (!"uuid".equals(getType())) {
          break label117;
        }
        j = 16;
        l2 = j + (i + 8);
        if (deadBytes != null) {
          break label122;
        }
      }
    }
    label112:
    label117:
    label122:
    for (int i = k;; i = deadBytes.limit())
    {
      return i + (l1 + l2);
      if (content != null) {}
      for (i = content.limit();; i = 0)
      {
        l1 = i;
        break;
      }
      l1 = memMapSize;
      break;
      i = 0;
      break label34;
      j = 0;
      break label49;
    }
  }
  
  @fa
  public String getType()
  {
    return type;
  }
  
  @fa
  public byte[] getUserType()
  {
    return userType;
  }
  
  public boolean isParsed()
  {
    return isParsed;
  }
  
  @fa
  public void parse(ex paramex, ByteBuffer paramByteBuffer, long paramLong, al paramal)
  {
    contentStartPosition = paramex.b();
    offset = (contentStartPosition - paramByteBuffer.remaining());
    memMapSize = paramLong;
    dataSource = paramex;
    paramex.a(paramex.b() + paramLong);
    isRead = false;
    isParsed = false;
  }
  
  public final void parseDetails()
  {
    try
    {
      readContent();
      LOG.a("parsing details of " + getType());
      if (content != null)
      {
        ByteBuffer localByteBuffer = content;
        isParsed = true;
        localByteBuffer.rewind();
        _parseDetails(localByteBuffer);
        if (localByteBuffer.remaining() > 0) {
          deadBytes = localByteBuffer.slice();
        }
        content = null;
        if ((!$assertionsDisabled) && (!verify(localByteBuffer))) {
          throw new AssertionError();
        }
      }
    }
    finally {}
  }
  
  protected void setDeadBytes(ByteBuffer paramByteBuffer)
  {
    deadBytes = paramByteBuffer;
  }
  
  @fa
  public void setParent(au paramau)
  {
    parent = paramau;
  }
}

/* Location:
 * Qualified Name:     et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */