.class public final Laja;
.super Laiw;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcht;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Laiw;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laja;->d:Ljava/util/List;

    .line 28
    new-instance v0, Lcht;

    invoke-direct {v0}, Lcht;-><init>()V

    iput-object v0, p0, Laja;->e:Lcht;

    .line 32
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 2
    .annotation build Lcbr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Laja;->e:Lcht;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcht;->b(I)Lcht;

    move-result-object v0

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcht;->c(Lcic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Filters are expired("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laja;->e:Lcht;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Laja;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Laja;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method
