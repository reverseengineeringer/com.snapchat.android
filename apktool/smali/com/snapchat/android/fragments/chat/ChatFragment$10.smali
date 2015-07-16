.class final Lcom/snapchat/android/fragments/chat/ChatFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;ZZ)V
    .locals 0

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->a:Z

    iput-boolean p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1662
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getIsEmoji()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashSwipeDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    :cond_0
    const/4 v0, 0x0

    .line 1675
    :goto_0
    return v0

    .line 1666
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->a:Z

    if-eqz v0, :cond_2

    .line 1667
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 1668
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lbhr;

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->c()V

    .line 1669
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->TIMES_DISPLAYED_HERE_TOOLTIP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    move v0, v1

    .line 1675
    goto :goto_0

    .line 1670
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->b:Z

    if-eqz v0, :cond_3

    .line 1671
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Z)V

    goto :goto_1

    .line 1673
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$10;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->s(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    goto :goto_1
.end method
