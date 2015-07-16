.class public final Lxo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lxo;


# instance fields
.field public final a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lxo;

    invoke-direct {v0}, Lxo;-><init>()V

    sput-object v0, Lxo;->b:Lxo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lxo;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lxo;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 18
    return-void
.end method

.method public static a()Lxo;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lxo;->b:Lxo;

    return-object v0
.end method
