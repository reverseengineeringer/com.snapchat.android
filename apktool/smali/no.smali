.class public final Lno;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIONS_PARAM:Ljava/lang/String; = "actions"

.field public static final BEST_FRIENDS_PARAM:Ljava/lang/String; = "best_friends"

.field public static final EXIT_REASON_PARAM:Ljava/lang/String; = "exit_reason"

.field public static final FILTERS_ENABLED_PARAM:Ljava/lang/String; = "filtersEnabled"

.field public static final JUST_ADDED_PARAM:Ljava/lang/String; = "just_added"

.field public static final ORIENTATION_PARAM:Ljava/lang/String; = "orientation"

.field public static final OTHER_FRIENDS_PARAM:Ljava/lang/String; = "other_friends"

.field public static final RECENT_FRIENDS_PARAM:Ljava/lang/String; = "recent_friends"

.field public static final SEARCHED_FRIENDS_PARAM:Ljava/lang/String; = "searched_friends"

.field public static final SELECT_FRIEND_EVENT:Ljava/lang/String; = "SELECT_FRIEND"

.field public static final SESSION_NUMBER_PARAM:Ljava/lang/String; = "session_number"

.field public static final SNAP_CAPTURE_EVENT:Ljava/lang/String; = "SNAP_CAPTURED_TO_PREVIEW"

.field public static final SNAP_MEDIA_CACHE_EVENT:Ljava/lang/String; = "SNAP_MEDIA_CACHE"

.field public static final STORIES_PARAM:Ljava/lang/String; = "stories"

.field public static final SUCCESS_PARAM:Ljava/lang/String; = "success"

.field public static final TYPE_PARAM:Ljava/lang/String; = "type"

.field private static final sInstance:Lno;


# instance fields
.field private final mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field public final mMetricMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;",
            ">;"
        }
    .end annotation
.end field

.field public mNumBestFriends:I

.field public mNumJustAddedFriends:I

.field public mNumOtherFriends:I

.field public mNumRecentFriends:I

.field public mNumSearchedFriends:I

.field public mNumSelectFriendSession:I

.field public mNumStories:I

.field public mNumTotalActions:I

.field public mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field public mSnapCaptureMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    sput-object v0, Lno;->sInstance:Lno;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0}, Lno;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lno;->mMetricMap:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lno;->mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 72
    return-void
.end method

.method public static a()Lno;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lno;->sInstance:Lno;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lno;->mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lno;->mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "exit_reason"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "session_number"

    iget v2, p0, Lno;->mNumSelectFriendSession:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "actions"

    iget v2, p0, Lno;->mNumTotalActions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "stories"

    iget v2, p0, Lno;->mNumStories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "just_added"

    iget v2, p0, Lno;->mNumJustAddedFriends:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "recent_friends"

    iget v2, p0, Lno;->mNumRecentFriends:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "best_friends"

    iget v2, p0, Lno;->mNumBestFriends:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "other_friends"

    iget v2, p0, Lno;->mNumOtherFriends:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "searched_friends"

    iget v2, p0, Lno;->mNumSearchedFriends:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lno;->mSelectFriendMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 257
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lajx;->ab()Z

    move-result v1

    const-string v0, "SNAP_CAPTURED_TO_PREVIEW"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "type"

    if-eqz p1, :cond_0

    const-string v0, "video"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v2, "filtersEnabled"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lno;->mSnapCaptureMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 118
    return-void

    .line 117
    :cond_0
    const-string v0, "image"

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lno;->mNumSelectFriendSession:I

    .line 150
    invoke-virtual {p0}, Lno;->c()V

    .line 151
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lno;->mNumTotalActions:I

    .line 165
    iput v0, p0, Lno;->mNumStories:I

    .line 166
    iput v0, p0, Lno;->mNumJustAddedFriends:I

    .line 167
    iput v0, p0, Lno;->mNumRecentFriends:I

    .line 168
    iput v0, p0, Lno;->mNumBestFriends:I

    .line 169
    iput v0, p0, Lno;->mNumOtherFriends:I

    .line 170
    iput v0, p0, Lno;->mNumSearchedFriends:I

    .line 171
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "back_to_preview"

    invoke-virtual {p0, v0}, Lno;->a(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lno;->c()V

    .line 196
    return-void
.end method
