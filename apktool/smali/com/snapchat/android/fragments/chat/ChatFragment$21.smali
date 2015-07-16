.class final Lcom/snapchat/android/fragments/chat/ChatFragment$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->k()Lamt;
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
    .line 3283
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamu$a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3286
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lze;

    move-result-object v2

    invoke-virtual {v2}, Lze;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3294
    :cond_0
    :goto_0
    return v0

    .line 3288
    :cond_1
    sget-object v2, Lamu;->h:Ljava/util/Set;

    iget-object v3, p1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v2, v2, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lamu$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 3290
    goto :goto_0

    .line 3291
    :cond_2
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3292
    goto :goto_0
.end method

.method public final b(Lamu$a;)Z
    .locals 2

    .prologue
    .line 3300
    sget-object v0, Lamu;->h:Ljava/util/Set;

    iget-object v1, p1, Lamu$a;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lamu$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
