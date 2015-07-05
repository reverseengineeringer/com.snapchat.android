.class public Lcom/brightcove/player/model/SourceCollection;
.super Lcom/brightcove/player/model/SourceAwareMetadataObject;
.source "SourceFile"


# instance fields
.field private sources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/brightcove/player/model/Source;Lcom/brightcove/player/media/DeliveryType;)V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/brightcove/player/model/SourceAwareMetadataObject;-><init>(Ljava/util/Map;)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourceRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    .line 87
    iget-object v0, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0, p2}, Lcom/brightcove/player/model/SourceCollection;->initializeDeliveryType(Lcom/brightcove/player/media/DeliveryType;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/brightcove/player/model/SourceAwareMetadataObject;-><init>(Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/brightcove/player/model/SourceAwareMetadataObject;-><init>(Ljava/util/Map;)V

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourcesRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lcom/brightcove/player/media/DeliveryType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;",
            "Lcom/brightcove/player/media/DeliveryType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/brightcove/player/model/SourceAwareMetadataObject;-><init>(Ljava/util/Map;)V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourcesRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    .line 72
    invoke-virtual {p0, p2}, Lcom/brightcove/player/model/SourceCollection;->initializeDeliveryType(Lcom/brightcove/player/media/DeliveryType;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v0, "SourceCollection{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, " deliveryType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/model/SourceCollection;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brightcove/player/media/DeliveryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, " sources:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "} "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/model/SourceCollection;->sources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method
