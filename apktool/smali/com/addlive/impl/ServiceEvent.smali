.class public Lcom/addlive/impl/ServiceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gEventPropertyName:Ljava/lang/String; = "event"

.field private static final gParamsPropertyName:Ljava/lang/String; = "params"


# instance fields
.field private event:Ljava/lang/String;

.field private params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/impl/ServiceEvent;->params:Lorg/json/JSONObject;

    .line 22
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/impl/ServiceEvent;->event:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/addlive/impl/ServiceEvent;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/addlive/impl/ServiceEvent;->params:Lorg/json/JSONObject;

    return-object v0
.end method
