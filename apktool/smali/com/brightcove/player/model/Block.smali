.class public Lcom/brightcove/player/model/Block;
.super Lcom/brightcove/player/model/StyledElement;
.source "SourceFile"


# instance fields
.field public beginTime:Ljava/lang/Integer;

.field public endTime:Ljava/lang/Integer;

.field protected region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeginTime()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/brightcove/player/model/Block;->beginTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/brightcove/player/model/Block;->endTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/brightcove/player/model/Block;->region:Ljava/lang/String;

    return-object v0
.end method

.method public setBeginTime(I)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Block;->beginTime:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setEndTime(I)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Block;->endTime:Ljava/lang/Integer;

    .line 54
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/brightcove/player/model/Block;->region:Ljava/lang/String;

    .line 70
    return-void
.end method
