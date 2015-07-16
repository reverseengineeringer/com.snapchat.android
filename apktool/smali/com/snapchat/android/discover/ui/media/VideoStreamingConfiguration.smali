.class public final Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field public final b:Lakn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->MP4:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;-><init>(Lakn;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lakn;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lakn;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lakn;

    const-string v1, "STREAMING"

    const-string v2, "STREAMING_MODE"

    sget-object v3, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 54
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->HLS:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    goto :goto_0
.end method
