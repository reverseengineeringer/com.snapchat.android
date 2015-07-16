.class final Laiw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lait$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laiw;

.field private final b:Lajr;

.field private final c:Z


# direct methods
.method constructor <init>(Laiw;Lajr;Z)V
    .locals 0
    .param p2    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 166
    iput-object p1, p0, Laiw$a;->a:Laiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Laiw$a;->b:Lajr;

    .line 168
    iput-boolean p3, p0, Laiw$a;->c:Z

    .line 169
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 173
    iget-object v0, p0, Laiw$a;->b:Lajr;

    iget-object v1, v0, Lajr;->mCompositeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lajr;->mCompositeBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v2, p0, Laiw$a;->b:Lajr;

    iget-object v1, p0, Laiw$a;->b:Lajr;

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v3

    iget-object v0, v3, Lcht;->b:Lchg;

    invoke-virtual {v0}, Lchg;->D()Lchn;

    move-result-object v0

    iget-wide v4, v3, Lcht;->a:J

    const/16 v6, 0x64

    invoke-virtual {v0, v4, v5, v6}, Lchn;->a(JI)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcht;->a(J)Lcht;

    move-result-object v0

    invoke-virtual {v1}, Lajr;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/GeofilterMarkup;

    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    invoke-virtual {v5, v3}, Laju;->a(Lcht;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    iget-object v5, v5, Laju;->end:Lcht;

    invoke-virtual {v5, v1}, Lcht;->c(Lcic;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    iget-object v1, v1, Laju;->end:Lcht;

    :cond_0
    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    iget-object v5, v5, Laju;->start:Lcht;

    invoke-virtual {v5, v3}, Lcht;->b(Lcic;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    iget-object v5, v5, Laju;->start:Lcht;

    invoke-virtual {v5, v1}, Lcht;->c(Lcic;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displaySchedule:Laju;

    iget-object v1, v0, Laju;->start:Lcht;

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 174
    :cond_1
    iget-object v3, v2, Lajr;->mCompositeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iput-object v1, v2, Lajr;->mCompositeBitmapExpiryTime:Lcht;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    iget-boolean v0, p0, Laiw$a;->c:Z

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Laiw$a;->a:Laiw;

    invoke-static {v0}, Laiw;->a(Laiw;)V

    .line 178
    :cond_2
    return-void

    .line 174
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
