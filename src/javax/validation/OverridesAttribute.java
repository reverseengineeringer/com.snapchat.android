package javax.validation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OverridesAttribute
{
  Class<? extends Annotation> constraint();
  
  int constraintIndex() default -1;
  
  String name();
  
  @Documented
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.METHOD})
  public static @interface List
  {
    OverridesAttribute[] value();
  }
}

/* Location:
 * Qualified Name:     javax.validation.OverridesAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */