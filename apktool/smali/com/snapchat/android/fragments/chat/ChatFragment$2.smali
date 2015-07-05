.class final Lcom/snapchat/android/fragments/chat/ChatFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getIsEmoji()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashSwipeDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Q()V

    .line 1197
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->DOLLARS:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    goto :goto_0

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Q()V

    .line 1203
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1204
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->hasFocus()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z

    .line 1205
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/cash/CashTooltip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a()V

    .line 1206
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Lxu;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    invoke-static {v0}, Lxu;->a(Landroid/widget/EditText;)I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Lxu;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lxu;->a(Landroid/text/Editable;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1208
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getSelectionEnd()I

    move-result v2

    .line 1209
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v3, v3, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lya;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v1

    .line 1210
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v3, v3, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lya;

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$2;Lcom/snapchat/android/model/chat/CashFeedItem;II)V

    invoke-virtual {v3, v1, v4}, Lya;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lya$a;)V

    goto/16 :goto_0

    .line 1230
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    goto/16 :goto_0
.end method
