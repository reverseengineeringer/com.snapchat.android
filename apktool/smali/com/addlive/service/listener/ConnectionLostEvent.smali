.class public Lcom/addlive/service/listener/ConnectionLostEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errCode:I

.field private errMessage:Ljava/lang/String;

.field private scopeId:Ljava/lang/String;

.field private willReconnect:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->scopeId:Ljava/lang/String;

    .line 37
    const-string v0, "errCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errCode:I

    .line 38
    const-string v0, "errMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errMessage:Ljava/lang/String;

    .line 39
    const-string v0, "willReconnect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->willReconnect:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errCode:I

    return v0
.end method

.method public getErrMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public isWillReconnect()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->willReconnect:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionLostEvent{scopeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/ConnectionLostEvent;->errMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
