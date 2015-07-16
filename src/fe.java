import java.nio.ByteBuffer;

public abstract class fe
  extends fc
  implements av
{
  private int flags;
  private int version;
  
  static {}
  
  public fe(String paramString)
  {
    super(paramString);
  }
  
  protected fe(String paramString, byte[] paramArrayOfByte)
  {
    super(paramString, paramArrayOfByte);
  }
  
  @fj
  public int getFlags()
  {
    if (!isParsed) {
      parseDetails();
    }
    return flags;
  }
  
  @fj
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
    cfl localcfl = cgl.a(ajc$tjp_1, this, this, cgj.a(paramInt));
    fi.a();
    fi.a(localcfl);
    flags = paramInt;
  }
  
  public void setVersion(int paramInt)
  {
    cfl localcfl = cgl.a(ajc$tjp_0, this, this, cgj.a(paramInt));
    fi.a();
    fi.a(localcfl);
    version = paramInt;
  }
  
  public final void writeVersionAndFlags(ByteBuffer paramByteBuffer)
  {
    ap.b(paramByteBuffer, version);
    ap.a(paramByteBuffer, flags);
  }
}

/* Location:
 * Qualified Name:     fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */