.class public Lcom/brightcove/player/model/CuePoint;
.super Lcom/brightcove/player/model/MetadataObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/model/CuePoint$PositionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brightcove/player/model/MetadataObject;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/brightcove/player/model/CuePoint;",
        ">;"
    }
.end annotation


# instance fields
.field private position:I

.field private positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p3}, Lcom/brightcove/player/model/MetadataObject;-><init>(Ljava/util/Map;)V

    .line 60
    sget-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    iput-object v0, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    .line 61
    iput p1, p0, Lcom/brightcove/player/model/CuePoint;->position:I

    .line 62
    iput-object p2, p0, Lcom/brightcove/player/model/CuePoint;->type:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/model/CuePoint$PositionType;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/CuePoint$PositionType;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p3}, Lcom/brightcove/player/model/MetadataObject;-><init>(Ljava/util/Map;)V

    .line 42
    sget-object v0, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-ne p1, v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "otherConstructor"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    .line 47
    iput-object p2, p0, Lcom/brightcove/player/model/CuePoint;->type:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brightcove/player/model/CuePoint;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 83
    const/4 v2, 0x0

    .line 85
    iget-object v3, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-eq v3, v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-ne v3, v4, :cond_4

    .line 90
    iget-object v3, p1, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->BEFORE:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v3, p1, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v4, Lcom/brightcove/player/model/CuePoint$PositionType;->AFTER:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-eq v3, v4, :cond_0

    .line 94
    iget v3, p0, Lcom/brightcove/player/model/CuePoint;->position:I

    iget v4, p1, Lcom/brightcove/player/model/CuePoint;->position:I

    if-lt v3, v4, :cond_0

    .line 96
    iget v0, p0, Lcom/brightcove/player/model/CuePoint;->position:I

    iget v3, p1, Lcom/brightcove/player/model/CuePoint;->position:I

    if-le v0, v3, :cond_4

    move v0, v1

    .line 97
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/brightcove/player/model/CuePoint;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/model/CuePoint;->compareTo(Lcom/brightcove/player/model/CuePoint;)I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    sget-object v1, Lcom/brightcove/player/model/CuePoint$PositionType;->POINT_IN_TIME:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-eq v0, v1, :cond_0

    .line 71
    const-string v0, "invalidPointInTime"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    invoke-virtual {v3}, Lcom/brightcove/player/model/CuePoint$PositionType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iget v0, p0, Lcom/brightcove/player/model/CuePoint;->position:I

    return v0
.end method

.method public getPositionType()Lcom/brightcove/player/model/CuePoint$PositionType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v0, "CuePoint {"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "position:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v0, p0, Lcom/brightcove/player/model/CuePoint;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, " positionType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, " type:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->positionType:Lcom/brightcove/player/model/CuePoint$PositionType;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/model/CuePoint;->type:Ljava/lang/String;

    goto :goto_1
.end method
