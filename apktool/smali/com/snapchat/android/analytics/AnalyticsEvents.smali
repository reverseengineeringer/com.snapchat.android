.class public abstract Lcom/snapchat/android/analytics/AnalyticsEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/AnalyticsEvents$a;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$c;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$b;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_SETTING_FILTERS:Ljava/lang/String; = "TOGGLE_SETTING_FILTERS"

.field public static final ADDITIONAL_SETTING_FLASH:Ljava/lang/String; = "TOGGLE_SETTING_FLASH"

.field public static final ADDITIONAL_SETTING_REPLAY:Ljava/lang/String; = "TOGGLE_SETTING_REPLAY"

.field private static final FULLVIEW_EPSILON:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "AnalyticsEvents"

.field private static mEventsTimer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sServiceManager:Laol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->sServiceManager:Laol;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    return-void
.end method

.method public static A()V
    .locals 2

    .prologue
    .line 1007
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ATTEMPT_REGISTER_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1008
    return-void
.end method

.method public static B()V
    .locals 2

    .prologue
    .line 1017
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1018
    return-void
.end method

.method public static C()V
    .locals 2

    .prologue
    .line 1021
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1022
    return-void
.end method

.method public static D()V
    .locals 2

    .prologue
    .line 1025
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1026
    return-void
.end method

.method public static E()V
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1034
    return-void
.end method

.method public static F()V
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_USERNAME_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1038
    return-void
.end method

.method public static G()V
    .locals 2

    .prologue
    .line 1062
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_GRANTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1063
    return-void
.end method

.method public static H()V
    .locals 2

    .prologue
    .line 1066
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_DENIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1067
    return-void
.end method

.method public static I()V
    .locals 2

    .prologue
    .line 1070
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SKIPPED_ADD_FRIENDS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1071
    return-void
.end method

.method public static J()V
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SCROLLS_FRIENDS_TABLE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1075
    return-void
.end method

.method public static K()V
    .locals 2

    .prologue
    .line 1108
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_ALL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1109
    return-void
.end method

.method public static L()V
    .locals 2

    .prologue
    .line 1112
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_USED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1113
    return-void
.end method

.method public static M()V
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_ACCEPTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1185
    return-void
.end method

.method public static N()V
    .locals 2

    .prologue
    .line 1188
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1189
    return-void
.end method

.method public static O()V
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1193
    return-void
.end method

.method public static P()V
    .locals 2

    .prologue
    .line 1200
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1201
    return-void
.end method

.method public static Q()V
    .locals 2

    .prologue
    .line 1255
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_BUTTON_TAPPED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1256
    return-void
.end method

.method public static R()V
    .locals 2

    .prologue
    .line 1271
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1272
    return-void
.end method

.method public static S()V
    .locals 2

    .prologue
    .line 1275
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_ASKED_TO_RELINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1276
    return-void
.end method

.method public static T()V
    .locals 2

    .prologue
    .line 1279
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1280
    return-void
.end method

.method public static U()V
    .locals 2

    .prologue
    .line 1283
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1284
    return-void
.end method

.method public static V()V
    .locals 2

    .prologue
    .line 1287
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1288
    return-void
.end method

.method public static W()V
    .locals 2

    .prologue
    .line 1395
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_DISCONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1396
    return-void
.end method

.method public static X()V
    .locals 2

    .prologue
    .line 1399
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TCP_RECONNECT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1400
    return-void
.end method

.method public static Y()V
    .locals 2

    .prologue
    .line 1403
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MISSING_CHAT_OPENED_FROM_PUSH_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1404
    return-void
.end method

.method public static Z()V
    .locals 2

    .prologue
    .line 1407
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "READ_CHAT_OPENED_FROM_PUSH_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1408
    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1152
    const-string v1, "number_of_friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string v1, "number_of_friends_histogram"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_ENABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 169
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "ON_RESUME"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v2, "DEVICE"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 171
    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 172
    const-string v2, "SDK_INT"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 173
    const-string v2, "SDK_RELEASE"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 174
    const-string v2, "CPU_ABI"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 175
    const-string v2, "CPU_ABI2"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 176
    const-string v2, "FILTERS_ENABLED"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 177
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 178
    return-void

    .line 166
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_DISABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 341
    const-string v1, "friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FINISH_NEW_USER_ADD_FRIENDS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 343
    return-void
