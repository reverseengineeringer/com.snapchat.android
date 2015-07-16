.class final Lcom/snapchat/android/fragments/chat/ChatFragment$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1116
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->c:Z

    if-eqz v0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->b:Z

    if-eqz v0, :cond_2

    .line 1120
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1121
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1122
    if-ne v0, v3, :cond_2

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1123
    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v0, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 1124
    array-length v3, v0

    if-lez v3, :cond_2

    .line 1125
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->c:Z

    .line 1126
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v5, ""

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1127
    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1128
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->c:Z

    .line 1129
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v3

    .line 1138
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_d

    .line 1144
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->j(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 1145
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/ChatCameraButton;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F

    .line 1148
    :cond_3
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_4

    .line 1149
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F

    .line 1152
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v4, v5

    .line 1153
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-le v0, v2, :cond_7

    move v0, v2

    .line 1155
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->j(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_8

    :cond_5
    move v0, v2

    .line 1158
    :goto_2
    if-eqz v0, :cond_9

    .line 1159
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/snapchat/android/ui/ChatCameraButton;->setVisibility(I)V

    .line 1160
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v8}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setPadding(IIII)V

    .line 1170
    :goto_3
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1171
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v5

    if-nez v0, :cond_a

    if-nez v3, :cond_a

    move v0, v2

    :goto_4
    invoke-virtual {v4, v5, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 1175
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    if-eqz v0, :cond_0

    .line 1179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 1180
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 1181
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsTyping(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1153
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 1155
    goto/16 :goto_2

    .line 1164
    :cond_9
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setVisibility(I)V

    .line 1165
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v8}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_a
    move v0, v1

    .line 1171
    goto :goto_4

    :cond_b
    move v0, v1

    .line 1175
    goto :goto_5

    .line 1183
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1099
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1104
    const/4 v2, 0x2

    if-gt p4, v2, :cond_1

    .line 1105
    add-int v2, p2, p4

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v3

    invoke-static {v2, v0}, Layh;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsEmoji(Z)V

    .line 1110
    :goto_0
    if-ge p4, p3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->b:Z

    .line 1111
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsTyping(Z)V

    .line 1112
    return-void

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsEmoji(Z)V

    goto :goto_0
.end method
