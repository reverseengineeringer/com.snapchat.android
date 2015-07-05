import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface bz$b
{
  String a();
  
  boolean b() default true;
}

/* Location:
 * Qualified Name:     bz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */