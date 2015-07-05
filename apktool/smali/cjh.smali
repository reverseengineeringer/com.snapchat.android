.class public final Lcjh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)I
    .locals 4

    .prologue
    .line 187
    const-wide/32 v0, -0x80000000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 188
    long-to-int v0, p0

    return v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value cannot fit in an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(JJ)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 82
    add-long v0, p0, p2

    .line 84
    xor-long v2, p0, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 85
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The calculation caused an overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-wide v0
.end method

.method public static a(Lcgh;III)V
    .locals 5

    .prologue
    .line 217
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 218
    :cond_0
    new-instance v0, Lcgo;

    invoke-virtual {p0}, Lcgh;->a()Lcgi;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgo;-><init>(Lcgi;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 222
    :cond_1
    return-void
.end method

.method public static a(Lcgi;III)V
    .locals 4

    .prologue
    .line 235
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 236
    :cond_0
    new-instance v0, Lcgo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcgo;-><init>(Lcgi;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 240
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 321
    if-ne p0, p1, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    .line 324
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(JJ)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 100
    sub-long v0, p0, p2

    .line 102
    xor-long v2, p0, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 103
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The calculation caused an overflow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-wide v0
.end method
