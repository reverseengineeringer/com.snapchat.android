.class final Ldg$1;
.super Lda;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldg;->d()Lde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lda",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lde;

.field final synthetic c:Ldg;


# direct methods
.method constructor <init>(Ldg;Lde;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ldg$1;->c:Ldg;

    iput-object p2, p0, Ldg$1;->b:Lde;

    invoke-direct {p0}, Lda;-><init>()V

    return-void
.end method


# virtual methods
.method final c()Ldc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldc",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ldg$1;->c:Ldg;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ldg$1;->b:Lde;

    invoke-virtual {v0, p1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
