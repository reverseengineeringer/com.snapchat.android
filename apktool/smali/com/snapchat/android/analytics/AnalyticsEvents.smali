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

.field private static final sServiceManager:Laph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->sServiceManager:Laph;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    return-void
.end method

.method public static A()V
    .locals 2

    .prologue
    .line 970
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ATTEMPT_REGISTER_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 971
    return-void
.end method

.method public static B()V
    .locals 2

    .prologue
    .line 980
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 981
    return-void
.end method

.method public static C()V
    .locals 2

    .prologue
    .line 984
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 985
    return-void
.end method

.method public static D()V
    .locals 2

    .prologue
    .line 988
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 989
    return-void
.end method

.method public static E()V
    .locals 2

    .prologue
    .line 996
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 997
    return-void
.end method

.method public static F()V
    .locals 2

    .prologue
    .line 1000
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_USERNAME_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1001
    return-void
.end method

.method public static G()V
    .locals 2

    .prologue
    .line 1025
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_GRANTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1026
    return-void
.end method

.method public static H()V
    .locals 2

    .prologue
    .line 1029
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_DENIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1030
    return-void
.end method

.method public static I()V
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SKIPPED_ADD_FRIENDS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1034
    return-void
.end method

.method public static J()V
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SCROLLS_FRIENDS_TABLE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1038
    return-void
.end method

.method public static K()V
    .locals 2

    .prologue
    .line 1071
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_ALL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1072
    return-void
.end method

.method public static L()V
    .locals 2

    .prologue
    .line 1075
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_USED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1076
    return-void
.end method

.method public static M()V
    .locals 2

    .prologue
    .line 1147
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_ACCEPTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1148
    return-void
.end method

.method public static N()V
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1152
    return-void
.end method

.method public static O()V
    .locals 2

    .prologue
    .line 1155
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1156
    return-void
.end method

.method public static P()V
    .locals 2

    .prologue
    .line 1163
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1164
    return-void
.end method

.method public static Q()V
    .locals 2

    .prologue
    .line 1218
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_BUTTON_TAPPED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1219
    return-void
.end method

.method public static R()V
    .locals 2

    .prologue
    .line 1234
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1235
    return-void
.end method

.method public static S()V
    .locals 2

    .prologue
    .line 1238
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_ASKED_TO_RELINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1239
    return-void
.end method

.method public static T()V
    .locals 2

    .prologue
    .line 1242
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1243
    return-void
.end method

.method public static U()V
    .locals 2

    .prologue
    .line 1246
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1247
    return-void
.end method

.method public static V()V
    .locals 2

    .prologue
    .line 1250
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1251
    return-void
.end method

.method public static W()V
    .locals 2

    .prologue
    .line 1358
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_DISCONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1359
    return-void
.end method

.method public static X()V
    .locals 2

    .prologue
    .line 1362
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TCP_RECONNECT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1363
    return-void
.end method

.method public static Y()V
    .locals 2

    .prologue
    .line 1366
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MISSING_CHAT_OPENED_FROM_PUSH_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1367
    return-void
.end method

.method public static Z()V
    .locals 2

    .prologue
    .line 1370
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "READ_CHAT_OPENED_FROM_PUSH_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1371
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
    .line 1114
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1115
    const-string v1, "number_of_friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v1, "number_of_friends_histogram"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Lakr;->aa()Z

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_ENABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 170
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "ON_RESUME"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v2, "DEVICE"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 172
    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 173
    const-string v2, "SDK_INT"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 174
    const-string v2, "SDK_RELEASE"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 175
    const-string v2, "CPU_ABI"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 176
    const-string v2, "CPU_ABI2"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 177
    const-string v2, "FILTERS_ENABLED"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 178
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 179
    return-void

    .line 167
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_DISABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    const-string v1, "friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FINISH_NEW_USER_ADD_FRIENDS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 333
    return-void
.end method

.method public static a(II)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v1, "Previous page"

    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 141
    const-string v1, "New page"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 143
    return-void
.end method

