import java.util.Locale;

public final class aug
{
  public static <E extends Enum<E>> String a(E paramE)
  {
    return paramE.name().toLowerCase(Locale.ENGLISH);
  }
}

/* Location:
 * Qualified Name:     aug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */