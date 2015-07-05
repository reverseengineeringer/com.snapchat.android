import java.io.EOFException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public abstract class ak
  implements al
{
  private static Logger b = Logger.getLogger(ak.class.getName());
  ThreadLocal<ByteBuffer> a = new ThreadLocal() {};
  
  public final as a(ex paramex, au paramau)
  {
    long l = paramex.b();
    ((ByteBuffer)a.get()).rewind().limit(8);
    int i;
    do
    {
      i = paramex.a((ByteBuffer)a.get());
      if (i == 8)
      {
        ((ByteBuffer)a.get()).rewind();
        l = ao.a((ByteBuffer)a.get());
        if ((l >= 8L) || (l <= 1L)) {
          break;
        }
        b.severe("Plausibility check failed: size < 8 (size = " + l + "). Stop parsing!");
        return null;
      }
    } while (i >= 0);
    paramex.a(l);
    throw new EOFException();
    String str2 = ao.e((ByteBuffer)a.get());
    Object localObject;
    if (l == 1L)
    {
      ((ByteBuffer)a.get()).limit(16);
      paramex.a((ByteBuffer)a.get());
      ((ByteBuffer)a.get()).position(8);
      l = ao.d((ByteBuffer)a.get()) - 16L;
      if (!"uuid".equals(str2)) {
        break label501;
      }
      ((ByteBuffer)a.get()).limit(((ByteBuffer)a.get()).limit() + 16);
      paramex.a((ByteBuffer)a.get());
      localObject = new byte[16];
      i = ((ByteBuffer)a.get()).position() - 16;
      label315:
      if (i < ((ByteBuffer)a.get()).position()) {
        break label452;
      }
      l -= 16L;
    }
    for (;;)
    {
      if ((paramau instanceof as)) {}
      for (String str1 = ((as)paramau).getType();; str1 = "")
      {
        localObject = a(str2, (byte[])localObject, str1);
        ((as)localObject).setParent(paramau);
        ((ByteBuffer)a.get()).rewind();
        ((as)localObject).parse(paramex, (ByteBuffer)a.get(), l, this);
        return (as)localObject;
        if (l == 0L)
        {
          l = paramex.a() - paramex.b();
          break;
        }
        l -= 8L;
        break;
        label452:
        localObject[(i - (((ByteBuffer)a.get()).position() - 16))] = ((ByteBuffer)a.get()).get(i);
        i += 1;
        break label315;
      }
      label501:
      localObject = null;
    }
  }
  
  public abstract as a(String paramString1, byte[] paramArrayOfByte, String paramString2);
}

/* Location:
 * Qualified Name:     ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */