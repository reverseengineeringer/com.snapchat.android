.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaption;
.super Lcom/brightcove/player/model/Block;
.source "SourceFile"


# instance fields
.field private caption:Ljava/lang/String;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Span;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/brightcove/player/model/Block;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/brightcove/player/model/Block;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->beginTime:Ljava/lang/Integer;

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->endTime:Ljava/lang/Integer;

    .line 47
    iput-object p3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->caption:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Span;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/brightcove/player/model/Block;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->beginTime:Ljava/lang/Integer;

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->endTime:Ljava/lang/Integer;

    .line 41
    iput-object p3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->lines:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Span;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->lines:Ljava/util/List;

    return-object v0
.end method

.method public setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Span;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaption;->lines:Ljava/util/List;

    .line 64
    return-void
.end method
