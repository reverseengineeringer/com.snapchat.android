.class final Ldl$1;
.super Ldw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldl;->a(Ldw;)Ldw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldw",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldw;


# direct methods
.method constructor <init>(Ldw;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Ldl$1;->a:Ldw;

    invoke-direct {p0}, Ldw;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ldl$1;->a:Ldw;

    invoke-virtual {v0}, Ldw;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Ldl$1;->a:Ldw;

    invoke-virtual {v0}, Ldw;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