.end method

.method public static a(II)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "Previous page"

    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 140
    const-string v1, "New page"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 141
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 142
    return-void
.end method

.method public static a(III)V
    .locals 3

    .prologue
    .line 1133
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1134
    invoke-static {p0, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1135
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ON_SNAPCHAT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1137
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1138
    invoke-static {p1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1139
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ADDED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1141
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-static {p2, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1143
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_INVITED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1145
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R01_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_ON_SNAPCHAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1146
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R01_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1147
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R01_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_INVITED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1148
    return-void
.end method

.method public static a(J)V
    .locals 6

    .prologue
    .line 885
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_SESSION_END"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "session_length_bucket"

    const-wide/16 v4, 0x1388

    cmp-long v0, p0, v4

    if-gez v0, :cond_0

    const-string v0, "0-4 s"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "session_length"

    long-to-double v2, p0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 888
    return-void

    .line 885
    :cond_0
    const-wide/16 v4, 0x2710

    cmp-long v0, p0, v4

    if-gez v0, :cond_1

    const-string v0, "5-9 s"

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x3a98

    cmp-long v0, p0, v4

    if-gez v0, :cond_2

    const-string v0, "10-14 s"

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x4e20

    cmp-long v0, p0, v4

    if-gez v0, :cond_3

    const-string v0, "15-19 s"

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x61a8

    cmp-long v0, p0, v4

    if-gez v0, :cond_4

    const-string v0, "20-24 s"

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x7530

    cmp-long v0, p0, v4

    if-gez v0, :cond_5

    const-string v0, "25-29 s"

    goto :goto_0

    :cond_5
    const-wide/32 v4, 0x88b8

    cmp-long v0, p0, v4

    if-gez v0, :cond_6

    const-string v0, "30-34 s"

    goto :goto_0

    :cond_6
    const-wide/32 v4, 0x9c40

    cmp-long v0, p0, v4

    if-gez v0, :cond_7

    const-string v0, "35-39 s"

    goto :goto_0

    :cond_7
    const-wide/32 v4, 0xafc8

    cmp-long v0, p0, v4

    if-gez v0, :cond_8

    const-string v0, "40-44 s"

    goto :goto_0

    :cond_8
    const-wide/32 v4, 0xc350

    cmp-long v0, p0, v4

    if-gez v0, :cond_9

    const-string v0, "45-49 s"

    goto :goto_0

    :cond_9
    const-wide/32 v4, 0xd6d8

    cmp-long v0, p0, v4

    if-gez v0, :cond_a

    const-string v0, "50-54 s"

    goto :goto_0

    :cond_a
    const-wide/32 v4, 0xea60

    cmp-long v0, p0, v4

    if-gez v0, :cond_b

    const-string v0, "55-59 s"

    goto/16 :goto_0

    :cond_b
    const-string v0, "60+ s"

    goto/16 :goto_0
.end method

.method private static a(Laim;)V
    .locals 6

    .prologue
    .line 446
    iget v1, p0, Laim;->mSwipeFilterNumSingleSwipes:I

    .line 447
    iget v2, p0, Laim;->mSwipeFilterNumDoubleSwipes:I

    .line 448
    add-int v3, v1, v2

    .line 449
    if-lez v3, :cond_1

    .line 450
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 451
    const-string v5, "type"

    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    .line 453
    invoke-static {p0, v4}, Lnb;->a(Laim;Ljava/util/Map;)V

    .line 454
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "filter"

    iget-object v5, p0, Laim;->mBaseFilter:Loi;

    iget-object v5, v5, Loi;->a:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    const-string v0, "number_of_filter_changes"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v0, "single_swipe_filter_changes"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v0, "double_swipe_filter_changes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SWIPE_FILTER_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 462
    :cond_1
    return-void

    .line 451
    :cond_2
    const-string v0, "VIDEO"

    goto :goto_0
.end method

.method public static a(Laim;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILajv;)V
    .locals 8

    .prologue
    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 359
    const-string v0, "sender"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_5

    .line 362
    const-string v0, "type"

    const-string v3, "IMAGE"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :goto_0
    const-string v0, "recipientCount"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    if-ne p5, v0, :cond_8

    .line 391
    const-string v0, "recipientCountBucket"

    const-string v3, "1 recipient"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_0
    :goto_1
    const-string v0, "friendCount"

    invoke-virtual {p6}, Lajv;->p()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v3, "drawing"

    iget-boolean v0, p0, Laim;->mHasDrawing:Z

    if-eqz v0, :cond_b

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "caption"

    iget-object v3, p0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    .line 404
    invoke-static {p0, v1}, Lnb;->a(Laim;Ljava/util/Map;)V

    .line 405
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    if-eqz v0, :cond_1

    .line 406
    const-string v0, "filter"

    iget-object v3, p0, Laim;->mBaseFilter:Loi;

    iget-object v3, v3, Loi;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_1
    const-string v3, "with_story"

    if-eqz p2, :cond_c

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    if-eqz p4, :cond_e

    .line 410
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_d

    .line 411
    const-string v0, "source"

    const-string v3, "chat_story_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    :goto_4
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SENT"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 420
    iget-object v0, p0, Laim;->mCaptionAnalyticData:Lapo;

    .line 421
    if-eqz v0, :cond_3

    .line 422
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lapo;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 427
    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_impressions"

    iget v2, p0, Laim;->mGeofilterImpressions:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Laim;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 429
    :cond_4
    :goto_5
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laim;)V

    .line 430
    return-void

    .line 364
    :cond_5
    const-string v0, "type"

    const-string v3, "VIDEO"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 366
    const-string v0, "videoType"

    const-string v3, "SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_6
    instance-of v0, p0, Lajm;

    if-eqz v0, :cond_7

    move-object v0, p0

    .line 371
    check-cast v0, Lajm;

    .line 372
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 373
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v4

    .line 375
    const-string v5, "transcodingEnabled"

    invoke-virtual {v4}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v4, "recordedVideoFileSize"

    invoke-virtual {v0}, Lajm;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v4, "transcodedVideoFileSize"

    new-instance v5, Lawt;

    invoke-direct {v5}, Lawt;-><init>()V

    iget-object v0, v0, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lawt;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 379
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "VIDEO_SNAP_SENT"

    invoke-direct {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto/16 :goto_0

    .line 368
    :cond_6
    const-string v0, "videoType"

    const-string v3, "NO_SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 384
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reporting metrics may be wrong, snapybryo is expected to be a SnapVideobryo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_8
    const/4 v0, 0x1

    if-le p5, v0, :cond_9

    const/4 v0, 0x5

    if-gt p5, v0, :cond_9

    .line 393
    const-string v0, "recipientCountBucket"

    const-string v3, "2-5 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 394
    :cond_9
    const/4 v0, 0x5

    if-le p5, v0, :cond_a

    const/16 v0, 0xa

    if-gt p5, v0, :cond_a

    .line 395
    const-string v0, "recipientCountBucket"

    const-string v3, "6-10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 396
    :cond_a
    const/16 v0, 0xa

    if-le p5, v0, :cond_0

    .line 397
    const-string v0, "recipientCountBucket"

    const-string v3, ">10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 401
    :cond_b
    const-string v0, "0"

    goto/16 :goto_2

    .line 408
    :cond_c
    const-string v0, "0"

    goto/16 :goto_3

    .line 412
    :cond_d
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_2

    .line 413
    const-string v0, "source"

    const-string v3, "chat_story_quick_snap_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 416
    :cond_e
    const-string v3, "source"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_f

    const-string v0, "_from_preview"

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_f
    const-string v0, ""

    goto :goto_7

    .line 427
    :cond_10
    iget v1, p0, Laim;->mGeofilterImpressions:I

    if-lez v1, :cond_4

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto/16 :goto_5
.end method

.method public static a(Laim;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 469
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 470
    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    if-nez v0, :cond_3

    .line 471
    const-string v0, "type"

    const-string v2, "IMAGE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :goto_0
    const-string v2, "drawing"

    iget-boolean v0, p0, Laim;->mHasDrawing:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v0, "caption"

    iget-object v2, p0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    .line 484
    invoke-static {p0, v1}, Lnb;->a(Laim;Ljava/util/Map;)V

    .line 485
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "filter"

    iget-object v2, p0, Laim;->mBaseFilter:Loi;

    iget-object v2, v2, Loi;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_0
    const-string v2, "reply"

    if-eqz p1, :cond_6

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "with_snap"

    if-eqz p2, :cond_7

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v0, "context"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 493
    const-string v2, "sender"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "POST_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 496
    iget-object v1, p0, Laim;->mCaptionAnalyticData:Lapo;

    .line 497
    if-eqz v1, :cond_1

    .line 498
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lapo;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 503
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_impressions"

    iget v2, p0, Laim;->mGeofilterImpressions:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Laim;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 505
    :cond_2
    :goto_4
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laim;)V

    .line 506
    return-void

    .line 473
    :cond_3
    const-string v0, "type"

    const-string v2, "VIDEO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0}, Laim;->h()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 475
    const-string v0, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 477
    :cond_4
    const-string v0, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 481
    :cond_5
    const-string v0, "0"

    goto/16 :goto_1

    .line 488
    :cond_6
    const-string v0, "0"

    goto/16 :goto_2

    .line 489
    :cond_7
    const-string v0, "0"

    goto/16 :goto_3

    .line 503
    :cond_8
    iget v1, p0, Laim;->mGeofilterImpressions:I

    if-lez v1, :cond_2

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_4
.end method

.method public static a(Laje;)V
    .locals 4

    .prologue
    .line 594
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 595
    const-string v0, "time"

    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Laje;->ak()I

    move-result v0

    if-nez v0, :cond_1

    .line 597
    const-string v0, "type"

    const-string v2, "IMAGE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 607
    const-string v0, "id"

    invoke-virtual {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v0, "sender"

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    instance-of v0, p0, Lajr;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 610
    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "sponsor"

    check-cast p0, Lajr;

    iget-object v3, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v3}, Lbje;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SCREENSHOT_PROMOTED_STORY"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 615
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SCREENSHOT_STORY"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 619
    :goto_1
    return-void

    .line 599
    :cond_1
    const-string v0, "type"

    const-string v2, "VIDEO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p0}, Laje;->ak()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 601
    const-string v0, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 603
    :cond_2
    const-string v0, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 617
    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SCREENSHOT"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_1
.end method

.method public static a(Laje;Lajv;)V
    .locals 4

    .prologue
    .line 556
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 557
    const-string v1, "time"

    invoke-virtual {p0}, Laje;->F()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "friendCount"

    invoke-virtual {p1}, Lajv;->p()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    if-nez v1, :cond_1

    .line 560
    const-string v1, "type"

    const-string v2, "IMAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 570
    const-string v2, "id"

    invoke-virtual {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "sender"

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    instance-of v2, p0, Lain;

    if-eqz v2, :cond_3

    .line 573
    const-string v2, "url"

    check-cast p0, Lain;

    iget-object v3, p0, Lain;->mActionUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "BROADCAST_SNAP_OPENED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 579
    :cond_0
    :goto_1
    return-void

    .line 562
    :cond_1
    const-string v1, "type"

    const-string v2, "VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Laje;->ak()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 564
    const-string v1, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 566
    :cond_2
    const-string v1, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 575
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Laje;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_VIEW"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 577
    invoke-virtual {p0}, Laje;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_SNAP_GEOFILTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "filter_id"

    invoke-virtual {p0}, Laje;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_1
.end method

.method public static a(Lajr;)V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SAVE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 549
    return-void
.end method

.method public static a(Lajr;ZLajv;)V
    .locals 6

    .prologue
    .line 181
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 182
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 184
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 185
    const-string v2, "type"

    if-eqz p1, :cond_4

    const-string v0, "0"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "sponsor"

    iget-object v2, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v2}, Lbje;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 191
    const-string v2, "username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 193
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_MY_STORIES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 204
    :cond_3
    :goto_1
    return-void

    .line 185
    :cond_4
    const-string v0, "1"

    goto :goto_0

    .line 195
    :cond_5
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_STORIES"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 196
    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_PROMOTED_STORIES"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 198
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v0}, Lbje;->d()Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_3

    .line 200
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents;->sServiceManager:Laol;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v1, v2}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "op_code"

    const/16 v5, 0x3ec

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "url"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    goto :goto_1
.end method

.method public static a(Lbit$a;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbit$a;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1293
    sget-object v0, Lbit$a;->DELETE:Lbit$a;

    invoke-virtual {v0, p0}, Lbit$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1294
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    .line 1295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1297
    instance-of v1, v0, Lakb;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lakb;

    invoke-virtual {v1}, Lakb;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lakb;

    invoke-virtual {v1}, Lakb;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    check-cast v0, Lakb;

    invoke-virtual {v0}, Lakb;->x()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 1300
    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "RECEIVED_CHAT_LIFETIME"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0

    .line 1304
    :cond_1
    return-void
.end method

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "REASON"

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 267
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, v1, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 533
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "context"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "type"

    invoke-virtual {p3}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string v2, "parent"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "name"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0}, Lcom/snapchat/android/model/FriendAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 534
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 3

    .prologue
    .line 836
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SWIPE_FILTER_SWIPED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p0}, Laut;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 838
    return-void

    .line 836
    :cond_0
    const-string v0, "IMAGE"

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3
    .param p0    # Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1204
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SWIPE_TO_SEND_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1205
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CAPTCHA_REGISTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v1, "unsuccessful_attempts"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 209
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 210
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1221
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1223
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_PRIVACY_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v1, "old_privacy"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 257
    const-string v1, "new_privacy"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 258
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 259
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p2    # Ljava/util/Map;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1335
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1340
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v2, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 1346
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1347
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_1

    .line 1350
    :cond_2
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1351
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 248
    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 317
    const-string v0, "filter"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "type"

    if-eqz p2, :cond_0

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    if-eqz p1, :cond_1

    .line 320
    const-string v0, "filter_id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :goto_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SWIPE_FILTER_PASSED"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 325
    return-void

    .line 318
    :cond_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 322
    :cond_1
    const-string v0, "filter_id"

    const-string v2, "None"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    const-string v0, "DEFAULT_SUGGESTION"

    .line 1052
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_REGISTER_USERNAME_SUCCESS_WITH_SUGGESTIONS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "usernameType"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "suggestion"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "suggestionIndex"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1058
    return-void

    .line 1047
    :cond_0
    if-nez p2, :cond_1

    .line 1048
    const-string v0, "OTHER_SUGGESTION"

    goto :goto_0

    .line 1050
    :cond_1
    const-string v0, "CUSTOM"

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 213
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CAPTCHA_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v2, "success"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 215
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 216
    return-void

    .line 214
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static a(ZIIII)V
    .locals 3

    .prologue
    .line 871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 872
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 878
    return-void
.end method

.method public static a(ZJ)V
    .locals 5

    .prologue
    .line 1308
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_OR_CASH_OPEN_FROM_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 1311
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 1313
    const-string v1, "display_latency"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1316
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1317
    return-void
.end method

.method public static a(ZLaje;)V
    .locals 3

    .prologue
    .line 854
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Laje;)Ljava/util/Map;

    move-result-object v0

    .line 855
    if-eqz p0, :cond_0

    .line 856
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_ACCEPT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_DECLINE"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static a(ZLajr;)V
    .locals 10

    .prologue
    .line 637
    invoke-virtual {p1}, Lajr;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onEndStoryViewingSession shouldn\'t be called while story snap is being viewed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "viewing_type"

    if-eqz p0, :cond_6

    const-string v0, "0"

    :goto_0
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Laje;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-virtual {p1}, Lajr;->y()J

    move-result-wide v4

    long-to-float v1, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sponsor"

    iget-object v1, p1, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v1}, Lbje;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "id"

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "viewer_username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "poster_username"

    iget-object v1, p1, Lajr;->mUsername:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual {p1}, Lajr;->y()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-virtual {p1}, Lajr;->F()D

    move-result-wide v6

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr v6, v8

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-eqz p0, :cond_8

    const/4 v0, 0x0

    :goto_2
    iget-object v6, p1, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v9, "time_viewed"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "full_view"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v8, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "view_location"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "poster_id"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "story_snap_id"

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-virtual {p1}, Lajr;->F()D

    move-result-wide v0

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Laje;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "snap_time"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 655
    invoke-virtual {p1}, Laje;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_id"

    invoke-virtual {p1}, Laje;->H()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laje;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "my_story"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "VIEW_STORY_GEOFILTER"

    invoke-direct {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 658
    :cond_2
    invoke-virtual {p1}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_PROMOTED_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 664
    :cond_3
    iget-boolean v0, p1, Lajr;->mIsShared:Z

    if-eqz v0, :cond_a

    .line 665
    invoke-virtual {p1}, Lajr;->aH()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 667
    invoke-virtual {p1}, Lajr;->aH()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "AnalyticsEvents"

    const-string v1, "onEndBrandSnapView called on a non-brand snap"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 668
    :cond_4
    :goto_3
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 679
    :cond_5
    :goto_4
    return-void

    .line 647
    :cond_6
    const-string v0, "1"

    goto/16 :goto_0

    .line 650
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 667
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "VIEW_BRAND_SNAP_STORY_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 670
    :cond_a
    iget-object v0, p1, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 672
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_MY_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_4

    .line 674
    :cond_b
    iget-object v0, p1, Lajr;->mUsername:Ljava/lang/String;

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_TEAMSNAPCHAT_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1357
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1361
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$a;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$a;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1362
    const/4 v0, 0x0

    move v1, v0

    .line 1364
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1365
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1372
    :cond_2
    if-lez v1, :cond_0

    .line 1373
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_RELEASED_POTENTIALLY_UNVIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method private static aa()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_ACTIVE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 914
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_SETTINGS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 220
    return-void
.end method

.method public static b(I)V
    .locals 3

    .prologue
    .line 832
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_strokes"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 833
    return-void
.end method

.method public static b(II)V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MediaPlayer onError"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v1, "what"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 272
    const-string v1, "extra"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 273
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 274
    return-void
.end method

.method public static b(Laje;)V
    .locals 3

    .prologue
    .line 849
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Laje;)Ljava/util/Map;

    move-result-object v0

    .line 850
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_PRESS_HOLD"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 851
    return-void
