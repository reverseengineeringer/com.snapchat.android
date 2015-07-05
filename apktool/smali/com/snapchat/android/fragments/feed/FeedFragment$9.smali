.class final Lcom/snapchat/android/fragments/feed/FeedFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$9;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$9;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    .line 922
    return-void
.end method
