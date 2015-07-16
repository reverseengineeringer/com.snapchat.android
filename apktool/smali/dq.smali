.class final Ldq;
.super Ldj;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldj",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ldm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ldj;-><init>()V

    .line 38
    iput-object p1, p0, Ldq;->a:Ldm;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lef",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Ldq;->a:Ldm;

    invoke-virtual {v0}, Ldm;->a()Ldr;

    move-result-object v0

    invoke-virtual {v0}, Ldr;->a()Lef;

    move-result-object v0

    invoke-static {v0}, Ldu;->a(Lef;)Lef;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldq;->a()Lef;

    move-result-object v0

    invoke-static {v0, p1}, Lds;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Ldl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldl",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ldq;->a:Ldm;

    invoke-virtual {v0}, Ldm;->a()Ldr;

    move-result-object v0

    invoke-virtual {v0}, Ldr;->b()Ldl;

    move-result-object v0

    .line 64
    new-instance v1, Ldq$1;

    invoke-direct {v1, p0, v0}, Ldq$1;-><init>(Ldq;Ldl;)V

    return-object v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Ldq;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldq;->a:Ldm;

    invoke-virtual {v0}, Ldm;->size()I

    move-result v0

    return v0
.end method
