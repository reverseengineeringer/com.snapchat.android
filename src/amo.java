public abstract class amo
  extends amn
{
  private final aka c;
  
  public amo(aka paramaka, axn paramaxn, String paramString)
  {
    super(paramaxn, paramString);
    c = ((aka)co.a(paramaka));
  }
  
  protected final void a(bgl parambgl)
  {
    co.a(parambgl);
    if (mSize > 0) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool);
      if ((parambgl == null) || (mSize <= 0)) {
        break;
      }
      byte[] arrayOfByte = new byte[mSize];
      System.arraycopy(mBuffer, 0, arrayOfByte, 0, mSize);
      parambgl = c.L().a(arrayOfByte, c.d());
      if (parambgl != null) {
        break label128;
      }
      throw new Exception(String.format("Decrypted null data for %s", new Object[] { c }));
    }
    throw new Exception(String.format("Result buffer is null or empty for %s", new Object[] { c }));
    label128:
    a.a(b, parambgl);
  }
}

/* Location:
 * Qualified Name:     amo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */