.class public final Lwy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lwy;


# instance fields
.field a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    sput-object v0, Lwy;->b:Lwy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lwy;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lwy;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 17
    return-void
.end method

.method public static a()Lwy;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lwy;->b:Lwy;

    return-object v0
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-static {}, Lajx;->bM()Z

    move-result v3

    .line 25
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v2

    sget-object v4, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 27
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 25
    goto :goto_0

    :cond_1
    move v0, v1

    .line 27
    goto :goto_1
.end method
