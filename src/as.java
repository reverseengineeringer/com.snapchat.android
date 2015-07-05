import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public abstract interface as
{
  public abstract void getBox(WritableByteChannel paramWritableByteChannel);
  
  public abstract au getParent();
  
  public abstract long getSize();
  
  public abstract String getType();
  
  public abstract void parse(ex paramex, ByteBuffer paramByteBuffer, long paramLong, al paramal);
  
  public abstract void setParent(au paramau);
}

/* Location:
 * Qualified Name:     as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */