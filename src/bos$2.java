import java.util.zip.Inflater;

final class bos$2
  extends Inflater
{
  bos$2(bos parambos) {}
  
  public final int inflate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    int i = j;
    if (j == 0)
    {
      i = j;
      if (needsDictionary())
      {
        setDictionary(bow.a);
        i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     bos.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */