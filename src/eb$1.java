import java.io.OutputStream;

final class eb$1
  extends OutputStream
{
  public final String toString()
  {
    return "ByteStreams.nullOutputStream()";
  }
  
  public final void write(int paramInt) {}
  
  public final void write(byte[] paramArrayOfByte)
  {
    ck.a(paramArrayOfByte);
  }
  
  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ck.a(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     eb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */