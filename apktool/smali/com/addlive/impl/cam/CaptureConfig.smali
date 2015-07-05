.class public Lcom/addlive/impl/cam/CaptureConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FPS:I = 0xf

.field private static final HEIGHT:I = 0x1e0

.field private static final WIDTH:I = 0x280


# instance fields
.field private fps:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x280

    iput v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->width:I

    .line 19
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->height:I

    .line 20
    const/16 v0, 0xf

    iput v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->fps:I

    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/addlive/impl/cam/CaptureConfig;->width:I

    return v0
.end method

.method public processProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v0, 0x3ea

    .line 24
    :try_start_0
    const-string v1, "global.dev.camera.FPS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/CaptureConfig;->fps:I

    .line 42
    :goto_0
    const/4 v0, 0x0

    .line 44
    :cond_0
    :goto_1
    return v0

    .line 26
    :cond_1
    const-string v1, "global.dev.camera.height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/CaptureConfig;->height:I

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_1

    .line 28
    :cond_2
    const-string v1, "global.dev.camera.width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/CaptureConfig;->width:I

    goto :goto_0

    .line 30
    :cond_3
    const-string v1, "global.dev.camera.mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "(\\d{1,3})x(\\d{1,3})@(\\d{1,2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/CaptureConfig;->width:I

    .line 37
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/addlive/impl/cam/CaptureConfig;->height:I

    .line 38
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/cam/CaptureConfig;->fps:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public setFps(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/addlive/impl/cam/CaptureConfig;->fps:I

    .line 71
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/addlive/impl/cam/CaptureConfig;->height:I

    .line 63
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/addlive/impl/cam/CaptureConfig;->width:I

    .line 55
    return-void
.end method
