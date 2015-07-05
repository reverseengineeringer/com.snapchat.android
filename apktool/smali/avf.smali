.class public final Lavf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)D
    .locals 4

    .prologue
    .line 15
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
