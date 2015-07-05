.class public final synthetic Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

.field public static final synthetic $SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

.field static final synthetic $SwitchMap$com$snapchat$android$model$FriendAction:[I

.field public static final synthetic $SwitchMap$com$snapchat$android$model$SuggestedFriendAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 858
    invoke-static {}, Lcom/snapchat/android/model/FriendAction;->values()[Lcom/snapchat/android/model/FriendAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    :try_start_0
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_0
    :try_start_1
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_1
    :try_start_2
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_2
    :try_start_3
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_3
    :try_start_4
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_4
    :try_start_5
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    .line 835
    :goto_5
    invoke-static {}, Lcom/snapchat/android/model/SuggestedFriendAction;->values()[Lcom/snapchat/android/model/SuggestedFriendAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$SuggestedFriendAction:[I

    :try_start_6
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$model$SuggestedFriendAction:[I

    sget-object v1, Lcom/snapchat/android/model/SuggestedFriendAction;->HIDE:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SuggestedFriendAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    .line 567
    :goto_6
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    :try_start_7
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_7
    :try_start_8
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_8
    :try_start_9
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->QR_CODE:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_9
    :try_start_a
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AddFriendSourceType:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    .line 214
    :goto_b
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    :try_start_c
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    :try_start_d
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_d
    :try_start_e
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_e
    :try_start_f
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_f
    :try_start_10
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_10
    :try_start_11
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_11
    :try_start_12
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_NEARBY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_12
    :try_start_13
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_13
    :try_start_14
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_14
    :try_start_15
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_15
    return-void

    :catch_0
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    goto/16 :goto_b

    :catch_b
    move-exception v0

    goto/16 :goto_a

    :catch_c
    move-exception v0

    goto/16 :goto_9

    :catch_d
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v0

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    goto/16 :goto_5

    :catch_11
    move-exception v0

    goto/16 :goto_4

    :catch_12
    move-exception v0

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_1

    :catch_15
    move-exception v0

    goto/16 :goto_0
.end method
