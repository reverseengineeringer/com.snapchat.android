.class Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DevicesResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/addlive/service/Device;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 627
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 628
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 629
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-nez v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 636
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    .line 637
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 638
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 640
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    new-instance v4, Lcom/addlive/service/Device;

    invoke-direct {v4, v0, v3}, Lcom/addlive/service/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 647
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;->responder:Lcom/addlive/service/Responder;

    const/16 v1, 0x3ee

    const-string v2, "Failed to parse devices list"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;->responder:Lcom/addlive/service/Responder;

    invoke-interface {v0, v2}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
