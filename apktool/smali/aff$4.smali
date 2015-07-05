.class final Laff$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:I

.field final synthetic c:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;I)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Laff$4;->c:Laff;

    iput-object p2, p0, Laff$4;->a:Lcom/snapchat/android/model/Friend;

    iput p3, p0, Laff$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 687
    iget-object v0, p0, Laff$4;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lbkn$a;

    sget-object v1, Lbkn$a;->UNKNOWN:Lbkn$a;

    if-eq v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Laff$4;->c:Laff;

    iget-object v0, v0, Laff;->O:Laol;

    iget-object v1, p0, Laff$4;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Laff$4;->b:I

    iget-object v3, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "op_code"

    const/16 v5, 0x409

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "action"

    sget-object v5, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v5}, Lcom/snapchat/android/model/SuggestedFriendAction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "friend_name"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "friend_index"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 690
    iget-object v0, p0, Laff$4;->c:Laff;

    iget-object v0, v0, Laff;->C:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Laff$4;->c:Laff;

    iget-object v0, v0, Laff;->D:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Laff$4;->c:Laff;

    iget-object v0, v0, Laff;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Laff$4;->c:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    iget-object v1, p0, Laff$4;->c:Laff;

    iget-object v2, p0, Laff$4;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->HIDE:Lcom/snapchat/android/model/FriendAction;

    iget-object v5, p0, Laff$4;->c:Laff;

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lafa;->a(Laff;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction$BlockReason;Lpp$a;Lic;)V

    goto :goto_0
.end method
