.class Lcjx$g;
.super Lcjx$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field protected final d:I


# direct methods
.method protected constructor <init>(Lcgi;IZI)V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0, p1, p2, p3}, Lcjx$f;-><init>(Lcgi;IZ)V

    .line 1464
    iput p4, p0, Lcjx$g;->d:I

    .line 1465
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lcjx$g;->b:I

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1475
    :try_start_0
    iget-object v0, p0, Lcjx$g;->a:Lcgi;

    invoke-virtual {v0, p4}, Lcgi;->a(Lcgf;)Lcgh;

    move-result-object v0

    .line 1476
    invoke-virtual {v0, p2, p3}, Lcgh;->a(J)I

    move-result v0

    iget v1, p0, Lcjx$g;->d:I

    invoke-static {p1, v0, v1}, Lckb;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1478
    :catch_0
    move-exception v0

    iget v0, p0, Lcjx$g;->d:I

    invoke-static {p1, v0}, Lcjx;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcjx$g;->a:Lcgi;

    invoke-interface {p2, v0}, Lchb;->b(Lcgi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    :try_start_0
    iget-object v0, p0, Lcjx$g;->a:Lcgi;

    invoke-interface {p2, v0}, Lchb;->a(Lcgi;)I

    move-result v0

    iget v1, p0, Lcjx$g;->d:I

    invoke-static {p1, v0, v1}, Lckb;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 1498
    :cond_0
    iget v0, p0, Lcjx$g;->d:I

    invoke-static {p1, v0}, Lcjx;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method
