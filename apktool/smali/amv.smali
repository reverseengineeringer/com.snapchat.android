.class public final Lamv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamv$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Lcom/snapchat/android/notification/AndroidNotificationManager$a;Lcom/snapchat/android/notification/AndroidNotificationManager$b;Z)Landroid/content/Intent;
    .locals 5
    .param p2    # Lcom/snapchat/android/notification/AndroidNotificationManager$a;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/notification/AndroidNotificationManager$b;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    sget-object v1, Lamv$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 44
    if-eqz p2, :cond_4

    .line 46
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "friendUsername"

    iget-object v2, p2, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "seq_num"

    iget-wide v2, p2, Lcom/snapchat/android/notification/AndroidNotificationManager$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    :goto_0
    if-eqz p4, :cond_0

    .line 60
    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    :cond_0
    sget-object v1, Lamv$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 79
    :goto_1
    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH_MESSAGE:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_1
    const-string v1, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    :cond_2
    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->getTypeNotificationAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_3
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    return-object v0

    .line 26
    :pswitch_0
    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 31
    :pswitch_1
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "destinationPage"

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->ADD_FRIENDS:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 38
    :pswitch_2
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 50
    :cond_4
    if-eqz p3, :cond_5

    .line 51
    const-string v1, "friendUsername"

    iget-object v2, p3, Lcom/snapchat/android/notification/AndroidNotificationManager$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "snap_id"

    iget-object v2, p3, Lcom/snapchat/android/notification/AndroidNotificationManager$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_5
    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 63
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
