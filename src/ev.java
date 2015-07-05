import java.nio.ByteBuffer;

public abstract class ev
  extends et
  implements av
{
  private int flags;
  private int version;
  
  static {}
  
  public ev(String paramString)
  {
    super(paramString);
  }
  
  protected ev(String paramString, byte[] paramArrayOfByte)
  {
    super(paramString, paramArrayOfByte);
  }
  
  @fa
  public int getFlags()
  {
    if (!isParsed) {
      parseDetails();
    }
    return flags;
  }
  
  @fa
  public int getVersion()
  {
    if (!isParsed) {
      parseDetails();
    }
    return version;
  }
  
  public final long parseVersionAndFlags(ByteBuffer paramByteBuffer)
  {
    version = ao.c(paramByteBuffer);
    flags = ao.b(paramByteBuffer);
    return 4L;
  }
  
  public void setFlags(int paramInt)
  {
    cek localcek = cfk.a(ajc$tjp_1, this, this, cfi.a(paramInt));
    ez.a();
    ez.a(localcek);
    flags = paramInt;
  }
  
  public void setVersion(int paramInt)
  {
    cek localcek = cfk.a(ajc$tjp_0, this, this, cfi.a(paramInt));
    ez.a();
    ez.a(localcek);
    version = paramInt;
  }
  
  public final void writeVersionAndFlags(ByteBuffer paramByteBuffer)
  {
    ap.b(paramByteBuffer, version);
    ap.a(paramByteBuffer, flags);
  }
}

/* Location:
 * Qualified Name:     ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */