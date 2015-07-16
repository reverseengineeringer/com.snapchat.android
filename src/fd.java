import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public class fd
  extends ff
  implements as
{
  protected boolean largeBox;
  private long offset;
  au parent;
  protected String type;
  
  public fd(String paramString)
  {
    type = paramString;
  }
  
  public void getBox(WritableByteChannel paramWritableByteChannel)
  {
    paramWritableByteChannel.write(getHeader());
    writeContainer(paramWritableByteChannel);
  }
  
  protected ByteBuffer getHeader()
  {
    Object localObject;
    if ((largeBox) || (getSize() >= 4294967296L))
    {
      localObject = new byte[16];
      localObject[3] = 1;
      localObject[4] = type.getBytes()[0];
      localObject[5] = type.getBytes()[1];
      localObject[6] = type.getBytes()[2];
      localObject[7] = type.getBytes()[3];
      localObject = ByteBuffer.wrap((byte[])localObject);
      ((ByteBuffer)localObject).position(8);
      ap.a((ByteBuffer)localObject, getSize());
    }
    for (;;)
    {
      ((ByteBuffer)localObject).rewind();
      return (ByteBuffer)localObject;
      localObject = new byte[8];
      localObject[4] = type.getBytes()[0];
      localObject[5] = type.getBytes()[1];
      localObject[6] = type.getBytes()[2];
      localObject[7] = type.getBytes()[3];
      localObject = ByteBuffer.wrap((byte[])localObject);
      ap.b((ByteBuffer)localObject, getSize());
    }
  }
  
  public long getOffset()
  {
    return offset;
  }
  
  public au getParent()
  {
    return parent;
  }
  
  public long getSize()
  {
    long l = getContainerSize();
    if ((largeBox) || (8L + l >= 4294967296L)) {}
    for (int i = 16;; i = 8) {
      return i + l;
    }
  }
  
  public String getType()
  {
    return type;
  }
  
  public void initContainer(fg paramfg, long paramLong, al paramal)
  {
    dataSource = paramfg;
    parsePosition = paramfg.b();
    long l = parsePosition;
    if ((largeBox) || (8L + paramLong >= 4294967296L)) {}
    for (int i = 16;; i = 8)
    {
      startPosition = (l - i);
      paramfg.a(paramfg.b() + paramLong);
      endPosition = paramfg.b();
      boxParser = paramal;
      return;
    }
  }
  
  public void parse(fg paramfg, ByteBuffer paramByteBuffer, long paramLong, al paramal)
  {
    offset = (paramfg.b() - paramByteBuffer.remaining());
    if (paramByteBuffer.remaining() == 16) {}
    for (boolean bool = true;; bool = false)
    {
      largeBox = bool;
      initContainer(paramfg, paramLong, paramal);
      return;
    }
  }
  
  public void setParent(au paramau)
  {
    parent = paramau;
  }
}

/* Location:
 * Qualified Name:     fd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */