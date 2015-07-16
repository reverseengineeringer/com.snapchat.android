import java.security.SecureRandom;

public final class bgz
{
  final SecureRandom mRgen;
  
  public bgz()
  {
    this(new SecureRandom());
  }
  
  private bgz(SecureRandom paramSecureRandom)
  {
    mRgen = paramSecureRandom;
  }
}

/* Location:
 * Qualified Name:     bgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */