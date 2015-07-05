.class final Ldh$1;
.super Lda;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh;->d()Lde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lda",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lde;

.field final synthetic c:Ldh;


# direct methods
.method constructor <init>(Ldh;Lde;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ldh$1;->c:Ldh;

    iput-object p2, p0, Ldh$1;->b:Lde;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ldh$1;->c:Ldh;

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
    iget-object v0, p0, Ldh$1;->b:Lde;

    invoke-virtual {v0, p1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
