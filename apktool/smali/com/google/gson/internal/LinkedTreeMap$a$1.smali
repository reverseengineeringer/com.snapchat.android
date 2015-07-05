.class final Lcom/google/gson/internal/LinkedTreeMap$a$1;
.super Lcom/google/gson/internal/LinkedTreeMap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedTreeMap$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/LinkedTreeMap$a;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$a;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$a$1;->a:Lcom/google/gson/internal/LinkedTreeMap$a;

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$a;->a:Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap$c;-><init>(Lcom/google/gson/internal/LinkedTreeMap;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$a$1;->a()Lcom/google/gson/internal/LinkedTreeMap$d;

    move-result-object v0

    return-object v0
.end method
