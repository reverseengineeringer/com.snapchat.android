.class final Ldg;
.super Ldi;
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
        "Ldi",
        "<TK;>;"
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
    invoke-direct {p0}, Ldi;-><init>()V

    .line 38
    iput-object p1, p0, Ldg;->a:Ldf;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Ldg;->b()Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->a()Ldw;

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
    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-virtual {v0, p1}, Ldf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final d()Lde;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-virtual {v0}, Ldf;->c()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->b()Lde;

    move-result-object v0

    .line 59
    new-instance v1, Ldg$1;

    invoke-direct {v1, p0, v0}, Ldg$1;-><init>(Ldg;Lde;)V

    return-object v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Ldg;->b()Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ldg;->a:Ldf;

    invoke-virtual {v0}, Ldf;->size()I

    move-result v0

    return v0
.end method
