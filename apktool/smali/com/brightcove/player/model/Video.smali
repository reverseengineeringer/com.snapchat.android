.class public Lcom/brightcove/player/model/Video;
.super Lcom/brightcove/player/model/MetadataObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/model/Video$Fields;
    }
.end annotation


# instance fields
.field private cuePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCollectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/brightcove/player/media/DeliveryType;",
            "Lcom/brightcove/player/model/SourceCollection;",
            ">;"
        }
    .end annotation
.end field


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
    .line 44
    invoke-direct {p0, p1}, Lcom/brightcove/player/model/MetadataObject;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
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
            "Lcom/brightcove/player/model/SourceCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/brightcove/player/model/MetadataObject;-><init>(Ljava/util/Map;)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourceCollectionsRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/SourceCollection;

    .line 63
    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "duplicateDeliveryTypes"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/brightcove/player/model/SourceCollection;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_2
    iput-object v1, p0, Lcom/brightcove/player/model/Video;->sourceCollectionMap:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
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
            "Lcom/brightcove/player/model/SourceCollection;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    .line 82
    if-nez p3, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cuePointsRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p3, p0, Lcom/brightcove/player/model/Video;->cuePoints:Ljava/util/List;

    .line 86
    return-void
.end method

.method public static createVideo(Ljava/lang/String;)Lcom/brightcove/player/model/Video;
    .locals 3

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uriRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->UNKNOWN:Lcom/brightcove/player/media/DeliveryType;

    .line 99
    const-string v1, "[?]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->MP4:Lcom/brightcove/player/media/DeliveryType;

    .line 107
    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/brightcove/player/model/Video;->createVideo(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)Lcom/brightcove/player/model/Video;

    move-result-object v0

    return-object v0

    .line 102
    :cond_2
    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    :cond_3
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_0

    .line 104
    :cond_4
    const-string v2, "/dash/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v0, Lcom/brightcove/player/media/DeliveryType;->DASH:Lcom/brightcove/player/media/DeliveryType;

    goto :goto_0
.end method

.method public static createVideo(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)Lcom/brightcove/player/model/Video;
    .locals 4

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uriRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    new-instance v1, Lcom/brightcove/player/model/Source;

    invoke-direct {v1, p0, p1}, Lcom/brightcove/player/model/Source;-><init>(Ljava/lang/String;Lcom/brightcove/player/media/DeliveryType;)V

    .line 123
    new-instance v2, Lcom/brightcove/player/model/SourceCollection;

    invoke-direct {v2, v1, p1}, Lcom/brightcove/player/model/SourceCollection;-><init>(Lcom/brightcove/player/model/Source;Lcom/brightcove/player/media/DeliveryType;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/brightcove/player/model/Video;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/brightcove/player/model/Video;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/CuePoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->cuePoints:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number value seen for duration in Video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v3, "duration"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    const-string v0, ""

    .line 172
    iget-object v1, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    return-object v0
.end method

.method public getSourceCollections()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/brightcove/player/media/DeliveryType;",
            "Lcom/brightcove/player/model/SourceCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->sourceCollectionMap:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v0, "Video{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "name: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v3, "shortDescription"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    const-string v0, ", shortDescription: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->properties:Ljava/util/Map;

    const-string v3, "shortDescription"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    const-string v0, ", sourceCollections: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->sourceCollectionMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brightcove/player/model/Video;->sourceCollectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, ", cuePoints: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v0, p0, Lcom/brightcove/player/model/Video;->cuePoints:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brightcove/player/model/Video;->cuePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    .line 158
    goto :goto_0
.end method
