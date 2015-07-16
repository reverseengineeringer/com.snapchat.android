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

.field final synthetic b:Lakp;

.field final synthetic c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Ljava/lang/String;Lakp;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lakp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lzi;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_1

    .line 418
    iget-boolean v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v1, :cond_0

    .line 419
    iput-boolean v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 421
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable;->a()Lcom/snapchat/android/database/table/ConversationTable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lakp;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/table/ConversationTable;->c(Lakp;)V

    .line 424
    :cond_1
    return-void
.end method
