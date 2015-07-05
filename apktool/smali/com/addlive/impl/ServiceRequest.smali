.class public Lcom/addlive/impl/ServiceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gIdPropertyName:Ljava/lang/String; = "id"

.field private static final gMethodPropertyName:Ljava/lang/String; = "methodName"

.field private static final gParamsPropertyName:Ljava/lang/String; = "params"


# instance fields
.field private params:Lorg/json/JSONArray;

.field private storage:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    .line 27
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    const-string v1, "methodName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ServiceRequest;->params:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to create service request json"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    const-string v1, "methodName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "undefined"

    goto :goto_0
.end method

.method public getParams()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->params:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to create service request json"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    const-string v1, "params"

    iget-object v2, p0, Lcom/addlive/impl/ServiceRequest;->params:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v0, p0, Lcom/addlive/impl/ServiceRequest;->storage:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
