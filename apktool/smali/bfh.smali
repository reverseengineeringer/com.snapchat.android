.class public final Lbfh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/media/MediaMetadataRetriever;Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 23
    :catch_0
    move-exception v0

    new-instance v0, Lbew;

    invoke-direct {v0}, Lbew;-><init>()V

    throw v0
.end method
