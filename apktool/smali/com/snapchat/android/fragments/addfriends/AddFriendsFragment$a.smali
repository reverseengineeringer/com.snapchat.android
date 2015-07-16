.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;
.super Lbho;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 834
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    .line 835
    const-wide/16 v0, 0x3e8

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v3, v0, v1, v2}, Lbho;-><init>(IJLandroid/os/Handler;)V

    .line 836
    iget-object v0, p1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 837
    iput v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->b:I

    .line 838
    iget-object v0, p1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c01ec

    invoke-virtual {p1, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 839
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 843
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->b:I

    .line 845
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    const v3, 0x7f0c01ec

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 852
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
