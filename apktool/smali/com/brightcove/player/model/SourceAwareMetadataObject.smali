.class public abstract Lcom/brightcove/player/model/SourceAwareMetadataObject;
.super Lcom/brightcove/player/model/MetadataObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/model/SourceAwareMetadataObject$Fields;
    }
.end annotation


# direct methods
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
    .line 28
    invoke-direct {p0, p1}, Lcom/brightcove/player/model/MetadataObject;-><init>(Ljava/util/Map;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getDeliveryType()Lcom/brightcove/player/media/DeliveryType;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/brightcove/player/model/SourceAwareMetadataObject;->properties:Ljava/util/Map;

    const-string v1, "deliveryType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/brightcove/player/media/DeliveryType;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lcom/brightcove/player/media/DeliveryType;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_0
.end method

.method protected initializeDeliveryType(Lcom/brightcove/player/media/DeliveryType;)V
    .locals 2

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deliveryTypeRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/model/SourceAwareMetadataObject;->properties:Ljava/util/Map;

    const-string v1, "deliveryType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
