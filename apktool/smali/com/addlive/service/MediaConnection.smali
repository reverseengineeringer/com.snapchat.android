.class public interface abstract Lcom/addlive/service/MediaConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addUser(Lcom/addlive/service/User;)V
.end method

.method public abstract disconnect(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/Long;)Lcom/addlive/service/User;
.end method

.method public abstract getUsersInSession()Ljava/util/HashMap;
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
.end method

.method public abstract isLocalUserPublishingAudio()Z
.end method

.method public abstract publish(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;)V
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
.end method

.method public abstract removeUser(Ljava/lang/Long;)V
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;[BLjava/lang/Long;)V
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
.end method

.method public abstract setAllowedSenders(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;Ljava/util/List;)V
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
.end method

.method public abstract setLocalUserIsPublishingAudio(Z)V
.end method

.method public abstract startMeasuringStats(Lcom/addlive/service/Responder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract stopMeasuringStats(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unpublish(Lcom/addlive/service/Responder;Lcom/addlive/service/MediaType;)V
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
.end method
