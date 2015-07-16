.class final Ldu$1;
.super Lef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldu;->a(Lef;)Lef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lef",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lef;


# direct methods
.method constructor <init>(Lef;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Ldu$1;->a:Lef;

    invoke-direct {p0}, Lef;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ldu$1;->a:Lef;

    invoke-virtual {v0}, Lef;->hasNext()Z

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
    iget-object v0, p0, Ldu$1;->a:Lef;

    invoke-virtual {v0}, Lef;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
