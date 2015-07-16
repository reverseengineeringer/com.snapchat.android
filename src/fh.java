import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.nio.channels.WritableByteChannel;

public final class fh
  implements fg
{
  FileChannel a;
  String b;
  
  public fh(File paramFile)
  {
    a = new FileInputStream(paramFile).getChannel();
    b = paramFile.getName();
  }
  
  public final int a(ByteBuffer paramByteBuffer)
  {
    return a.read(paramByteBuffer);
  }
  
  public final long a()
  {
    return a.size();
  }
  
  public final long a(long paramLong1, long paramLong2, WritableByteChannel paramWritableByteChannel)
  {
    return a.transferTo(paramLong1, paramLong2, paramWritableByteChannel);
  }
  
  public final ByteBuffer a(long paramLong1, long paramLong2)
  {
    return a.map(FileChannel.MapMode.READ_ONLY, paramLong1, paramLong2);
  }
  
  public final void a(long paramLong)
  {
    a.position(paramLong);
  }
  
  public final long b()
  {
    return a.position();
  }
  
  public final void close()
  {
    a.close();
  }
  
  public final String toString()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */