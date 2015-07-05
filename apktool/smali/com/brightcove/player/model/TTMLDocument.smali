.class public Lcom/brightcove/player/model/TTMLDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private body:Lcom/brightcove/player/model/Block;

.field private captions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/captioning/BrightcoveClosedCaption;",
            ">;"
        }
    .end annotation
.end field

.field private regions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/Region;",
            ">;"
        }
    .end annotation
.end field

.field private styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/StyledElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/brightcove/player/model/Block;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/Region;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/StyledElement;",
            ">;",
            "Lcom/brightcove/player/model/Block;",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/captioning/BrightcoveClosedCaption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide collections for regions, styles, body and captions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/brightcove/player/model/TTMLDocument;->regions:Ljava/util/Map;

    .line 48
    iput-object p2, p0, Lcom/brightcove/player/model/TTMLDocument;->styles:Ljava/util/Map;

    .line 49
    iput-object p3, p0, Lcom/brightcove/player/model/TTMLDocument;->body:Lcom/brightcove/player/model/Block;

    .line 50
    iput-object p4, p0, Lcom/brightcove/player/model/TTMLDocument;->captions:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getBody()Lcom/brightcove/player/model/Block;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/brightcove/player/model/TTMLDocument;->body:Lcom/brightcove/player/model/Block;

    return-object v0
.end method

.method public getCaptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/captioning/BrightcoveClosedCaption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/brightcove/player/model/TTMLDocument;->captions:Ljava/util/List;

    return-object v0
.end method

.method public getRegions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/brightcove/player/model/TTMLDocument;->regions:Ljava/util/Map;

    return-object v0
.end method

.method public getStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/brightcove/player/model/StyledElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/brightcove/player/model/TTMLDocument;->styles:Ljava/util/Map;

    return-object v0
.end method
