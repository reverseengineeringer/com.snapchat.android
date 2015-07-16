.class final Ldp$1;
.super Ldi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldp;->d()Ldl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldi",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldl;

.field final synthetic c:Ldp;


# direct methods
.method constructor <init>(Ldp;Ldl;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Ldp$1;->c:Ldp;

    iput-object p2, p0, Ldp$1;->b:Ldl;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ldp$1;->c:Ldp;

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
    iget-object v0, p0, Ldp$1;->b:Ldl;

    invoke-virtual {v0, p1}, Ldl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
