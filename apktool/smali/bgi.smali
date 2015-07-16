.class public final Lbgi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mExceptionReporter:Lban;

.field private final mInitializer:Lbgh;

.field private final mRetrieverFactory:Lbgg;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lbgh;

    invoke-direct {v0}, Lbgh;-><init>()V

    new-instance v1, Lbgg;

    invoke-direct {v1}, Lbgg;-><init>()V

    new-instance v2, Lban;

    invoke-direct {v2}, Lban;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lbgi;-><init>(Lbgh;Lbgg;Lban;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lbgh;Lbgg;Lban;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbgi;->mInitializer:Lbgh;

    .line 30
    iput-object p2, p0, Lbgi;->mRetrieverFactory:Lbgg;

    .line 31
    iput-object p3, p0, Lbgi;->mExceptionReporter:Lban;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 44
    :try_start_0
    invoke-static {v0, p1}, Lbgh;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Lbfv; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 48
    iget-object v0, p0, Lbgi;->mExceptionReporter:Lban;

    invoke-virtual {v0, v1}, Lban;->b(Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
