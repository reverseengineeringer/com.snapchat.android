import java.nio.ByteBuffer;

public class ax
  extends at
{
  public long[] a = new long[0];
  
  static
  {
    cgl localcgl = new cgl("StaticChunkOffsetBox.java", ax.class);
    c = localcgl.a("method-execution", localcgl.a("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
    b = localcgl.a("method-execution", localcgl.a("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 47);
  }
  
  public ax()
  {
    super("stco");
  }
  
  public void _parseDetails(ByteBuffer paramByteBuffer)
  {
    parseVersionAndFlags(paramByteBuffer);
    int j = fn.a(ao.a(paramByteBuffer));
    a = new long[j];
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      a[i] = ao.a(paramByteBuffer);
      i += 1;
    }
  }
  
  public final long[] a()
  {
    cfl localcfl = cgl.a(c, this, this);
    fi.a();
    fi.a(localcfl);
    return a;
  }
  
  protected void getContent(ByteBuffer paramByteBuffer)
  {
    writeVersionAndFlags(paramByteBuffer);
    ap.b(paramByteBuffer, a.length);
    long[] arrayOfLong = a;
    int j = arrayOfLong.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      ap.b(paramByteBuffer, arrayOfLong[i]);
      i += 1;
    }
  }
  
  protected long getContentSize()
  {
    return a.length * 4 + 8;
  }
}

/* Location:
 * Qualified Name:     ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */