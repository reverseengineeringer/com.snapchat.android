.class public Lcom/brightcove/player/model/Region;
.super Lcom/brightcove/player/model/StyledElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/model/Region$DisplayAlign;
    }
.end annotation


# instance fields
.field private displayAlign:Lcom/brightcove/player/model/Region$DisplayAlign;

.field private extentX:Lcom/brightcove/player/model/Length;

.field private extentY:Lcom/brightcove/player/model/Length;

.field private originX:Lcom/brightcove/player/model/Length;

.field private originY:Lcom/brightcove/player/model/Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getDisplayAlign()Lcom/brightcove/player/model/Region$DisplayAlign;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/brightcove/player/model/Region;->displayAlign:Lcom/brightcove/player/model/Region$DisplayAlign;

    return-object v0
.end method

.method public getExtentX()Lcom/brightcove/player/model/Length;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/brightcove/player/model/Region;->extentX:Lcom/brightcove/player/model/Length;

    return-object v0
.end method

.method public getExtentY()Lcom/brightcove/player/model/Length;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/brightcove/player/model/Region;->extentY:Lcom/brightcove/player/model/Length;

    return-object v0
.end method

.method public getOriginX()Lcom/brightcove/player/model/Length;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/brightcove/player/model/Region;->originX:Lcom/brightcove/player/model/Length;

    return-object v0
.end method

.method public getOriginY()Lcom/brightcove/player/model/Length;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/brightcove/player/model/Region;->originY:Lcom/brightcove/player/model/Length;

    return-object v0
.end method

.method public setDisplayAlign(Lcom/brightcove/player/model/Region$DisplayAlign;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/brightcove/player/model/Region;->displayAlign:Lcom/brightcove/player/model/Region$DisplayAlign;

    .line 107
    return-void
.end method

.method public setExtentX(Lcom/brightcove/player/model/Length;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/brightcove/player/model/Region;->extentX:Lcom/brightcove/player/model/Length;

    .line 79
    return-void
.end method

.method public setExtentY(Lcom/brightcove/player/model/Length;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/brightcove/player/model/Region;->extentY:Lcom/brightcove/player/model/Length;

    .line 93
    return-void
.end method

.method public setOriginX(Lcom/brightcove/player/model/Length;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/brightcove/player/model/Region;->originX:Lcom/brightcove/player/model/Length;

    .line 51
    return-void
.end method

.method public setOriginY(Lcom/brightcove/player/model/Length;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/brightcove/player/model/Region;->originY:Lcom/brightcove/player/model/Length;

    .line 65
    return-void
.end method
