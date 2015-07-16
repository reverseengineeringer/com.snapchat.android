.class public final Lakr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DELAY_RELEASE_TIME:I = 0x258

.field public static final DEFAULT_NUM_RECENT_FINDFRIENDS_REQUEST:I = 0xa

.field public static final DEFAULT_NUM_RECENT_FIND_SUGGESTED_FRIENDS_REQUEST:I = 0xa

.field private static final DELIMITER:Ljava/lang/String; = "~"

.field private static final TAG:Ljava/lang/String; = "UserPrefs"

.field private static sContext:Landroid/content/Context;

.field private static final sGson:Lcom/google/gson/Gson;

.field private static final sInstance:Lakr;

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field protected final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lakr;->sContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lakr;->sGson:Lcom/google/gson/Gson;

    .line 64
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    sput-object v0, Lakr;->sInstance:Lakr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lakr;-><init>(Ljavax/inject/Provider;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lakr;->mUserProvider:Ljavax/inject/Provider;

    .line 82
    return-void
.end method

.method public static A()J
    .locals 4

    .prologue
    .line 517
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_CACHED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A(Z)V
    .locals 2

    .prologue
    .line 1602
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SOUND_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1603
    return-void
.end method

.method public static B(Z)V
    .locals 2

    .prologue
    .line 1617
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LED_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1618
    return-void
.end method

.method public static B()Z
    .locals 3

    .prologue
    .line 528
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PROFILE_IMAGES_UPLOADED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static C(Z)V
    .locals 2

    .prologue
    .line 1632
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->WAKE_SCREEN_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1633
    return-void
.end method

.method public static C()Z
    .locals 3

    .prologue
    .line 536
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_PROFILE_IMAGES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static D()I
    .locals 3

    .prologue
    .line 544
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PROFILE_IMAGES_SHARING_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static D(Z)V
    .locals 2

    .prologue
    .line 1647
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NOTIFICATIONS_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1648
    return-void
.end method

.method public static E()Z
    .locals 3

    .prologue
    .line 552
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F()Ljava/lang/String;
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTH_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static G()Ljava/lang/String;
    .locals 3

    .prologue
    .line 575
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static H()Z
    .locals 3

    .prologue
    .line 583
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SNAPKIDZ_ACCOUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static I()I
    .locals 3

    .prologue
    .line 619
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SCORE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static J()Z
    .locals 3

    .prologue
    .line 627
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_POST_STORY_DIALOG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static K()Z
    .locals 3

    .prologue
    .line 631
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static L()V
    .locals 3

    .prologue
    .line 635
    invoke-static {}, Lakr;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->SNAP:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 638
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 640
    return-void
.end method

.method public static M()Z
    .locals 3

    .prologue
    .line 643
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_CAPTION_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static N()V
    .locals 3

    .prologue
    .line 647
    invoke-static {}, Lakr;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->CAPTION:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 650
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_CAPTION_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 652
    return-void
.end method

.method public static O()Z
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static P()Z
    .locals 3

    .prologue
    .line 668
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_POSTED_STORY_FROM_SEND_TO:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Q()V
    .locals 3

    .prologue
    .line 672
    invoke-static {}, Lakr;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->MY_STORY:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 675
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_POSTED_STORY_FROM_SEND_TO:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 676
    return-void
.end method

.method public static R()Z
    .locals 3

    .prologue
    .line 679
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static S()V
    .locals 3

    .prologue
    .line 683
    invoke-static {}, Lakr;->R()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->FIRST_LOCATION:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 686
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 688
    return-void
.end method

.method public static T()Z
    .locals 3

    .prologue
    .line 691
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_SQUARE_TOS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static U()V
    .locals 3

    .prologue
    .line 695
    const-string v0, "true"

    .line 696
    new-instance v1, Lqr;

    invoke-direct {v1}, Lqr;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/ClientProperty;->SQUARE_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    invoke-virtual {v1, v2, v0}, Lqr;->a(Lcom/snapchat/android/database/ClientProperty;Ljava/lang/String;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->execute()V

    .line 697
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_SQUARE_TOS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 698
    return-void
.end method

.method public static V()Z
    .locals 3

    .prologue
    .line 701
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_SNAPCASH_TOS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static W()V
    .locals 3

    .prologue
    .line 705
    const-string v0, "true"

    .line 706
    new-instance v1, Lqr;

    invoke-direct {v1}, Lqr;-><init>()V

    sget-object v2, Lcom/snapchat/android/database/ClientProperty;->SNAPCASH_NEW_TOS_ACCEPTED:Lcom/snapchat/android/database/ClientProperty;

    invoke-virtual {v1, v2, v0}, Lqr;->a(Lcom/snapchat/android/database/ClientProperty;Ljava/lang/String;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->execute()V

    .line 707
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_SNAPCASH_TOS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 708
    return-void
.end method

.method public static X()Z
    .locals 3

    .prologue
    .line 711
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Y()V
    .locals 3

    .prologue
    .line 715
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 717
    return-void
.end method

.method public static Z()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 721
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_GIVEN_ACCESS_TO_CONTACTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 723
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    .line 724
    if-eqz v2, :cond_1

    .line 727
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 728
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_GIVEN_ACCESS_TO_CONTACTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v5}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    :cond_0
    sget-object v4, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_GIVEN_ACCESS_TO_CONTACTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v4}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 735
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 738
    :goto_0
    return v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_GIVEN_ACCESS_TO_CONTACTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static a()Lakr;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lakr;->sInstance:Lakr;

    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->APP_VERSION_CODE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 1090
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1091
    return-void
.end method

.method public static a(Lbkq;)V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTH_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    invoke-virtual {p0}, Lbkq;->I()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lbkq;->I()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lakr;->a(Ljava/util/Map;)V

    .line 290
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 7
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 370
    const/4 v4, 0x0

    .line 372
    sget-object v0, Laao;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    sget-object v2, Laao;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_1
    if-nez v4, :cond_5

    .line 383
    new-instance v0, Lqr;

    invoke-direct {v0}, Lqr;-><init>()V

    .line 385
    :goto_1
    invoke-static {v1}, Lcom/snapchat/android/database/ClientProperty;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/ClientProperty;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lqr;->a(Lcom/snapchat/android/database/ClientProperty;Ljava/lang/String;)Lqr;

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 389
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 392
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 395
    :cond_3
    if-eqz v4, :cond_4

    .line 396
    invoke-virtual {v4}, Lqr;->execute()V

    .line 398
    :cond_4
    return-void

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method

.method public static a(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 1514
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->UNIQUE_DEVICE_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1515
    return-void
.end method

.method public static a(Lrd;)V
    .locals 3
    .param p0    # Lrd;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 827
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 828
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_LINKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lrd;->a()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 829
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_BRAND:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lrd;->d()Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lrd;->d()Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 831
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_SUFFIX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lrd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 832
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->SECURITY_CODE_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lrd;->b()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 833
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_HAS_TRANSACTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lrd;->c()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 834
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_OUTDATED_PROFILE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 835
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 837
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcf;

    invoke-direct {v1}, Lbcf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 838
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NEEDS_PHONE_VERIFICATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    return-void
.end method

.method public static a(ZI)V
    .locals 2

    .prologue
    .line 1064
    if-eqz p0, :cond_0

    .line 1065
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_LANDSCAPE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_PORTRAIT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 818
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 819
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SERVICE_ACTIVE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 820
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_PROVIDER_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 821
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CUSTOMER_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 822
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CUSTOMER_ALLOWED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 824
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1210
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_SUGGESTION_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LINK:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_BUTTON_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_DURATION_IN_MILLIS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1217
    return-void
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lakr;->j()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 156
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SEEN_ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aA()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1008
    invoke-static {}, Lakr;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-static {}, Lakr;->bM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-static {}, Lakr;->bL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    invoke-static {}, Lakr;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    new-instance v4, Lbii;

    invoke-direct {v4}, Lbii;-><init>()V

    invoke-virtual {v4, v0}, Lbii;->d(Ljava/lang/String;)Lbii;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbii;->c(Ljava/lang/String;)Lbii;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbii;->a(Ljava/lang/String;)Lbii;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbii;->b(Ljava/lang/String;)Lbii;

    move-result-object v0

    .line 1017
    sget-object v1, Lakr;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aB()V
    .locals 1

    .prologue
    .line 1021
    const-string v0, ""

    invoke-static {v0}, Lakr;->k(Ljava/lang/String;)V

    .line 1022
    const-string v0, ""

    invoke-static {v0}, Lakr;->w(Ljava/lang/String;)V

    .line 1023
    const-string v0, ""

    invoke-static {v0}, Lakr;->y(Ljava/lang/String;)V

    .line 1024
    const-string v0, ""

    invoke-static {v0}, Lakr;->x(Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public static aC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1039
    invoke-static {}, Lakr;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    invoke-static {}, Lakr;->bM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {}, Lakr;->bL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    new-instance v3, Lbii;

    invoke-direct {v3}, Lbii;-><init>()V

    invoke-virtual {v3, v0}, Lbii;->d(Ljava/lang/String;)Lbii;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbii;->c(Ljava/lang/String;)Lbii;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbii;->b(Ljava/lang/String;)Lbii;

    move-result-object v0

    .line 1046
    sget-object v1, Lakr;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aD()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1060
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->STUDY_SETTINGS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aE()Z
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_ACCOUNT_LOCKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aF()Z
    .locals 3

    .prologue
    .line 1098
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEMOGRAPHICS_TRACKING_SENT_FLAG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aG()Z
    .locals 3

    .prologue
    .line 1106
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SAVE_STORY_TO_GALLERY_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aH()V
    .locals 3

    .prologue
    .line 1110
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SAVE_STORY_TO_GALLERY_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1111
    return-void
.end method

.method public static aI()Z
    .locals 3

    .prologue
    .line 1114
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SAVE_STORY_TO_GALLERY_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aJ()J
    .locals 4

    .prologue
    .line 1126
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_TIME_LAST_SEEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static aK()J
    .locals 4

    .prologue
    .line 1134
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CHANNEL_LIST_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static aL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1142
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_RESOURCE_PARAM_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1150
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_RESOURCE_PARAM_VALUE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aN()V
    .locals 3

    .prologue
    .line 1158
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SHARED_DISCOVER_SNAP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1159
    return-void
.end method

.method public static aO()Z
    .locals 3

    .prologue
    .line 1162
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SHARED_DISCOVER_SNAP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aP()Z
    .locals 3

    .prologue
    .line 1166
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aQ()V
    .locals 3

    .prologue
    .line 1170
    invoke-static {}, Lakr;->aP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 1174
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1177
    return-void
.end method

.method public static aR()Z
    .locals 3

    .prologue
    .line 1180
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aS()V
    .locals 3

    .prologue
    .line 1184
    invoke-static {}, Lakr;->aR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 1188
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_ACCEPTED_ADD_NEARBY_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1191
    return-void
.end method

.method public static aT()Z
    .locals 3

    .prologue
    .line 1194
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aU()V
    .locals 3

    .prologue
    .line 1198
    invoke-static {}, Lakr;->aT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->NEW_FRIEND_REQUEST:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 1202
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1206
    return-void
.end method

.method public static aV()Z
    .locals 3

    .prologue
    .line 1220
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_SUGGESTION_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1224
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LINK:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aX()Z
    .locals 1

    .prologue
    .line 1231
    invoke-static {}, Lakr;->aY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aY()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1235
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aZ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1239
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_BUTTON_TEXT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aa()Z
    .locals 3

    .prologue
    .line 773
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->FILTERS_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ab()Z
    .locals 3

    .prologue
    .line 777
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->FRONT_FACING_FLASH_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ac()J
    .locals 4

    .prologue
    .line 785
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ad()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->USER_TARGETING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Laur;

    invoke-direct {v1}, Laur;-><init>()V

    new-instance v2, Lavz$1;

    invoke-direct {v2}, Lavz$1;-><init>()V

    invoke-virtual {v2}, Lavz$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Laur;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public static ae()Z
    .locals 3

    .prologue
    .line 794
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SYNC_ON_FEED_OPEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static af()Z
    .locals 3

    .prologue
    .line 798
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SEARCHABLE_BY_PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ag()J
    .locals 4

    .prologue
    .line 810
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ah()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 841
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 842
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_LINKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 843
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_BRAND:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 844
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_SUFFIX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 845
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SECURITY_CODE_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 846
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_HAS_TRANSACTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 847
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_OUTDATED_PROFILE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 850
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcf;

    invoke-direct {v1}, Lbcf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 851
    return-void
.end method

.method public static ai()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 854
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 855
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_LINKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 856
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_BRAND:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_SUFFIX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 860
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcf;

    invoke-direct {v1}, Lbcf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method public static aj()V
    .locals 3

    .prologue
    .line 868
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_OUTDATED_PROFILE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    return-void
.end method

.method public static ak()V
    .locals 3

    .prologue
    .line 872
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_HAS_TRANSACTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 873
    return-void
.end method

.method public static al()V
    .locals 3

    .prologue
    .line 883
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SEND_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 884
    return-void
.end method

.method public static am()V
    .locals 3

    .prologue
    .line 887
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SWIPE_SEND_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 888
    return-void
.end method

.method public static an()Z
    .locals 3
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 892
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SERVICE_ACTIVE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ao()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 897
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_PROVIDER_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 3
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CUSTOMER_ALLOWED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    if-nez v0, :cond_0

    .line 909
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 911
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    goto :goto_0
.end method

.method public static aq()Z
    .locals 3

    .prologue
    .line 915
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_LINKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ar()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 920
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_BRAND:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static as()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 925
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CARD_SUFFIX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static at()Z
    .locals 3

    .prologue
    .line 929
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_OUTDATED_PROFILE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static au()Z
    .locals 3

    .prologue
    .line 933
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_HAS_TRANSACTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static av()Z
    .locals 3

    .prologue
    .line 937
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SECURITY_CODE_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aw()Z
    .locals 3

    .prologue
    .line 941
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SEND_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ax()Z
    .locals 3

    .prologue
    .line 945
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_SWIPE_SEND_CONFIRMATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 989
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_STORIES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static az()V
    .locals 1

    .prologue
    .line 993
    const-string v0, ""

    invoke-static {v0}, Lakr;->k(Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public static b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 548
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PROFILE_IMAGES_SHARING_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    return-void
.end method

.method public static b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 1094
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1095
    return-void
.end method

.method public static b(Lbkq;)V
    .locals 4
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lbkq;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const-string v0, "FRIENDS"

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->ordinal()I

    move-result v0

    .line 303
    :goto_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTH_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->m()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->GCM_REGISTRATION_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->p()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->NUM_SNAPS_RECEIVED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->z()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->NUM_SNAPS_SENT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->y()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SCORE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->A()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->MOBILE_VERIFICATION_KEY:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->s()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->MOBILE_VERIFICATION_SEND_TO_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->F()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->w()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->STORY_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SEARCHABLE_BY_PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->G()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->R()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->USER_TARGETING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbkq;->ab()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "{}"

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RAW_THUMBNAIL_UPLOAD_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbkq;->ac()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    invoke-virtual {p0}, Lbkq;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->a(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {p0}, Lbkq;->t()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Z)V

    .line 331
    invoke-virtual {p0}, Lbkq;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->e(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lbkq;->u()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SAVE_STORY_TO_GALLERY_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    invoke-virtual {p0}, Lbkq;->Z()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_FILTERS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    invoke-virtual {p0}, Lbkq;->C()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 341
    invoke-static {}, Lakr;->j()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 342
    invoke-static {v0, v1}, Lakr;->a(J)Z

    .line 345
    :cond_0
    invoke-virtual {p0}, Lbkq;->J()Lbit;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->FILTERS_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbit;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->FRONT_FACING_FLASH_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbit;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    :cond_1
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-virtual {p0}, Lbkq;->K()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakn;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->STUDY_SETTINGS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    invoke-virtual {p0}, Lbkq;->H()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 349
    invoke-virtual {p0}, Lbkq;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/database/OnboardingTooltip;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->UNKNOWN:Lcom/snapchat/android/database/OnboardingTooltip;

    if-eq v0, v2, :cond_2

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/database/OnboardingTooltip;->getSharedPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p0}, Lbkq;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->ordinal()I

    move-result v0

    goto/16 :goto_0

    .line 303
    :cond_4
    new-instance v3, Laur;

    invoke-direct {v3}, Laur;-><init>()V

    invoke-virtual {v3, v0}, Laur;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 352
    :cond_5
    invoke-virtual {p0}, Lbkq;->I()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 353
    invoke-virtual {p0}, Lbkq;->I()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lakr;->a(Ljava/util/Map;)V

    .line 356
    :cond_6
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NEEDS_CAPTCHA_VERIFICATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 265
    return-void
.end method

.method public static b(J)Z
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lakr;->k()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 175
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bA()Z
    .locals 3

    .prologue
    .line 1563
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bB()V
    .locals 3

    .prologue
    .line 1567
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1569
    return-void
.end method

.method public static bC()Z
    .locals 3

    .prologue
    .line 1575
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1576
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LEGACY_SOUND_VIBRATION_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1578
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->VIBRATION_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bD()Z
    .locals 3

    .prologue
    .line 1592
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1593
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LEGACY_SOUND_VIBRATION_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1595
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->SOUND_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bE()Z
    .locals 3

    .prologue
    .line 1609
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1610
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LED_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bF()Z
    .locals 3

    .prologue
    .line 1624
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1625
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->WAKE_SCREEN_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bG()Z
    .locals 3

    .prologue
    .line 1639
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1640
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NOTIFICATIONS_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bH()Z
    .locals 3

    .prologue
    .line 1664
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_FILTERS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static bI()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lakr;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sput-object v0, Lakr;->sContext:Landroid/content/Context;

    .line 89
    :cond_0
    sget-object v0, Lakr;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lakr;->sContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lakr;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 92
    :cond_1
    sget-object v0, Lakr;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static bJ()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ANDROID_DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bK()Ljava/lang/String;
    .locals 3

    .prologue
    .line 953
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_CONVERSATIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 965
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_UPDATES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 977
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_FRIENDS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bN()Z
    .locals 2

    .prologue
    .line 1397
    :try_start_0
    sget-object v0, Lakr;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1400
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1406
    :goto_0
    return v0

    .line 1400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1403
    :catch_0
    move-exception v0

    new-instance v0, Laim;

    invoke-direct {v0}, Laim;-><init>()V

    .line 1404
    invoke-virtual {v0}, Laim;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static ba()J
    .locals 4

    .prologue
    .line 1243
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bb()J
    .locals 4

    .prologue
    .line 1247
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_DURATION_IN_MILLIS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x240c8400

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1258
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_TAG_IMAGE_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1266
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_STATE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->UNKNOWN:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static be()Z
    .locals 3

    .prologue
    .line 1279
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_IN_PROGRESS_FLAG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bf()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1283
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_HISTORY:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1295
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->YEAR_CLASS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bh()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1303
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->URL_ROUTING_MAP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bi()Z
    .locals 3

    .prologue
    .line 1311
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_RED_GEAR_IS_ON:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bj()Z
    .locals 3

    .prologue
    .line 1319
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_EMAIL_VERIFIED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bk()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1351
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_PENDING_EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1355
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PHONE_VERIFICATION_SMS_FORMAT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bm()J
    .locals 4

    .prologue
    .line 1367
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_IDENTITY_ACTION_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bn()Z
    .locals 3

    .prologue
    .line 1371
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_TWO_FA_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bo()Z
    .locals 3

    .prologue
    .line 1388
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_HIGH_LOCATION_REQUIRED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1410
    new-instance v2, Laim;

    invoke-direct {v2}, Laim;-><init>()V

    .line 1411
    invoke-virtual {v2}, Laim;->a()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Laim;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 1417
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 1411
    goto :goto_0

    .line 1414
    :cond_2
    invoke-static {}, Lakr;->bo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1415
    invoke-static {}, Lakr;->bN()Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1417
    goto :goto_1
.end method

.method public static bq()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_SUGGESTED_FRIEND_FIND_TIMESTAMPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-static {v0}, Lakr;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static br()I
    .locals 3

    .prologue
    .line 1437
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_SUGGESTED_FRIEND_FETCH_THRESHOLD:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bs()I
    .locals 3

    .prologue
    .line 1447
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bt()Ljava/util/UUID;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1453
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->UNIQUE_DEVICE_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1454
    if-nez v1, :cond_0

    .line 1457
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static bu()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->FINDFRIENDS_TIMESTAMPS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Lakr;->z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static bw()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1523
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->TAP_TO_SKIP_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static bx()Z
    .locals 3

    .prologue
    .line 1538
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SEEN_SWIPE_DOWN_TUTORIAL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static by()V
    .locals 3

    .prologue
    .line 1545
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SEEN_SWIPE_DOWN_TUTORIAL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1546
    return-void
.end method

.method public static bz()Z
    .locals 3

    .prologue
    .line 1552
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SWIPED_DOWN_IN_VIEWER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NUM_SNAPS_RECEIVED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    return-void
.end method

.method public static c(J)V
    .locals 4

    .prologue
    .line 510
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_DELETED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 511
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_DELETED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CAPTCHA_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    return-void
.end method

.method public static c(Z)V
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_REGISTERING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 446
    return-void
.end method

.method public static d()I
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NUM_SNAPS_SENT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(I)V
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->STORY_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 604
    return-void
.end method

.method public static d(J)V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lakr;->A()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 522
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_CACHED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 525
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 401
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_REGISTERING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SNAPKIDZ_ACCOUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 406
    return-void
.end method

.method public static d(Z)V
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PROFILE_IMAGES_UPLOADED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 2

    .prologue
    .line 1442
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_SUGGESTED_FRIEND_FETCH_THRESHOLD:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1444
    return-void
.end method

.method public static e(J)V
    .locals 2

    .prologue
    .line 781
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 782
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 409
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->BIRTHDAY_THIS_YEAR_IN_MILLIS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Z)V
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_PROFILE_IMAGES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    return-void
.end method

.method public static f(J)V
    .locals 2

    .prologue
    .line 806
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 807
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->GCM_REGISTRATION_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    return-void
.end method

.method public static f(Z)V
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SNAPKIDZ_ACCOUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()I
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static g(J)V
    .locals 2

    .prologue
    .line 1130
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_TIME_LAST_SEEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1131
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 459
    return-void
.end method

.method public static g(Z)V
    .locals 2

    .prologue
    .line 611
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SYNC_ON_FEED_OPEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    return-void
.end method

.method public static h()I
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->STORY_PRIVACY_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(J)V
    .locals 2

    .prologue
    .line 1138
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CHANNEL_LIST_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1139
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 486
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ANDROID_DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 487
    return-void
.end method

.method public static h(Z)V
    .locals 2

    .prologue
    .line 623
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SHOULD_SHOW_POST_STORY_DIALOG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 624
    return-void
.end method

.method public static i()I
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->APP_VERSION_CODE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static i(J)V
    .locals 2

    .prologue
    .line 1252
    invoke-static {}, Lakr;->ba()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 1253
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1255
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    return-void
.end method

.method public static i(Z)V
    .locals 2

    .prologue
    .line 659
    invoke-static {}, Lakr;->O()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 660
    new-instance v0, Lqr;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->SWIPE_FILTERS:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v1}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    .line 662
    :cond_0
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    return-void
.end method

.method public static j()J
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SEEN_ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(J)V
    .locals 2

    .prologue
    .line 1336
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_IDENTITY_ACTION_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1337
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 864
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_CUSTOMER_ALLOWED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 865
    return-void
.end method

.method public static j(Z)V
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->FILTERS_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 766
    return-void
.end method

.method public static k()J
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_FIND_FRIENDS_WITHOUT_CACHE_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 985
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_STORIES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 986
    return-void
.end method

.method public static k(Z)V
    .locals 2

    .prologue
    .line 769
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->FRONT_FACING_FLASH_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 770
    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 997
    sget-object v0, Lakr;->sGson:Lcom/google/gson/Gson;

    const-class v1, Lbii;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbii;

    .line 998
    invoke-virtual {v0}, Lbii;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lakr;->k(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0}, Lbii;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lakr;->x(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Lbii;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lakr;->w(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0}, Lbii;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->y(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method public static l(Z)V
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_SEARCHABLE_BY_PHONE_NUMBER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 803
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1028
    sget-object v0, Lakr;->sGson:Lcom/google/gson/Gson;

    const-class v1, Lbii;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbii;

    .line 1029
    invoke-virtual {v0}, Lbii;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lakr;->x(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0}, Lbii;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lakr;->w(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0}, Lbii;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->y(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public static m(Z)V
    .locals 3

    .prologue
    .line 876
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 877
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_OUTDATED_PROFILE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 878
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SECURITY_CODE_SETTING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 879
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 880
    return-void
.end method

.method public static m()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 208
    if-eqz v1, :cond_0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lakr;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static n(Z)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1072
    if-eqz p0, :cond_0

    .line 1073
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_LANDSCAPE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1076
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_PORTRAIT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static n()V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 1146
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_RESOURCE_PARAM_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1147
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1154
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISCOVER_RESOURCE_PARAM_VALUE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1155
    return-void
.end method

.method public static o(Z)V
    .locals 2

    .prologue
    .line 1086
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_ACCOUNT_LOCKED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1087
    return-void
.end method

.method public static o()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 238
    if-eqz v1, :cond_0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1262
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_TAG_IMAGE_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1263
    return-void
.end method

.method public static p(Z)V
    .locals 2

    .prologue
    .line 1102
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEMOGRAPHICS_TRACKING_SENT_FLAG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    return-void
.end method

.method public static p()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_LOGGED_IN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 247
    invoke-static {}, Lakr;->q()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lakr;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 248
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {}, Lakr;->v()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 247
    goto :goto_0

    :cond_2
    move v0, v1

    .line 248
    goto :goto_1
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1271
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_STATE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1272
    return-void
.end method

.method public static q(Z)V
    .locals 2

    .prologue
    .line 1275
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_IN_PROGRESS_FLAG:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1276
    return-void
.end method

.method public static q()Z
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NEEDS_PHONE_VERIFICATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1287
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->TRANSCODING_HISTORY:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1288
    return-void
.end method

.method public static r(Z)V
    .locals 2

    .prologue
    .line 1307
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_RED_GEAR_IS_ON:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1308
    return-void
.end method

.method public static r()Z
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->NEEDS_CAPTCHA_VERIFICATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CAPTCHA_PROMPT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1291
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->YEAR_CLASS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1292
    return-void
.end method

.method public static s(Z)V
    .locals 2

    .prologue
    .line 1315
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_EMAIL_VERIFIED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1316
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1299
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->URL_ROUTING_MAP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1300
    return-void
.end method

.method public static t(Z)V
    .locals 2

    .prologue
    .line 1323
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_PHONE_PASSWORD_CONFIRMED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1325
    return-void
.end method

.method public static t()Z
    .locals 3

    .prologue
    .line 276
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RAW_THUMBNAIL_UPLOAD_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u()J
    .locals 4

    .prologue
    .line 437
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->BIRTHDAY_THIS_YEAR_IN_MILLIS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1346
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_PENDING_EMAIL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1348
    return-void
.end method

.method public static u(Z)V
    .locals 2

    .prologue
    .line 1375
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_TWO_FA_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1376
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1359
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->PHONE_VERIFICATION_SMS_FORMAT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1360
    return-void
.end method

.method public static v(Z)V
    .locals 2

    .prologue
    .line 1383
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_ADD_NEARBY_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1385
    return-void
.end method

.method public static v()Z
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IS_REGISTERING:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static w()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->GCM_REGISTRATION_ID:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static w(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 949
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_CONVERSATIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 950
    return-void
.end method

.method public static w(Z)V
    .locals 2

    .prologue
    .line 1392
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_IS_HIGH_LOCATION_REQUIRED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1394
    return-void
.end method

.method public static x()Ljava/lang/String;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static x(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 961
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_UPDATES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 962
    return-void
.end method

.method public static x(Z)V
    .locals 3

    .prologue
    .line 1530
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->TAP_TO_SKIP_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1532
    return-void

    .line 1530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static y()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 470
    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 472
    :cond_0
    invoke-static {}, Lakr;->bJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-static {}, Lakr;->bJ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static y(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 973
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->RESPONSE_CHECKSUM_FRIENDS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 974
    return-void
.end method

.method public static y(Z)V
    .locals 2

    .prologue
    .line 1559
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SWIPED_DOWN_IN_VIEWER:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1560
    return-void
.end method

.method public static z()J
    .locals 4

    .prologue
    .line 495
    invoke-static {}, Lakr;->bI()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static z(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1498
    const-string v0, "~"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1503
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1508
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1498
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1505
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_2

    .line 1510
    :cond_1
    return-object v2
.end method

.method public static z(Z)V
    .locals 2

    .prologue
    .line 1585
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->VIBRATION_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1586
    return-void
.end method


# virtual methods
.method public final bv()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1476
    iget-object v0, p0, Lakr;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 1478
    invoke-static {}, Lakr;->bu()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lakr;->bu()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1492
    :goto_0
    return v0

    .line 1482
    :cond_1
    iget-object v3, v0, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    .line 1483
    iget-object v0, v0, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    .line 1484
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 1486
    goto :goto_0

    .line 1490
    :cond_4
    invoke-static {}, Lakr;->bu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1492
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method
