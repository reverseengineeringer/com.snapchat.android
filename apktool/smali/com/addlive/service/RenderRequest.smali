.class public Lcom/addlive/service/RenderRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private invalidateCb:Lcom/addlive/service/InvalidateCb;

.field private mirror:Z

.field private rendererId:I

.field private sinkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/RenderRequest;->sinkId:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/addlive/service/RenderRequest;->mirror:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/service/RenderRequest;->invalidateCb:Lcom/addlive/service/InvalidateCb;

    .line 45
    iput-object p1, p0, Lcom/addlive/service/RenderRequest;->sinkId:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/addlive/service/RenderRequest;->mirror:Z

    .line 47
    iput-object p3, p0, Lcom/addlive/service/RenderRequest;->invalidateCb:Lcom/addlive/service/InvalidateCb;

    .line 48
    iput v1, p0, Lcom/addlive/service/RenderRequest;->rendererId:I

    .line 49
    return-void
.end method


# virtual methods
.method public getInvalidateCb()Lcom/addlive/service/InvalidateCb;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/addlive/service/RenderRequest;->invalidateCb:Lcom/addlive/service/InvalidateCb;

    return-object v0
.end method

.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/addlive/service/RenderRequest;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public isMirror()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/addlive/service/RenderRequest;->mirror:Z

    return v0
.end method

.method public setMirror(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/addlive/service/RenderRequest;->mirror:Z

    .line 69
    return-void
.end method

.method public setRendererId(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/addlive/service/RenderRequest;->rendererId:I

    .line 73
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/addlive/service/RenderRequest;->sinkId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RenderRequest{sinkId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/RenderRequest;->sinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/RenderRequest;->mirror:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
