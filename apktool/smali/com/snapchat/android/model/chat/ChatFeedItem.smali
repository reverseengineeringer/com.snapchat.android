.class public interface abstract Lcom/snapchat/android/model/chat/ChatFeedItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatFeedItem$a;,
        Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract N()Z
.end method

.method public abstract O()Z
.end method

.method public abstract P()Z
.end method

.method public abstract Q()Z
.end method

.method public abstract W()J
.end method

.method public abstract a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract al()Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end method

.method public abstract am()Z
.end method

.method public abstract ao()Z
.end method

.method public abstract b(Lcom/snapchat/android/model/chat/ChatConversation;)J
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end method

.method public abstract c(Lcom/snapchat/android/model/chat/ChatConversation;)J
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()V
.end method

.method public abstract q()Z
.end method
