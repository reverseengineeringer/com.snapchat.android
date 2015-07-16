.class public final Lxt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lxt;


# instance fields
.field a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lxt;

    invoke-direct {v0}, Lxt;-><init>()V

    sput-object v0, Lxt;->b:Lxt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lxt;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lxt;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 17
    return-void
.end method

.method public static a()Lxt;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lxt;->b:Lxt;

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lakr;->bH()Z

    move-result v0

    .line 25
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()Z

    move-result v1

    .line 26
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
