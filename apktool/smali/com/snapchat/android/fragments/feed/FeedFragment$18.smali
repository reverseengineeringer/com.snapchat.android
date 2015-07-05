.class final Lcom/snapchat/android/fragments/feed/FeedFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr$a;


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
    .line 319
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$18;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$18;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$18$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$18$1;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment$18;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    return-void
.end method
