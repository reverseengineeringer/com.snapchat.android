.class public final Lchq;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {v0}, Lckw;->a(Ljava/lang/String;)Lckx;

    move-result-object v0

    new-instance v1, Lchr;

    invoke-direct {v1, p1, p2}, Lchr;-><init>(J)V

    invoke-virtual {v0, v1}, Lckx;->a(Lcia;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal instant due to time zone offset transition (daylight savings time \'gap\'): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void

    .line 63
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
