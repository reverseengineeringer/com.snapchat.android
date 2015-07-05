.class public final Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# instance fields
.field private final b:Lwx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lwx;

    invoke-direct {v0}, Lwx;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>(Lwx;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lwx;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lwx;

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 27
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->TRANSCODING_NOT_SUPPORTED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 29
    :cond_0
    sput-object p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 30
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 41
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 3

    .prologue
    .line 135
    const-string v0, "TranscodingPreferencesWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storeTranscodingState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->q(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "STORE_TRANSCODING_STATE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "transcoding_status"

    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 139
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 88
    if-eqz p0, :cond_2

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->UNKNOWN:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->BLOCKED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_2

    .line 89
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    if-nez p0, :cond_1

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->TRANSCODING_NOT_SUPPORTED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_1

    .line 91
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->BLOCKED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_0
.end method

.method public static b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 68
    const-string v1, "TranscodingPreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShouldUseTranscoding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method

.method private static c()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lajx;->bg()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "TranscodingPreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadTranscodingState "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0}, Lajx;->r(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 7

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lwx;

    iget-object v0, v1, Lwx;->a:[Z

    const/4 v3, 0x1

    iget-object v4, v1, Lwx;->a:[Z

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lwx;->a:[Z

    aput-boolean p1, v0, v5

    const-string v0, ""

    iget-object v4, v1, Lwx;->a:[Z

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-boolean v3, v4, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "0"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lajx;->r(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lwx;

    invoke-virtual {v0}, Lwx;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const-string v0, "TranscodingPreferencesWrapper"

    const-string v1, "Transcoding has failed too many times disabling for phone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->DISABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 102
    :cond_2
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_3

    .line 103
    if-eqz p1, :cond_4

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 105
    :cond_3
    :goto_2
    return-void

    .line 103
    :cond_4
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->DISABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_2
.end method
