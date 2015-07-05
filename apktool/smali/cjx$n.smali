.class final Lcjx$n;
.super Lcjx$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method protected constructor <init>(Lcgi;IZ)V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0, p1, p2, p3}, Lcjx$f;-><init>(Lcgi;IZ)V

    .line 1402
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lcjx$n;->b:I

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1412
    :try_start_0
    iget-object v0, p0, Lcjx$n;->a:Lcgi;

    invoke-virtual {v0, p4}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, p2, p3}, Lcgh;->a(J)I

    move-result v0

    invoke-static {p1, v0}, Lckb;->a(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    return-void

    .line 1415
    :catch_0
    move-exception v0

    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1431
    iget-object v0, p0, Lcjx$n;->a:Lcgi;

    invoke-interface {p2, v0}, Lchb;->b(Lcgi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    :try_start_0
    iget-object v0, p0, Lcjx$n;->a:Lcgi;

    invoke-interface {p2, v0}, Lchb;->a(Lcgi;)I

    move-result v0

    invoke-static {p1, v0}, Lckb;->a(Ljava/lang/StringBuffer;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :goto_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1438
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
