.class Lcom/addlive/impl/ADLMediaConnectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/MediaConnection;


# instance fields
.field private isLocalUserPublishingAudio:Z

.field private scopeId:Ljava/lang/String;

.field private usersInSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/addlive/service/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->usersInSession:Ljava/util/HashMap;

    .line 33
    iput-object p1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public addUser(Lcom/addlive/service/User;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->usersInSession:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/addlive/service/User;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public disconnect(Lcom/addlive/service/Responder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public getUser(Ljava/lang/Long;)Lcom/addlive/service/User;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->usersInSession:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/User;

    return-object v0
.end method

.method public getUsersInSession()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/addlive/service/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->usersInSession:Ljava/util/HashMap;

    return-object v0
.end method

.method public isLocalUserPublishingAudio()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->isLocalUserPublishingAudio:Z

    return v0
.end method

.method public publish(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 49
    return-void
.end method

.method public removeUser(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->usersInSession:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[B)V

    .line 64
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;[BLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;[B",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V

    .line 59
    return-void
.end method

.method public setAllowedSenders(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/MediaType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public setLocalUserIsPublishingAudio(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->isLocalUserPublishingAudio:Z

    .line 74
    return-void
.end method

.method public startMeasuringStats(Lcom/addlive/service/Responder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/addlive/service/AddLiveService;->startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public stopMeasuringStats(Lcom/addlive/service/Responder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/addlive/service/AddLiveService;->stopMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public unpublish(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLMediaConnectionImpl;->scopeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 54
    return-void
.end method
