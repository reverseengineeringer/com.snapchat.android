.class public Lcom/brightcove/player/model/Span;
.super Lcom/brightcove/player/model/StyledElement;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/model/StyledElement;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a StyledElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/brightcove/player/model/StyledElement;->getStyleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Span;->styleName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/brightcove/player/model/StyledElement;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Span;->color:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/brightcove/player/model/StyledElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Span;->backgroundColor:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/brightcove/player/model/StyledElement;->getFontSize()Lcom/brightcove/player/model/Length;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Span;->fontSize:Lcom/brightcove/player/model/Length;

    .line 40
    invoke-virtual {p1}, Lcom/brightcove/player/model/StyledElement;->getFontStyle()Lcom/brightcove/player/model/StyledElement$FontStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/model/Span;->fontStyle:Lcom/brightcove/player/model/StyledElement$FontStyle;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/brightcove/player/model/StyledElement;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/brightcove/player/model/Span;->text:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/brightcove/player/model/Span;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/brightcove/player/model/Span;->text:Ljava/lang/String;

    .line 63
    return-void
.end method
