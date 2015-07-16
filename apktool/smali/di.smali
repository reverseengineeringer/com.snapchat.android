.class abstract Ldi;
.super Ldl;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldl",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ldl;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method abstract c()Ldj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldj",
            "<TE;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Ldi;->c()Ldj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldj;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Ldi;->c()Ldj;

    move-result-object v0

    invoke-virtual {v0}, Ldj;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ldi;->c()Ldj;

    move-result-object v0

    invoke-virtual {v0}, Ldj;->size()I

    move-result v0

    return v0
.end method
