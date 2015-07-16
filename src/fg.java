import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public abstract interface fg
  extends Closeable
{
  public abstract int a(ByteBuffer paramByteBuffer);
  
  public abstract long a();
  
  public abstract long a(long paramLong1, long paramLong2, WritableByteChannel paramWritableByteChannel);
  
  public abstract ByteBuffer a(long paramLong1, long paramLong2);
  
  public abstract void a(long paramLong);
  
  public abstract long b();
  
  public abstract void close();
}

/* Location:
 * Qualified Name:     fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */