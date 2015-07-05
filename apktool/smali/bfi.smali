.class public final Lbfi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mExceptionReporter:Lazo;

.field private final mInitializer:Lbfh;

.field private final mRetrieverFactory:Lbfg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lbfh;

    invoke-direct {v0}, Lbfh;-><init>()V

    new-instance v1, Lbfg;

    invoke-direct {v1}, Lbfg;-><init>()V

    new-instance v2, Lazo;

    invoke-direct {v2}, Lazo;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lbfi;-><init>(Lbfh;Lbfg;Lazo;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lbfh;Lbfg;Lazo;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbfi;->mInitializer:Lbfh;

    .line 30
    iput-object p2, p0, Lbfi;->mRetrieverFactory:Lbfg;

    .line 31
    iput-object p3, p0, Lbfi;->mExceptionReporter:Lazo;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 44
    :try_start_0
    invoke-static {v0, p1}, Lbfh;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Lbew; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 48
    iget-object v0, p0, Lbfi;->mExceptionReporter:Lazo;

    invoke-virtual {v0, v1}, Lazo;->b(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
