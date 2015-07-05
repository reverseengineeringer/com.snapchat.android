.class public Lzx;
.super Lcom/snapchat/android/database/table/IdToFileTable;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lawp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lawp;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/database/table/IdToFileTable;-><init>()V

    .line 19
    iput-object p1, p0, Lzx;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lzx;->b:Lawp;

    .line 21
    return-void
.end method


# virtual methods
.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lzx;->b:Lawp;

    invoke-virtual {v0}, Lawp;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lzx;->b:Lawp;

    invoke-virtual {p0}, Lzx;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawp;->a(Ljava/util/Map;)V

    .line 31
    iget-object v0, p0, Lzx;->b:Lawp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawp;->a(Z)V

    .line 32
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lzx;->a:Ljava/lang/String;

    return-object v0
.end method
