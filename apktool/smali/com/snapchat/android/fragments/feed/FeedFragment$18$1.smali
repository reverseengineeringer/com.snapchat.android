.class final Lcom/snapchat/android/fragments/feed/FeedFragment$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment$18;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment$18;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment$18;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$18$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$18$1;->a:Lcom/snapchat/android/fragments/feed/FeedFragment$18;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedFragment$18;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->h(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method
