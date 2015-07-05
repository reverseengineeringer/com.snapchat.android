.class public final Lbmt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 41
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 42
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return p1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return p1
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 56
    const p1, 0x7fffffff

    .line 63
    :goto_0
    return p1

    .line 57
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 58
    const/4 p1, 0x0

    goto :goto_0

    .line 60
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method
