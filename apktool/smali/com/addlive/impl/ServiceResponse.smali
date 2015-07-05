.class public Lcom/addlive/impl/ServiceResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gErrorCodePropertyName:Ljava/lang/String; = "errorCode"

.field private static final gErrorMessagePropertyName:Ljava/lang/String; = "errorMessage"

.field private static final gIdPropertyName:Ljava/lang/String; = "id"

.field private static final gResultPropertyName:Ljava/lang/String; = "result"

.field private static final gStatusPropertyName:Ljava/lang/String; = "status"


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/impl/ServiceResponse;->id:Ljava/lang/String;

    .line 34
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/addlive/impl/ServiceResponse;->status:Z

    .line 35
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/addlive/impl/ServiceResponse;->errorCode:I

    .line 36
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/impl/ServiceResponse;->errorMessage:Ljava/lang/String;

    .line 37
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/ServiceResponse;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to parse JSON response"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/impl/ServiceResponse;->status:Z

    .line 41
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/addlive/impl/ServiceResponse;->errorCode:I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse AddLiveService response. This is caused by an SDK error, please report it to AddLive. Faulty input:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/ServiceResponse;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/addlive/impl/ServiceResponse;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/addlive/impl/ServiceResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/addlive/impl/ServiceResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/addlive/impl/ServiceResponse;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/addlive/impl/ServiceResponse;->status:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/addlive/impl/ServiceResponse;->errorCode:I

    .line 70
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/addlive/impl/ServiceResponse;->errorMessage:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/addlive/impl/ServiceResponse;->id:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/addlive/impl/ServiceResponse;->result:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/addlive/impl/ServiceResponse;->status:Z

    .line 62
    return-void
.end method
