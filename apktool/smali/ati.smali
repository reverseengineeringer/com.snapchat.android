.class public final Lati;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 10
    const-string v0, ""

    .line 11
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 12
    invoke-static {p0, p1, p2}, Lata;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    if-eqz p3, :cond_1

    .line 23
    :goto_0
    return-object p3

    .line 16
    :cond_1
    const-string p3, ""

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p3, v0

    .line 20
    goto :goto_0

    .line 23
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p3, v1, v0

    const/4 v0, 0x0

    const v2, 0x7f0c0132

    invoke-static {v0, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method
