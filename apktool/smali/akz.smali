.class public final Lakz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)J
    .locals 6

    .prologue
    .line 31
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p2

    .line 32
    long-to-double v0, v0

    long-to-double v2, p0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
