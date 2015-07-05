.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment$12;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment$12;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$12;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment$12;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Lbgr;

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method
