.class public final Lcom/snapchat/android/notification/AndroidNotificationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lajv;

.field final synthetic c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Ljava/lang/String;Lajv;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lajv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 407
    const-string v0, "AndroidNotificationManager"

    const-string v1, "CHAT-LOG: AndroidNotificationManager LoadConversationPageTask completed for %s with success: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lym;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    .line 413
    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v1, :cond_0

    .line 414
    iput-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 416
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable;->a()Lcom/snapchat/android/database/table/ConversationTable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lajv;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/table/ConversationTable;->c(Lajv;)V

    .line 419
    :cond_1
    return-void
.end method