.end method

.method public static b(Lajr;)V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 627
    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    const-string v1, "sponsor"

    iget-object v2, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v2}, Lbje;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_PROMOTED_STORY_BUTTON_PRESS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 631
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 329
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 331
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1242
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1244
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_EMAIL_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1013
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1208
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "swipe"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1210
    return-void
.end method

.method public static b(Z)V
    .locals 3

    .prologue
    .line 251
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SEARCHABLE_BY_PHONE_NUMBER_CHANGED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 252
    return-void

    .line 251
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static b(ZJ)V
    .locals 3

    .prologue
    .line 1320
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "from_tcp"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "milliseconds_since_chat_created"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 1323
    return-void
.end method

.method private static c(Laje;)Ljava/lang/String;
    .locals 1
    .param p0    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 720
    invoke-virtual {p0}, Laje;->ak()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 726
    const-string v0, "IMAGE"

    :goto_0
    return-object v0

    .line 722
    :pswitch_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 724
    :pswitch_1
    const-string v0, "VIDEO_NO_SOUND"

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 224
    return-void
.end method

.method public static c(I)V
    .locals 3

    .prologue
    .line 891
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECTED_AFTER_ATTEMPTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 894
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 552
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DELETE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 553
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1120
    const-string v1, "FROM"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v1, "TO"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v1, "ACTIVITY_TRANSITION"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1123
    return-void
