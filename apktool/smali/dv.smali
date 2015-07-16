.class final Ldv;
.super Ldx;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldx",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ldx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldx",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldx",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ldx;-><init>()V

    .line 31
    iput-object p1, p0, Ldv;->a:Ldx;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ldx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Ldx",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 58
    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    if-nez p2, :cond_2

    .line 42
    const/4 v0, -0x1

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Ldv;->a:Ldx;

    invoke-virtual {v0, p1, p2}, Ldx;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    if-ne p1, p0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    instance-of v0, p1, Ldv;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Ldv;

    .line 67
    iget-object v0, p0, Ldv;->a:Ldx;

    iget-object v1, p1, Ldv;->a:Ldx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Ldv;->a:Ldx;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x36e88db8    # -620324.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Ldv;->a:Ldx;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsLast()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
