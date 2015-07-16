.class public final Lang;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanh;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Lakr;

.field private final c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lang;-><init>(Landroid/content/Intent;Lakr;Lcom/snapchat/android/notification/AndroidNotificationManager;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Lakr;Lcom/snapchat/android/notification/AndroidNotificationManager;)V
    .locals 0
    .annotation build Lcf;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lang;->a:Landroid/content/Intent;

    .line 48
    iput-object p2, p0, Lang;->b:Lakr;

    .line 49
    iput-object p3, p0, Lang;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lang;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 38

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Lang;->a:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lang;->a:Landroid/content/Intent;

    const-string v5, "gcm_intent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 61
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 62
    invoke-static {}, Lakr;->bG()Z

    move-result v6

    .line 63
    const-string v7, "snapchatUserIsLoggedIn"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 64
    move-object/from16 v0, p0

    iget-object v8, v0, Lang;->a:Landroid/content/Intent;

    const-string v9, "clear"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 65
    move-object/from16 v0, p0

    iget-object v9, v0, Lang;->a:Landroid/content/Intent;

    const-string v10, "display_notifications"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 66
    move-object/from16 v0, p0

    iget-object v10, v0, Lang;->a:Landroid/content/Intent;

    const-string v11, "notification_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    if-eqz v9, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v5, v0, Lang;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_1

    .line 71
    :cond_2
    if-eqz v8, :cond_4

    .line 72
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_3
    invoke-static {v10}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_0

    .line 80
    :cond_4
    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    .line 83
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v25, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lang;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-object/from16 v26, v0

    const-string v4, "username"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v6}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-string v4, "snap_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v4, "sender"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v4, "sender_username"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "text"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v4, "chat_message_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "seq_num"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "chat_messages"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cash_amount"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v5, "snap_metadata"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v35

    const-string v4, "silent"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual/range {v25 .. v25}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " > key="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    sget-object v9, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-eq v0, v9, :cond_6

    sget-object v9, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_1a

    :cond_6
    invoke-virtual/range {v35 .. v35}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v9, v1}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    sub-long v10, v28, v10

    const-wide/32 v12, 0x124f80

    cmp-long v9, v10, v12

    if-gez v9, :cond_1a

    const/4 v4, 0x1

    move/from16 v21, v4

    :goto_3
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_7

    invoke-static/range {v31 .. v31}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "r"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_7

    invoke-virtual {v4, v9}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v30, v4, v9

    const-string v4, "SNAP_LATE_PUSH"

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    :cond_7
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_f

    if-eqz v21, :cond_f

    const/4 v4, 0x1

    :goto_4
    if-nez v9, :cond_10

    if-nez v4, :cond_10

    if-nez v5, :cond_10

    const/4 v4, 0x1

    :goto_5
    const/4 v5, 0x1

    sget-object v9, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v24, v4

    move v4, v5

    :goto_6
    if-eqz v4, :cond_9

    const-wide/16 v22, 0x0

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_13

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-wide/from16 v14, v22

    :cond_8
    :goto_7
    move-object/from16 v5, v26

    move-object/from16 v6, p1

    move-object/from16 v7, v27

    move-wide/from16 v8, v28

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v16, v35

    move/from16 v17, v21

    move-object/from16 v18, v34

    invoke-virtual/range {v5 .. v18}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/snapchat/android/notification/AndroidNotificationManager$Type;ZLjava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    :cond_9
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-eq v0, v4, :cond_a

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_b

    :cond_a
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/database/table/NotificationTable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->TYPING:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    :cond_b
    if-eqz v24, :cond_c

    invoke-static/range {p1 .. p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$3;->a:[I

    invoke-virtual/range {v35 .. v35}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->b:Laph;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Laph;->a(ZZ)I

    .line 87
    :cond_c
    :goto_8
    :pswitch_0
    const-string v4, "type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v4

    .line 90
    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v4, v5, :cond_d

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT_SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v4, v5, :cond_d

    sget-object v5, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CASH:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v4, v5, :cond_0

    .line 91
    :cond_d
    const-string v4, "sender_username"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    invoke-static {v4}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v6

    .line 96
    if-eqz v6, :cond_0

    .line 97
    new-instance v4, Lzf;

    invoke-direct {v4}, Lzf;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x493e0

    sub-long v8, v4, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v5, v4, Lakw;

    if-eqz v5, :cond_e

    move-object v0, v4

    check-cast v0, Lakw;

    move-object v5, v0

    invoke-interface {v4}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v13, v6, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Lakw;->o()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v5}, Lakw;->U()J

    move-result-wide v14

    cmp-long v4, v14, v8

    if-gtz v4, :cond_e

    invoke-virtual {v5, v10, v11}, Lakw;->a(J)V

    goto :goto_9

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 84
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_11
    sget-object v9, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->UPLOAD_LOGS_REQUEST:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_12

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v9, Lamy;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-direct {v9, v0, v1}, Lamy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9}, Lamy;->a()V

    invoke-virtual {v9}, Lamy;->b()V

    invoke-virtual {v9}, Lamy;->c()V

    move/from16 v24, v4

    move v4, v5

    goto/16 :goto_6

    :cond_12
    sget-object v9, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->EMAIL_VERIFIED:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v9, :cond_19

    const/4 v4, 0x1

    invoke-static {v4}, Lakr;->s(Z)V

    invoke-static {}, Lakr;->bk()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lakr;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lakr;->u(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move/from16 v24, v4

    move v4, v5

    goto/16 :goto_6

    :cond_13
    if-eqz v6, :cond_15

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-eq v0, v4, :cond_14

    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->CHAT_SCREENSHOT:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_15

    :cond_14
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakx;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v7}, Lakx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_15
    sget-object v4, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->SNAP:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_18

    if-eqz v8, :cond_18

    invoke-static {v8}, Lamx;->a(Ljava/lang/String;)Lamx;

    move-result-object v18

    if-eqz v18, :cond_18

    move-object/from16 v0, v18

    iget-object v15, v0, Lamx;->b:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->c:Lakx;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v15, v5, v6, v7}, Lakx;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v36

    if-eqz v36, :cond_18

    move-object/from16 v0, v18

    iget-object v5, v0, Lamx;->a:Ljava/lang/String;

    invoke-virtual/range {v36 .. v36}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v37

    monitor-enter v37

    :try_start_1
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v4

    if-nez v4, :cond_16

    new-instance v4, Laka;

    move-object/from16 v0, v18

    iget-wide v6, v0, Lamx;->c:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Lamx;->c:J

    const-wide/16 v10, 0x0

    move-object/from16 v0, v18

    iget v12, v0, Lamx;->d:I

    move-object/from16 v0, v18

    iget-boolean v13, v0, Lamx;->e:Z

    sget-object v14, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lamx;->f:D

    move-wide/from16 v16, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lamx;->g:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Laka;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-virtual/range {v36 .. v36}, Lcom/snapchat/android/model/chat/ChatConversation;->v()V

    const-string v6, "notif"

    invoke-static {v4, v6}, Lnz;->a(Laka;Ljava/lang/String;)V

    invoke-static {v4}, Log;->b(Laka;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v15, v6, v5

    new-instance v5, Lcom/snapchat/android/notification/AndroidNotificationManager$2;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v5, v0, v1, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$2;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/model/chat/ChatConversation;Laka;)V

    invoke-static {v5}, Lbhp;->b(Ljava/lang/Runnable;)V

    :goto_a
    monitor-exit v37

    move-wide/from16 v14, v22

    goto/16 :goto_7

    :cond_16
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v15, v4, v5

    goto :goto_a

    :catchall_1
    move-exception v4

    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :pswitch_1
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static/range {v31 .. v31}, Laut;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Layg;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v6, Lcom/snapchat/android/notification/AndroidNotificationManager$1;

    move-object/from16 v0, v26

    invoke-direct {v6, v0, v5, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$1;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Ljava/lang/String;Lakp;)V

    invoke-static {v5, v6}, Ltt;->b(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;)V

    goto/16 :goto_8

    .line 97
    :cond_17
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_18
    move-wide/from16 v14, v22

    goto/16 :goto_7

    :cond_19
    move/from16 v24, v5

    goto/16 :goto_6

    :cond_1a
    move/from16 v21, v4

    goto/16 :goto_3

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
