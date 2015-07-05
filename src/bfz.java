import java.security.SecureRandom;

public final class bfz
{
  final SecureRandom mRgen;
  
  public bfz()
  {
    this(new SecureRandom());
  }
  
  private bfz(SecureRandom paramSecureRandom)
  {
    mRgen = paramSecureRandom;
  }
}

/* Location:
 * Qualified Name:     bfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */