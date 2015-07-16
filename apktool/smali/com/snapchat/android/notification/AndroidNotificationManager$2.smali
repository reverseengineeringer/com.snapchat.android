.class public final Lcom/snapchat/android/notification/AndroidNotificationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Laka;

.field final synthetic c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/model/chat/ChatConversation;Laka;)V
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->b:Laka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->b:Laka;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;)I

    .line 1112
    return-void
.end method
