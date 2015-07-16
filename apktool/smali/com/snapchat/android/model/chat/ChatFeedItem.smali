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
.method public abstract O()Z
.end method

.method public abstract P()Z
.end method

.method public abstract Q()Z
.end method

.method public abstract R()Z
.end method

.method public abstract U()J
.end method

.method public abstract a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$a;
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract aj()Ljava/lang/String;
    .annotation build Lchd;
    .end annotation
.end method

.method public abstract ak()Z
.end method

.method public abstract am()Z
.end method

.method public abstract b(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Lchd;
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

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public abstract r()Z
.end method
