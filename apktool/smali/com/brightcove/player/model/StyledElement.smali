.class public Lcom/brightcove/player/model/StyledElement;
.super Lcom/brightcove/player/model/Element;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/model/StyledElement$Unit;,
        Lcom/brightcove/player/model/StyledElement$TextDecoration;,
        Lcom/brightcove/player/model/StyledElement$TextAlign;,
        Lcom/brightcove/player/model/StyledElement$FontWeight;,
        Lcom/brightcove/player/model/StyledElement$FontStyle;
    }
.end annotation


# instance fields
.field protected backgroundColor:Ljava/lang/String;

.field protected color:Ljava/lang/String;

.field protected fontSize:Lcom/brightcove/player/model/Length;

.field protected fontStyle:Lcom/brightcove/player/model/StyledElement$FontStyle;

.field protected fontWeight:Lcom/brightcove/player/model/StyledElement$FontWeight;

.field protected styleName:Ljava/lang/String;

.field protected textAlign:Lcom/brightcove/player/model/StyledElement$TextAlign;

.field protected textDecoration:Lcom/brightcove/player/model/StyledElement$TextDecoration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/brightcove/player/model/Element;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()Lcom/brightcove/player/model/Length;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->fontSize:Lcom/brightcove/player/model/Length;

    return-object v0
.end method

.method public getFontStyle()Lcom/brightcove/player/model/StyledElement$FontStyle;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->fontStyle:Lcom/brightcove/player/model/StyledElement$FontStyle;

    return-object v0
.end method

.method public getFontWeight()Lcom/brightcove/player/model/StyledElement$FontWeight;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->fontWeight:Lcom/brightcove/player/model/StyledElement$FontWeight;

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->styleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlign()Lcom/brightcove/player/model/StyledElement$TextAlign;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->textAlign:Lcom/brightcove/player/model/StyledElement$TextAlign;

    return-object v0
.end method

.method public getTextDecoration()Lcom/brightcove/player/model/StyledElement$TextDecoration;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/brightcove/player/model/StyledElement;->textDecoration:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->backgroundColor:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->color:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setFontSize(Lcom/brightcove/player/model/Length;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->fontSize:Lcom/brightcove/player/model/Length;

    .line 131
    return-void
.end method

.method public setFontStyle(Lcom/brightcove/player/model/StyledElement$FontStyle;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->fontStyle:Lcom/brightcove/player/model/StyledElement$FontStyle;

    .line 141
    return-void
.end method

.method public setFontWeight(Lcom/brightcove/player/model/StyledElement$FontWeight;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->fontWeight:Lcom/brightcove/player/model/StyledElement$FontWeight;

    .line 161
    return-void
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->styleName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setTextAlign(Lcom/brightcove/player/model/StyledElement$TextAlign;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->textAlign:Lcom/brightcove/player/model/StyledElement$TextAlign;

    .line 151
    return-void
.end method

.method public setTextDecoration(Lcom/brightcove/player/model/StyledElement$TextDecoration;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/brightcove/player/model/StyledElement;->textDecoration:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 171
    return-void
.end method
