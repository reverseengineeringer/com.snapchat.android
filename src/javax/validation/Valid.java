package javax.validation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.PARAMETER})
public @interface Valid {}

/* Location:
 * Qualified Name:     javax.validation.Valid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */