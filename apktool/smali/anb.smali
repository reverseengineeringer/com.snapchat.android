.class public final Lanb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanh;


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lanb;->a:Landroid/content/Intent;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lanb;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 34
    iget-object v0, p0, Lanb;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lanb;->a:Landroid/content/Intent;

    const-string v1, "conversationId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v1

    .line 41
    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->q()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLjava/lang/String;Ljava/util/List;)V

    .line 46
    iput-boolean v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 47
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->s()V

    .line 49
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v5

    invoke-virtual {v1, v0}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 52
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->o()V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
