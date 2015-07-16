.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iput p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->v(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->a:I

    if-lez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iget v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;I)V

    .line 1189
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$13;->b:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->t(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lakr;

    invoke-static {}, Lakr;->bB()V

    goto :goto_0
.end method
