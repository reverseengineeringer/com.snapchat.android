.class public Lcom/addlive/service/MediaPublishOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private nativeWidth:I

.field private windowId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/MediaPublishOptions;->windowId:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/addlive/service/MediaPublishOptions;->nativeWidth:I

    return-void
.end method


# virtual methods
.method public getNativeWidth()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/addlive/service/MediaPublishOptions;->nativeWidth:I

    return v0
.end method

.method public getWindowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/addlive/service/MediaPublishOptions;->windowId:Ljava/lang/String;

    return-object v0
.end method

.method public setNativeWidth(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/addlive/service/MediaPublishOptions;->nativeWidth:I

    .line 34
    return-void
.end method

.method public setWindowId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/addlive/service/MediaPublishOptions;->windowId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPublishOptions{windowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/MediaPublishOptions;->windowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/addlive/service/MediaPublishOptions;->nativeWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
