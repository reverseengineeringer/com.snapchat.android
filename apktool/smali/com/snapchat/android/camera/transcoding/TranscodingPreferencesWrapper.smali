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
.field private final b:Lxs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lxs;

    invoke-direct {v0}, Lxs;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>(Lxs;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lxs;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lxs;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 29
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->TRANSCODING_NOT_SUPPORTED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 31
    :cond_0
    sput-object p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 32
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 43
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storeTranscodingState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->q(Ljava/lang/String;)V

    .line 141
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

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 143
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 92
    if-eqz p0, :cond_2

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->UNKNOWN:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->BLOCKED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_2

    .line 93
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    if-nez p0, :cond_1

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->TRANSCODING_NOT_SUPPORTED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_1

    .line 95
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->BLOCKED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_0
.end method

.method public static b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShouldUseTranscoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 112
    invoke-static {p0}, Lakr;->q(Z)V

    .line 113
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lakr;->bd()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-class v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v1, v0}, Lcj;->a(Ljava/lang/Class;Ljava/lang/String;)Lcn;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->UNKNOWN:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {v0, v1}, Lcn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    return-object v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 7

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 104
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lxs;

    iget-object v1, v2, Lxs;->a:[Z

    const/4 v3, 0x1

    iget-object v4, v2, Lxs;->a:[Z

    invoke-static {v1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v2, Lxs;->a:[Z

    aput-boolean p1, v1, v5

    const-string v1, ""

    iget-object v3, v2, Lxs;->a:[Z

    array-length v4, v3

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_1

    aget-boolean v2, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "0"

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lakr;->r(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lxs;

    invoke-virtual {v0}, Lxs;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->DISABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 106
    :cond_2
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_3

    .line 107
    if-eqz p1, :cond_4

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 109
    :cond_3
    :goto_2
    return-void

    .line 107
    :cond_4
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->DISABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_2
.end method