.method public static a(III)V
    .locals 3

    .prologue
    .line 1096
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-static {p0, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1098
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ON_SNAPCHAT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1100
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {p1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1102
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ADDED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1104
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {p2, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1106
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_INVITED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1108
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1109
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1110
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1111
    return-void
.end method

.method public static a(J)V
    .locals 6

    .prologue
    .line 848
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 851
    return-void

    .line 848
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

.method private static a(Laji;)V
    .locals 6

    .prologue
    .line 436
    iget v1, p0, Laji;->mSwipeFilterNumSingleSwipes:I

    .line 437
    iget v2, p0, Laji;->mSwipeFilterNumDoubleSwipes:I

    .line 438
    add-int v3, v1, v2

    .line 439
    if-lez v3, :cond_1

    .line 440
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 441
    const-string v5, "type"

    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {p0, v4}, Lns;->a(Laji;Ljava/util/Map;)V

    .line 444
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "filter"

    iget-object v5, p0, Laji;->mBaseFilter:Loz;

    iget-object v5, v5, Loz;->a:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_0
    const-string v0, "number_of_filter_changes"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v0, "single_swipe_filter_changes"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v0, "double_swipe_filter_changes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SWIPE_FILTER_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 452
    :cond_1
    return-void

    .line 441
    :cond_2
    const-string v0, "VIDEO"

    goto :goto_0
.end method

.method public static a(Laji;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILakp;)V
    .locals 8

    .prologue
    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 349
    const-string v0, "sender"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_5

    .line 352
    const-string v0, "type"

    const-string v3, "IMAGE"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_0
    const-string v0, "recipientCount"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/4 v0, 0x1

    if-ne p5, v0, :cond_8

    .line 381
    const-string v0, "recipientCountBucket"

    const-string v3, "1 recipient"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_0
    :goto_1
    const-string v0, "friendCount"

    invoke-virtual {p6}, Lakp;->p()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "drawing"

    iget-boolean v0, p0, Laji;->mHasDrawing:Z

    if-eqz v0, :cond_b

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "caption"

    iget-object v3, p0, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-static {p0, v1}, Lns;->a(Laji;Ljava/util/Map;)V

    .line 395
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "filter"

    iget-object v3, p0, Laji;->mBaseFilter:Loz;

    iget-object v3, v3, Loz;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_1
    const-string v3, "with_story"

    if-eqz p2, :cond_c

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    if-eqz p4, :cond_e

    .line 400
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_d

    .line 401
    const-string v0, "source"

    const-string v3, "chat_story_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_2
    :goto_4
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SENT"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 410
    iget-object v0, p0, Laji;->mCaptionAnalyticData:Laqn;

    .line 411
    if-eqz v0, :cond_3

    .line 412
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Laqn;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 417
    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_impressions"

    iget v2, p0, Laji;->mGeofilterImpressions:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Laji;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 419
    :cond_4
    :goto_5
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laji;)V

    .line 420
    return-void

    .line 354
    :cond_5
    const-string v0, "type"

    const-string v3, "VIDEO"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 356
    const-string v0, "videoType"

    const-string v3, "SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :goto_6
    instance-of v0, p0, Laku;

    if-eqz v0, :cond_7

    move-object v0, p0

    .line 361
    check-cast v0, Laku;

    .line 362
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 363
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v4

    .line 365
    const-string v5, "transcodingEnabled"

    invoke-virtual {v4}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v4, "recordedVideoFileSize"

    invoke-virtual {v0}, Laku;->p()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v4, "transcodedVideoFileSize"

    iget-object v0, v0, Laku;->mTranscodingState:Lxp;

    invoke-virtual {v0}, Lxp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laxr;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 369
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

    .line 358
    :cond_6
    const-string v0, "videoType"

    const-string v3, "NO_SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 374
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reporting metrics may be wrong, snapybryo is expected to be a VideoSnapbryo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_8
    const/4 v0, 0x1

    if-le p5, v0, :cond_9

    const/4 v0, 0x5

    if-gt p5, v0, :cond_9

    .line 383
    const-string v0, "recipientCountBucket"

    const-string v3, "2-5 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 384
    :cond_9
    const/4 v0, 0x5

    if-le p5, v0, :cond_a

    const/16 v0, 0xa

    if-gt p5, v0, :cond_a

    .line 385
    const-string v0, "recipientCountBucket"

    const-string v3, "6-10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 386
    :cond_a
    const/16 v0, 0xa

    if-le p5, v0, :cond_0

    .line 387
    const-string v0, "recipientCountBucket"

    const-string v3, ">10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 391
    :cond_b
    const-string v0, "0"

    goto/16 :goto_2

    .line 398
    :cond_c
    const-string v0, "0"

    goto/16 :goto_3

    .line 402
    :cond_d
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_2

    .line 403
    const-string v0, "source"

    const-string v3, "chat_story_quick_snap_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 406
    :cond_e
    const-string v3, "source"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

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

    .line 417
    :cond_10
    iget v1, p0, Laji;->mGeofilterImpressions:I

    if-lez v1, :cond_4

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto/16 :goto_5
.end method

.method public static a(Laji;ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 459
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 460
    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    if-nez v0, :cond_3

    .line 461
    const-string v0, "type"

    const-string v2, "IMAGE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :goto_0
    const-string v2, "drawing"

    iget-boolean v0, p0, Laji;->mHasDrawing:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v0, "caption"

    iget-object v2, p0, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static {p0, v1}, Lns;->a(Laji;Ljava/util/Map;)V

    .line 475
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "filter"

    iget-object v2, p0, Laji;->mBaseFilter:Loz;

    iget-object v2, v2, Loz;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_0
    const-string v2, "reply"

    if-eqz p1, :cond_6

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "with_snap"

    if-eqz p2, :cond_7

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v0, "context"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 483
    const-string v2, "sender"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "POST_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 486
    iget-object v1, p0, Laji;->mCaptionAnalyticData:Laqn;

    .line 487
    if-eqz v1, :cond_1

    .line 488
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Laqn;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 493
    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_impressions"

    iget v2, p0, Laji;->mGeofilterImpressions:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Laji;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 495
    :cond_2
    :goto_4
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laji;)V

    .line 496
    return-void

    .line 463
    :cond_3
    const-string v0, "type"

    const-string v2, "VIDEO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {p0}, Laji;->h()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 465
    const-string v0, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 467
    :cond_4
    const-string v0, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 471
    :cond_5
    const-string v0, "0"

    goto/16 :goto_1

    .line 478
    :cond_6
    const-string v0, "0"

    goto/16 :goto_2

    .line 479
    :cond_7
    const-string v0, "0"

    goto/16 :goto_3

    .line 493
    :cond_8
    iget v1, p0, Laji;->mGeofilterImpressions:I

    if-lez v1, :cond_2

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_4
.end method

.method public static a(Laka;)V
    .locals 4

    .prologue
    .line 584
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 585
    const-string v1, "time"

    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    if-nez v1, :cond_0

    .line 587
    const-string v1, "type"

    const-string v2, "IMAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 597
    const-string v2, "id"

    invoke-virtual {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v2, "sender"

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    instance-of v2, p0, Lakl;

    if-eqz v2, :cond_2

    .line 600
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SCREENSHOT_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 604
    :goto_1
    return-void

    .line 589
    :cond_0
    const-string v1, "type"

    const-string v2, "VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 591
    const-string v1, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 593
    :cond_1
    const-string v1, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    :cond_2
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SCREENSHOT"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_1
.end method

.method public static a(Laka;Lakp;)V
    .locals 4

    .prologue
    .line 546
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 547
    const-string v1, "time"

    invoke-virtual {p0}, Laka;->G()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "friendCount"

    invoke-virtual {p1}, Lakp;->p()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    if-nez v1, :cond_1

    .line 550
    const-string v1, "type"

    const-string v2, "IMAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 560
    const-string v2, "id"

    invoke-virtual {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v2, "sender"

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    instance-of v2, p0, Lajj;

    if-eqz v2, :cond_3

    .line 563
    const-string v2, "url"

    check-cast p0, Lajj;

    iget-object v3, p0, Lajj;->mActionUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "BROADCAST_SNAP_OPENED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 569
    :cond_0
    :goto_1
    return-void

    .line 552
    :cond_1
    const-string v1, "type"

    const-string v2, "VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Laka;->ai()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 554
    const-string v1, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 556
    :cond_2
    const-string v1, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Laka;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_VIEW"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 567
    invoke-virtual {p0}, Laka;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_SNAP_GEOFILTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "filter_id"

    invoke-virtual {p0}, Laka;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_1
.end method

.method public static a(Lakl;)V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SAVE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 539
    return-void
.end method

.method public static a(Lakl;ZLakp;)V
    .locals 4

    .prologue
    .line 182
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 183
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 185
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 186
    const-string v2, "type"

    if-eqz p1, :cond_2

    const-string v0, "0"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 188
    const-string v2, "username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lakl;->mUsername:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_MY_STORIES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 194
    :goto_1
    return-void

    .line 186
    :cond_2
    const-string v0, "1"

    goto :goto_0

    .line 192
    :cond_3
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_STORIES"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_1
.end method

.method public static a(Lbju$a;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbju$a;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1256
    sget-object v0, Lbju$a;->DELETE:Lbju$a;

    invoke-virtual {v0, p0}, Lbju$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    .line 1258
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

    .line 1260
    instance-of v1, v0, Lakw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lakw;

    invoke-virtual {v1}, Lakw;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lakw;

    invoke-virtual {v1}, Lakw;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    check-cast v0, Lakw;

    invoke-virtual {v0}, Lakw;->y()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 1263
    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "RECEIVED_CHAT_LIFETIME"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0

    .line 1267
    :cond_1
    return-void
.end method

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "REASON"

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 257
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, v1, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 523
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 524
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 3

    .prologue
    .line 799
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SWIPE_FILTER_SWIPED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p0}, Lavr;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 801
    return-void

    .line 799
    :cond_0
    const-string v0, "IMAGE"

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3
    .param p0    # Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1167
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SWIPE_TO_SEND_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1168
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CAPTCHA_REGISTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "unsuccessful_attempts"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 199
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 200
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1184
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1186
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_PRIVACY_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "old_privacy"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 247
    const-string v1, "new_privacy"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 248
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 249
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p2    # Ljava/util/Map;
        .annotation build Lchc;
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
    .line 1298
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1303
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v2, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 1309
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

    .line 1310
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_1

    .line 1313
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

    .line 1314
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 238
    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v0, "filter"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "type"

    if-eqz p2, :cond_0

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    if-eqz p1, :cond_1

    .line 310
    const-string v0, "filter_id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :goto_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SWIPE_FILTER_PASSED"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 315
    return-void

    .line 308
    :cond_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 312
    :cond_1
    const-string v0, "filter_id"

    const-string v2, "None"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    const-string v0, "DEFAULT_SUGGESTION"

    .line 1015
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1021
    return-void

    .line 1010
    :cond_0
    if-nez p2, :cond_1

    .line 1011
    const-string v0, "OTHER_SUGGESTION"

    goto :goto_0

    .line 1013
    :cond_1
    const-string v0, "CUSTOM"

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 203
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CAPTCHA_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "success"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 205
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 206
    return-void

    .line 204
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static a(ZIIII)V
    .locals 3

    .prologue
    .line 834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 835
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 841
    return-void
.end method

.method public static a(ZJ)V
    .locals 5

    .prologue
    .line 1271
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_OR_CASH_OPEN_FROM_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 1274
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 1276
    const-string v1, "display_latency"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1279
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1280
    return-void
.end method

.method public static a(ZLaka;)V
    .locals 3

    .prologue
    .line 817
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Laka;)Ljava/util/Map;

    move-result-object v0

    .line 818
    if-eqz p0, :cond_0

    .line 819
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_ACCEPT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 823
    :goto_0
    return-void

    .line 821
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_DECLINE"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0
.end method

.method public static a(ZLakl;)V
    .locals 10

    .prologue
    .line 610
    invoke-virtual {p1}, Lakl;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onEndStoryViewingSession shouldn\'t be called while story snap is being viewed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "viewing_type"

    if-eqz p0, :cond_4

    const-string v0, "0"

    :goto_0
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Laka;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-virtual {p1}, Lakl;->z()J

    move-result-wide v4

    long-to-float v1, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "id"

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "viewer_username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "poster_username"

    iget-object v1, p1, Lakl;->mUsername:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p1}, Lakl;->z()J

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

    invoke-virtual {p1}, Lakl;->G()D

    move-result-wide v6

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr v6, v8

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-eqz p0, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget-object v6, p1, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

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

    .line 624
    invoke-virtual {p1}, Lakl;->G()D

    move-result-wide v0

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Laka;)Ljava/lang/String;

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

    .line 626
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 628
    invoke-virtual {p1}, Laka;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "filter_id"

    invoke-virtual {p1}, Laka;->I()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Laka;->j()Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 631
    :cond_1
    iget-boolean v0, p1, Lakl;->mIsShared:Z

    if-eqz v0, :cond_8

    .line 632
    invoke-virtual {p1}, Lakl;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    invoke-virtual {p1}, Lakl;->aC()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 635
    :cond_2
    :goto_3
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 646
    :cond_3
    :goto_4
    return-void

    .line 620
    :cond_4
    const-string v0, "1"

    goto/16 :goto_0

    .line 623
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 634
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

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

    .line 637
    :cond_8
    iget-object v0, p1, Lakl;->mUsername:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 639
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_MY_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_4

    .line 641
    :cond_9
    iget-object v0, p1, Lakl;->mUsername:Ljava/lang/String;

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_TEAMSNAPCHAT_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_4
.end method

.method public static a(ZLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
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
    .line 1320
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1324
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$a;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$a;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1325
    const/4 v0, 0x0

    move v1, v0

    .line 1327
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1328
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1329
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1335
    :cond_2
    if-lez v1, :cond_0

    .line 1336
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_RELEASED_POTENTIALLY_UNVIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0
.end method

.method private static aa()V
    .locals 2

    .prologue
    .line 876
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_ACTIVE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 877
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_SETTINGS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 210
    return-void
.end method

.method public static b(I)V
    .locals 3

    .prologue
    .line 795
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_strokes"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 796
    return-void
.end method

.method public static b(II)V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MediaPlayer onError"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 261
    const-string v1, "what"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 262
    const-string v1, "extra"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 263
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 264
    return-void
.end method

.method public static b(Laka;)V
    .locals 3

    .prologue
    .line 812
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Laka;)Ljava/util/Map;

    move-result-object v0

    .line 813
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_PRESS_HOLD"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 814
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 319
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 321
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1205
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1207
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 974
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_EMAIL_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 976
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1171
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1173
    return-void
.end method

.method public static b(Z)V
    .locals 3

    .prologue
    .line 241
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SEARCHABLE_BY_PHONE_NUMBER_CHANGED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 242
    return-void

    .line 241
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static b(ZJ)V
    .locals 3

    .prologue
    .line 1283
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

    .line 1286
    return-void
.end method

.method private static c(Laka;)Ljava/lang/String;
    .locals 1
    .param p0    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 683
    invoke-virtual {p0}, Laka;->ai()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 689
    const-string v0, "IMAGE"

    :goto_0
    return-object v0

    .line 685
    :pswitch_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 687
    :pswitch_1
    const-string v0, "VIDEO_NO_SOUND"

    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 214
    return-void
.end method

.method public static c(I)V
    .locals 3

    .prologue
    .line 854
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECTED_AFTER_ATTEMPTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 857
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DELETE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 543
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1083
    const-string v1, "FROM"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string v1, "TO"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string v1, "ACTIVITY_TRANSITION"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1086
    return-void
.end method

.method public static c(Z)V
    .locals 3

    .prologue
    .line 252
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "LOGOUT_DIALOG"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 253
    return-void

    .line 252
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static c(ZJ)V
    .locals 3

    .prologue
    .line 1350
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_CONNECT_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    if-eqz p0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1351
    if-eqz p0, :cond_0

    .line 1352
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1353
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECT_LATENCY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1355
    :cond_0
    return-void

    .line 1350
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method private static d(Laka;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 827
    const-string v1, "sender_username"

    invoke-virtual {p0}, Laka;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v1, "viewer_username"

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 218
    return-void
.end method

.method public static d(I)V
    .locals 3

    .prologue
    .line 992
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number_of_letters"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 993
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "USER_OPENED_BROADCAST_SNAP_LINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 573
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1289
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->mEventsTimer:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    return-void
.end method

.method public static d(Z)V
    .locals 3

    .prologue
    .line 268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    const-string v0, "success"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "type"

    if-eqz p0, :cond_0

    const-string v0, "storySnap"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "VIDEO_PLAY_ATTEMPT"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 302
    return-void

    .line 270
    :cond_0
    const-string v0, "snap"

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MANAGE_ADDITIONAL_SERVICES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 222
    return-void
.end method

.method public static e(I)V
    .locals 3

    .prologue
    .line 1374
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

    .line 1377
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 785
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 786
    const-string v1, "message"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "Unsatisfied link error"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 788
    return-void
.end method

.method public static e(Z)V
    .locals 3

    .prologue
    .line 324
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 325
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "skipped"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SKIP_NEW_USER_ADD_FRIENDS"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 327
    return-void

    .line 325
    :cond_0
    const-string v0, "redirected"

    goto :goto_0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    packed-switch p0, :pswitch_data_0

    .line 158
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

    .line 148
    :pswitch_0
    const-string v0, "Chat"

    .line 156
    :goto_0
    return-object v0

    .line 150
    :pswitch_1
    const-string v0, "Feed"

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "Camera"

    goto :goto_0

    .line 154
    :pswitch_3
    const-string v0, "My friends"

    goto :goto_0

    .line 156
    :pswitch_4
    const-string v0, "Discover"

    goto :goto_0

    .line 146
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
    .line 225
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CLEAR_FEED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 226
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 880
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 881
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_VIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 882
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->aa()V

    .line 883
    return-void
.end method

.method public static f(Z)V
    .locals 3

    .prologue
    .line 341
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_STORY_REPLY"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "follow_through"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 342
    return-void

    .line 341
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static g(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1121
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1122
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1124
    const-string v0, "5_9"

    goto :goto_0

    .line 1126
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
    .line 229
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FILTER_SETTING_CHANGED_FROM_CAMERA"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 230
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ADD_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1042
    return-void
.end method

.method public static g(Z)V
    .locals 3

    .prologue
    .line 773
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 774
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "BETA_SIGNUP_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 776
    return-void

    .line 774
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1132
    const-string v0, "0_4"

    .line 1138
    :goto_0
    return-object v0

    .line 1133
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1134
    const-string v0, "5_9"

    goto :goto_0

    .line 1135
    :cond_1
    const/16 v0, 0x32

    if-ge p0, v0, :cond_2

    .line 1136
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

    .line 1138
    :cond_2
    const-string v0, "50_OR_MORE"

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 791
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TYPED_CAPTION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 792
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1045
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_DELETE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1046
    return-void
.end method

.method public static h(Z)V
    .locals 3

    .prologue
    .line 779
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 780
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "PLAY_STORE_REVIEW_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 782
    return-void

    .line 780
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 804
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAWING_BUTTON_PRESSED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 805
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_INVITE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1050
    return-void
.end method

.method public static i(Z)V
    .locals 2

    .prologue
    .line 891
    if-eqz p0, :cond_0

    .line 892
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN_NOTIFICATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 844
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 845
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_CONVERSATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "cleared_username"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1068
    return-void
.end method

.method public static j(Z)V
    .locals 3

    .prologue
    .line 899
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "follow_through"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 900
    return-void
.end method

.method public static k()V
    .locals 0

    .prologue
    .line 887
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->aa()V

    .line 888
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1159
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1160
    return-void
.end method

.method public static k(Z)V
    .locals 3

    .prologue
    .line 1226
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "relink"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1227
    return-void
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 908
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_BEGIN_REGISTRATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 909
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1176
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1177
    return-void
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 913
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_LOGIN_SUCCESSFUL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 914
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1180
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1181
    return-void
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 918
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 919
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1189
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_RETRIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1190
    return-void
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 922
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_AUTO_FILL_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 923
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1193
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1194
    return-void
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 926
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 927
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1197
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1198
    return-void
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 930
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 931
    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1201
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1202
    return-void
.end method

.method public static r()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 935
    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1210
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_EXPIRED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1211
    return-void
.end method

.method public static s()V
    .locals 2

    .prologue
    .line 938
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 939
    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1214
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_REFUNDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1215
    return-void
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 942
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 943
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1222
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CASH_TAG_CREATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1223
    return-void
.end method

.method public static u()V
    .locals 2

    .prologue
    .line 946
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 947
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1230
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 1231
    return-void
.end method

.method public static v()V
    .locals 2

    .prologue
    .line 950
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_COMMON"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 951
    return-void
.end method

.method public static w()V
    .locals 2

    .prologue
    .line 954
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_EASY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 955
    return-void
.end method

.method public static x()V
    .locals 2

    .prologue
    .line 958
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_SIMILAR_TO_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 959
    return-void
.end method

.method public static y()V
    .locals 2

    .prologue
    .line 962
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 963
    return-void
.end method

.method public static z()V
    .locals 2

    .prologue
    .line 966
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 967
    return-void
.end method
