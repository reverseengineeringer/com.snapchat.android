.class public final Lni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lni;


# instance fields
.field private final mClock:Lbgk;

.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lni;

    invoke-direct {v0}, Lni;-><init>()V

    sput-object v0, Lni;->INSTANCE:Lni;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    new-instance v1, Lbgk;

    invoke-direct {v1}, Lbgk;-><init>()V

    invoke-direct {p0, v0, v1}, Lni;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbgk;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lbgk;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lni;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 38
    iput-object p2, p0, Lni;->mClock:Lbgk;

    .line 39
    return-void
.end method

.method public static a()Lni;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lni;->INSTANCE:Lni;

    return-object v0
.end method

.method public static a(Laim;JIZLjava/lang/String;)V
    .locals 5
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo$SnapType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :pswitch_0
    const-string v0, "null"

    .line 102
    :goto_0
    const-string v2, "SNAP_MEDIA_UPLOAD"

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "request_size_bytes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    if-eqz p4, :cond_0

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 110
    return-void

    .line 96
    :pswitch_1
    const-string v0, "image"

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "video_audio"

    goto :goto_0

    .line 98
    :pswitch_3
    const-string v0, "video_no_audio"

    goto :goto_0

    .line 99
    :pswitch_4
    const-string v0, "discover"

    goto :goto_0

    .line 102
    :cond_0
    const-string v0, "false"

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
    .locals 5
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 64
    instance-of v3, v0, Laje;

    if-eqz v3, :cond_0

    .line 65
    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->L()Z

    move-result v0

    move v1, v0

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_4

    instance-of v3, v0, Laje;

    if-eqz v3, :cond_4

    .line 73
    check-cast v0, Laje;

    .line 74
    invoke-virtual {v0}, Laje;->z()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Laje;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 77
    :goto_1
    const-string v3, "NOTIF_OPEN_SNAP_META_LOADED"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "success"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 78
    if-eqz v0, :cond_2

    .line 79
    const-string v0, "NOTIF_OPEN_SNAP_VIEWED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 81
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 74
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 5
    .param p0    # Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 120
    if-nez p0, :cond_0

    .line 121
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "BACKGROUND_NOTIFICATION_UNSPECIFIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BACKGROUND_NOTIFICATION_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 88
    const-string v0, "SNAP_TAP_TO_RETRY"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 90
    return-void
.end method

.method public static b(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "EMPTY_PUSH_NOTIFICATION_TEXT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "PUSH_NOTIFICATION_TYPE"

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 148
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_RECEIVED_UNSPECIFIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOTIFICATION_RECEIVED_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_OPENED_UNSPECIFIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NOTIFICATION_OPENED_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    goto :goto_0
.end method
