.class public final Laie;
.super Laia;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Laia;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laie;->d:Ljava/util/List;

    .line 28
    new-instance v0, Lcgs;

    invoke-direct {v0}, Lcgs;-><init>()V

    iput-object v0, p0, Laie;->e:Lcgs;

    .line 32
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 3
    .annotation build Lcaq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laiv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Laie;->e:Lcgs;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcgs;->b(I)Lcgs;

    move-result-object v0

    invoke-static {}, Lcgs;->c()Lcgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgs;->c(Lchb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "InMemoryGeofilterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filters are expired("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laie;->e:Lcgs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Laie;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Laie;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method