.end method

.method public static c(Z)V
    .locals 3

    .prologue
    .line 262
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "LOGOUT_DIALOG"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 263
    return-void

    .line 262
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static c(ZJ)V
    .locals 3

    .prologue
    .line 1387
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_CONNECT_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    if-eqz p0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1388
    if-eqz p0, :cond_0

    .line 1389
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1390
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECT_LATENCY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1392
    :cond_0
    return-void

    .line 1387
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method private static d(Laje;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laje;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 864
    const-string v1, "sender_username"

    invoke-virtual {p0}, Laje;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v1, "viewer_username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 228
    return-void
.end method

.method public static d(I)V
    .locals 3

    .prologue
    .line 1029
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number_of_letters"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1030
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "USER_OPENED_BROADCAST_SNAP_LINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 583
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1326
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1327
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    return-void
.end method

.method public static d(Z)V
    .locals 3

    .prologue
    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v0, "success"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v2, "type"

    if-eqz p0, :cond_0

    const-string v0, "storySnap"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "VIDEO_PLAY_ATTEMPT"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 312
    return-void

    .line 280
    :cond_0
    const-string v0, "snap"

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MANAGE_ADDITIONAL_SERVICES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 232
    return-void
.end method

.method public static e(I)V
    .locals 3

    .prologue
    .line 1411
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SEND_DELAY_FOR_SEQNUM_GENERATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "delayed_messages_count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 1414
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 622
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_PROMOTED_STORY_CELL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "sponsor"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 623
    return-void
.end method

.method public static e(Z)V
    .locals 3

    .prologue
    .line 334
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 335
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "skipped"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SKIP_NEW_USER_ADD_FRIENDS"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 337
    return-void

    .line 335
    :cond_0
    const-string v0, "redirected"

    goto :goto_0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected page number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    const-string v0, "Chat"

    .line 155
    :goto_0
    return-object v0

    .line 149
    :pswitch_1
    const-string v0, "Feed"

    goto :goto_0

    .line 151
    :pswitch_2
    const-string v0, "Camera"

    goto :goto_0

    .line 153
    :pswitch_3
    const-string v0, "My friends"

    goto :goto_0

    .line 155
    :pswitch_4
    const-string v0, "Discover"

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CLEAR_FEED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 236
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 822
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 823
    const-string v1, "message"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "Unsatisfied link error"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 825
    return-void
.end method

.method public static f(Z)V
    .locals 3

    .prologue
    .line 351
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_STORY_REPLY"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "follow_through"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 352
    return-void

    .line 351
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static g(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1158
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1159
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1163
    :goto_0
    return-object v0

    .line 1160
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1161
    const-string v0, "5_9"

    goto :goto_0

    .line 1163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FILTER_SETTING_CHANGED_FROM_CAMERA"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 240
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 917
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_VIEWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 918
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_VIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 919
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->aa()V

    .line 920
    return-void
.end method

.method public static g(Z)V
    .locals 3

    .prologue
    .line 810
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 811
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "BETA_SIGNUP_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 813
    return-void

    .line 811
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1168
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1169
    const-string v0, "0_4"

    .line 1175
    :goto_0
    return-object v0

    .line 1170
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1171
    const-string v0, "5_9"

    goto :goto_0

    .line 1172
    :cond_1
    const/16 v0, 0x32

    if-ge p0, v0, :cond_2

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1175
    :cond_2
    const-string v0, "50_OR_MORE"

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 828
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TYPED_CAPTION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 829
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1078
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ADD_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1079
    return-void
.end method

.method public static h(Z)V
    .locals 3

    .prologue
    .line 816
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 817
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "PLAY_STORE_REVIEW_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 819
    return-void

    .line 817
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 841
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAWING_BUTTON_PRESSED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 842
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1082
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_DELETE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1083
    return-void
.end method

.method public static i(Z)V
    .locals 2

    .prologue
    .line 928
    if-eqz p0, :cond_0

    .line 929
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN_NOTIFICATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 881
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 882
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_INVITE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1087
    return-void
.end method

.method public static j(Z)V
    .locals 3

    .prologue
    .line 936
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "follow_through"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 937
    return-void
.end method

.method public static k()V
    .locals 0

    .prologue
    .line 924
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->aa()V

    .line 925
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1104
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_CONVERSATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "cleared_username"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1105
    return-void
.end method

.method public static k(Z)V
    .locals 3

    .prologue
    .line 1263
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "relink"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1264
    return-void
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 945
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_BEGIN_REGISTRATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 946
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1196
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1197
    return-void
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 950
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_LOGIN_SUCCESSFUL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 951
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1213
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1214
    return-void
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 955
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 956
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1217
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1218
    return-void
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 959
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_AUTO_FILL_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 960
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1226
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_RETRIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1227
    return-void
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 963
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 964
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1230
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1231
    return-void
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 967
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 968
    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1234
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1235
    return-void
.end method

.method public static r()V
    .locals 2

    .prologue
    .line 971
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 972
    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1238
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1239
    return-void
.end method

.method public static s()V
    .locals 2

    .prologue
    .line 975
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 976
    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1247
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_EXPIRED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1248
    return-void
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 979
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 980
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1251
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_REFUNDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1252
    return-void
.end method

.method public static u()V
    .locals 2

    .prologue
    .line 983
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 984
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1259
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CASH_TAG_CREATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1260
    return-void
.end method

.method public static v()V
    .locals 2

    .prologue
    .line 987
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_COMMON"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 988
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 1267
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1268
    return-void
.end method

.method public static w()V
    .locals 2

    .prologue
    .line 991
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_EASY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 992
    return-void
.end method

.method public static x()V
    .locals 2

    .prologue
    .line 995
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_SIMILAR_TO_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 996
    return-void
.end method

.method public static y()V
    .locals 2

    .prologue
    .line 999
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1000
    return-void
.end method

.method public static z()V
    .locals 2

    .prologue
    .line 1003
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 1004
    return-void
.end method
