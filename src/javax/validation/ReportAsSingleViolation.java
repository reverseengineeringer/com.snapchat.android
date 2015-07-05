package javax.validation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.ANNOTATION_TYPE})
public @interface ReportAsSingleViolation {}

/* Location:
 * Qualified Name:     javax.validation.ReportAsSingleViolation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */