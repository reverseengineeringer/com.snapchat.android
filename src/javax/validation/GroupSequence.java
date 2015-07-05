package javax.validation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface GroupSequence
{
  Class<?>[] value();
}

/* Location:
 * Qualified Name:     javax.validation.GroupSequence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */