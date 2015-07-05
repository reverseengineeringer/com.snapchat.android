.class final Lcom/snapchat/android/fragments/feed/FeedFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment$1;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$1$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$1$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method
