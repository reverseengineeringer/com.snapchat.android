.class final Ldh;
.super Ldc;
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
        "Ldc",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ldf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ldc;-><init>()V

    .line 38
    iput-object p1, p0, Ldh;->a:Ldf;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Ldw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldw",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Ldh;->a:Ldf;

    invoke-virtual {v0}, Ldf;->c()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->a()Ldw;

    move-result-object v0

    invoke-static {v0}, Ldl;->a(Ldw;)Ldw;

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

    invoke-virtual {p0}, Ldh;->a()Ldw;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Lde;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ldh;->a:Ldf;

    invoke-virtual {v0}, Ldf;->c()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->b()Lde;

    move-result-object v0

    .line 64
    new-instance v1, Ldh$1;

    invoke-direct {v1, p0, v0}, Ldh$1;-><init>(Ldh;Lde;)V

    return-object v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Ldh;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldh;->a:Ldf;

    invoke-virtual {v0}, Ldf;->size()I

    move-result v0

    return v0
.end method
