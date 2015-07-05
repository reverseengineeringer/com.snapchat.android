.class final Lafr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field final synthetic b:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

.field final synthetic c:Lafr;


# direct methods
.method constructor <init>(Lafr;Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lafr$3;->c:Lafr;

    iput-object p2, p0, Lafr$3;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    iput-object p3, p0, Lafr$3;->b:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lafr$3;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v0, v0, Lako;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafr$3;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lako;

    iget-object v1, p0, Lafr$3;->b:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-static {v0, v1}, Lasx;->a(Lako;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lafr$3;->b:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 819
    :cond_0
    return-void
.end method
