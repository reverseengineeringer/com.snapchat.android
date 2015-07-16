.class public final enum Lcom/snapchat/android/database/OnboardingTooltip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/OnboardingTooltip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum CAPTION:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum FIRST_LOCATION:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum MY_STORY:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum NEW_FRIEND_REQUEST:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum PROFILE:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum PROFILE_PICTURES:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum SNAP:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum SWIPE_FILTERS:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "SNAP"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->SNAP:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 23
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "CAPTION"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_CAPTION_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->CAPTION:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 24
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "SWIPE_FILTERS"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->SWIPE_FILTERS:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 25
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "MY_STORY"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_POSTED_STORY_FROM_SEND_TO:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->MY_STORY:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 26
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "FIRST_LOCATION"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->FIRST_LOCATION:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 27
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "PROFILE"

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 28
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "NEW_FRIEND_REQUEST"

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->NEW_FRIEND_REQUEST:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 29
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "ADD_NEARBY_PROMPT"

    const/4 v2, 0x7

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 30
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "PROFILE_PICTURES"

    const/16 v2, 0x8

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE_PICTURES:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 31
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/database/OnboardingTooltip;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->SNAP:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->CAPTION:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->SWIPE_FILTERS:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->MY_STORY:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->FIRST_LOCATION:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->NEW_FRIEND_REQUEST:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE_PICTURES:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->$VALUES:[Lcom/snapchat/android/database/OnboardingTooltip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/snapchat/android/database/OnboardingTooltip;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 3
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert an empty string("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") into OnboardingTooltip. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/OnboardingTooltip;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into OnboardingTooltip. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/OnboardingTooltip;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->$VALUES:[Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/OnboardingTooltip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/OnboardingTooltip;

    return-object v0
.end method


# virtual methods
.method public final getSharedPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/database/OnboardingTooltip;->a:Ljava/lang/String;

    return-object v0
.end method
