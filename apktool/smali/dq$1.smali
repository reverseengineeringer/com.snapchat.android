.class final Ldq$1;
.super Ldi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldq;->d()Ldl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldi",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldl;

.field final synthetic c:Ldq;


# direct methods
.method constructor <init>(Ldq;Ldl;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ldq$1;->c:Ldq;

    iput-object p2, p0, Ldq$1;->b:Ldl;

    invoke-direct {p0}, Ldi;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Ldj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldj",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ldq$1;->c:Ldq;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Ldq$1;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
